// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


import 'package:core/core.dart';

import 'changes.dart';

//TODO: algorithm
// 1. remove Groups
// 2. remove tags.
class Protocol {
  static Logger log = new Logger('Protocol', watermark: Severity.debug);
  List<int> keepTags;
  List<int> removeTags;
  List<int> keepGroups;
  List<int> removeGroups;
  Changes changes = new Changes();

  TagRootDataset rds;

  Protocol(this.rds);

  Tag checkCode(int code) {
    if (retainCode(code)) {
      log.warn('Attempt to change tag ${dcm(code)} on Keep List');
      return null;
    }
    Tag def = Tag.lookup(code);
    if (def == null) {
      log.warn("Undefined tag ${dcm(code)}");
      return null;
    }
    return def;
  }

  Element checkChangeRequest(int code, List values) {
    Tag e0 = checkCode(code);
    if (e0 == null) return null;
    Element e1 = rds.lookup(code);
    print('check: $e1, values: $values');
    if (e1 == null) {
      log.warn('Tag($code) not present');
      return null;
    }
    if (e1.vr != e0.vr) {
      log.warn('Element $e1 had invalid VR ${e1.vr} for $e0');
      return null;
    }
    if ((values != null) ||
        (values.length != 0) && (e0.hasValidValues(values) != true)) {
      log.warn('Element $e1 had invalid number of values'
          '(${values.length}) ${e0.vm}');
      return null;
    }
    return e1;
  }

  /// Returns [true] if keep and remove
  bool checkKeepAndRemove() {
    //TODO
  }

  /// Adds or replaces [Element] [e] in Dataset. Returns [true] if an
  /// [Element] with [e].code was present in the [Dataset]; false otherwise.
  bool add(Element e) {
    if (addIfAbsent(e)) return false;
    rds.add(e);
  //  changes.add(e0);
    return true;
  }

  /// Returns [true] if [e] was not present in the [Dataset], and
  /// was added to the [Dataset].
  bool addIfAbsent(Element e) {
    var e0 = rds.map[e.tag];
    if (e0 == null) {
      rds.map[e.tag] = e;
      changes.create(e);
      return true;
    }
    return false;
  }

  /// Returns [true] if the [Element] with [tag] was present in the [Dataset],
  /// and was updated with the [newValues].
  bool update(int tag, List newValues) {
    var e = rds.map[tag];
    if (e != null) {
 //     changes.replace(e, newValues);
      rds.map[tag] = e.update(newValues);
      return true;
    }
    return false;
  }

  bool replaceValue(Tag tag, List values) {
    var e = rds.update(tag, values);
    if (e != null) {
      rds.add(e);
      return true;
    }
    return false;
  }

  bool delete(int tag) {
    var e = rds.map[tag];
    if (e != null) {
      rds.map.remove(tag);
  //    changes.remove(e.tag);
      return true;
    }
    return false;
  }

  //TODO: doc
  bool addIfNotPresent(int tag, Function creator) {
    Element e = creator();
    rds.map[tag] = e;
    changes.create(e);
    return true;
  }

  ///TODO: doc
  bool replaceWithDummy(Tag tag, List values) {
    Element e0 = checkChangeRequest(tag.code, values);
    if ((values.length == 0) || (values == null)) {
      log.warn('Tag $tag requires a Dummy (D) value, but no values supplied');
      return false;
    }
    print('tag: $tag, e: $e0');
    rds.replace(tag, values);
//    changes.replace(e0, e1);
    return true;
  }

  bool zeroOrDummy(int code, [List values = const []]) {
    var e0 = checkChangeRequest(code, values);
    print('zeroOrDummy: ${dcm(code)}, e: $e0');
    rds.replaceCode(code, values);
    return true;
  }

  /// Removes the [Element] with [Tag] from the [Dataset] and returns [true] if the
  /// [Element] was preset; otherwise,  returns [false].
  bool remove(int code) {
    Tag eDef = checkCode(code);
    if (eDef == null) return false;
    Element e = rds.lookup(code);
    if (e == null) {
      log.warn('Tag($code) not present');
      return false;
    }
    remove(e.tag.code);
    return true;
  }

  Element noValues(int code) {
    checkCode(code);
    Element e = checkChangeRequest(code, null);
    return e.noValues;
  }

  bool retailTag(Tag tag) => retainCode(tag.code);

  ///TODO: doc
  bool retainCode(int code) {
    Tag a = Tag.lookup(code);
    if (a is SQ) {
      //Urgent: why not?
      throw "Sequence Code ${dcm(code)} is not valid for Dataset.retain";
    } else if (!rds.map.containsKey(code)) {
      keepTags.add(code);
      return true;
    }
    return false;
  }

  ///TODO: doc
  /// TODO: Study, Series and Instance UIDs have to be replaced at the appropriate level
  /// If no [Element] with [e] is present, does nothing and returns [null].
  Element modifyUid(Element e, [List values]) {
    Element e0 = checkChangeRequest(e.code, values);
    if (e0 == null) return null;
    if (e0 is! UI) {
      log.warn("Tag ${e.dcm} is not a UID Tag.");
      return null;
    }
    //TODO: make sure Values is UidString
    var e1 = e0.replace(values);
    //   changes.modify(e0, values);
    print('ds.replaceUid: old: $e0, new: $e1');
    var v = (values == null) ? [] : values;
    return e0.update(v);
  }

  /// Generates new Study, Series, and SOP Instance [Uid]s using [Uuid]s.
  /*TODO: flush
  void generateNewUids(List<int> tags) {
    for (int tag in tags) {
      Tag a = rds.map[tag];
      if (a is! UI) throw "error";
      Tag a1 = a.update(Uid.randomList(a.values.length));
      //   changes.add(a);
      rds.map[tag] = a1;
    }
  }
  */

  /// Removes all Private Groups.
  List<Element> removePrivateTags(
      {bool recursive: true, bool returnList: false}) {
    List<Element> returnedList = [];
    for (Element e in rds.elements) {
      if (Tag.isPrivateCode(e.code)) {
        if (returnList) {
          returnedList.add(e);
        }
        remove(e.code);
      }
    }
    return (returnList) ? returnedList : null;
  }

  void keepSafePrivate([List<String> creators]) {
    //TODO: use the .../deid/private_characteristics.dart
  }

  /// Removes all Private Groups.
  void removePrivateGroup(String pgCreatorToken, {bool recursive: true}) {
    for (int code in rds.map.keys) {
      if (Tag.isPrivateCreatorCode(code)) {
        if (rds.lookup(code).value == pgCreatorToken) {
          removePrivateData(code);
        }
      }
    }
  }

  //TODO: fix should return true if Private Group was present; false otherwise.
  bool removePrivateData(int pgCreator) {
    PrivateGroup pg = rds.privateGroups[pgCreator];
    if (pg == null) return false;
    //   changes.delete(pg);
    rds.map.remove(pg);
    return true;
  }

  void removePrivateExcept(int pgCreator, List<String> keepers) {
    PrivateGroup pg = rds.privateGroups[pgCreator];
    //TODO:
  }

  /// Removes all Private Groups.
  void removePrivateGroups(int group, {bool recursive: true}) {
    for (int code in rds.map.keys) {
      Element e = rds.map[code];
      if (Tag.isPrivateCode(code)) {
        //   changes.remove(e);
        rds.remove(code);
      } else if ((e is SQ) && (recursive == true)) {
        for (TagItem item in e.items)
          item.removePrivateGroup(group, recursive: recursive);
      }
    }
  }

  //TODO: are these correct
  static const List<int> removableGroups = const [
    0x0018, 0x0020, 0x0028, 0x0050, 0x0060 // No reformat.
  ];

  static bool isRemovableGroup(int group) => removableGroups.contains(group);

  //TODO: this could be private if no other group needs to be removed.
  /// Returns [true] if the [group] existed and was removed.
  bool removeGroup(int group, {bool recursive: true}) {
    if (!isRemovableGroup(group)) {
      log.warn("Group ${hex16(group)} is NOT removable");
      return false;
    }
    int min = group << 16;
    int max = min + 0xFFFF;
    List<Element> removed = [];
    for (int tag in rds.keys) {
      Element e = rds[tag];
      if ((min <= tag) && (tag <= max)) {
        removed.add(e);
        rds.delete(tag);
      } else if ((e is SQ) && (recursive == true)) {
        for (TagItem item in e.items)
          item.deletePrivateGroup(group, recursive: recursive);
      }
    }
    if (removed.length == 0) {
      log.warn("Group ${hex16(group)} was NOT present");
      return false;
    }
    return true;
  }

  /* TODO: would we ever remove Groups 18, 20, 28;
  bool removeGroup18() => removeGroup(0x0018);

  bool removeGroup20() => removeGroup(0x0020);

  bool removeGroup28() => removeGroup(0x0028);
  */

  bool removeGroup50() => removeGroup(0x0050);

  bool removeGroup60() => removeGroup(0x0060);

  /// Removes all Curves.
  bool removeCurves() => removeGroup50();

  /// Removes all Overlays.
  bool removeOverlays() => removeGroup60();
}
