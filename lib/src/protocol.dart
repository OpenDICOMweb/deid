// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

//TODO: algorithm
// 1. remove Groups
// 2. remove tags.
class Protocol {
    List<int> keepTags;
    List<int> removeTags;
    List<int> keepGroups;
    List<int> removeGroups;

    Protocol();

    Tag checkTag(int tag) {
      if (retain(tag)) {
        log.warning(tag, 'Attempt to change tag ${tag.dcm} on Keep List');
        return null;
      }
      Tag deDef = Tag.lookup(tag);
      if (deDef == null) {
        log.warning(tag, "Undefined tag ${tag.dcm}");
        return null;
      }
      return deDef;
    }

    Element checkChangeRequest(int tag, List values) {
      Tag e0 = checkTag(tag);
      if (e0 == null) return null;
      Element e1 = lookup(tag);
      print('check: $e1, values: $values');
      if (e1 == null) {
        log.warning(tag, ": Tag not present");
        return null;
      }
      if (e1.vr != e0.vr) {
        warning(e1, 'Element $e1 had invalid VR ${e1.vr} for $e0');
        return null;
      }
      if ((values != null) || (values.length != 0) && (e0.vm.isValidVM(values) != true)) {
        warning(e1, 'Element $e1 had invalid number of values'
            '(${values.length}) ${e0.vm}');
        return null;
      }
      return e1;
    }

    /// Returns [true] if keep and remove
    bool checkKeepAndRemove() {

    }

    /// Adds or replaces [Element] [e] in Dataset. Returns [true] if an
    /// [Element] with [e.obj] was present in the [Dataset]; false otherwise.
    bool add(mElement e) {
      if (addIfAbsent(e)) return false;
      var e0 = map[e.tag];
      map[e.tag] = e;
      mods.replace(e0, e);
      return true;
    }

    /// Returns [true] if [e] was not present in the [Dataset], and
    /// was added to the [Dataset].
    bool addIfAbsent(Element e) {
      var e0 = map[e.tag];
      if (e0 == null) {
        map[e.tag] = e;
        mods.create(e);
        return true;
      }
      return false;
    }

    /// Returns [true] if the [Element] with [tag] was present in the [Dataset],
    /// and was updated with the [newValues].
    bool update(int tag, List newValues) {
      var e = map[tag];
      if (e != null) {
        mods.modify(e, newValues);
        map[tag] = e.update(newValues);
        return true;
      }
      return false;
    }

    bool replaceValue(int tag, List values) {
      var e = map[tag];
      if (e != null) {
        e.replace(values);
        return true;
      }
      return false;
    }

    bool delete(int tag) {
      var e = map[tag];
      if (e != null) {
        map.remove(tag);
        mods.delete(e.tag);
        return true;
      }
      return false;
    }


    //TODO: doc
    bool addIfNotPresent(int tag, Function creator) {
      Element e = creator();
      map[tag] = e;
      mods.create(e);
      return true;
    }

    ///TODO: doc
    bool replaceWithDummy(int tag, List values) {
      mElement e0 = checkChangeRequest(tag, values);
      if ((values.length == 0) || (values == null)) {
        warning(e0, 'Tag $tag requires a Dummy (D) value, but no values supplied');
        return false;
      }
      print('tag: ${tag.dcm}, e: $e0');
      var e1 = e0.replace(values);
      mods.replace(e0, e1);
      return true;
    }

    bool zeroOrDummy(int tag, [List values = const []]) {
      var e0 = checkChangeRequest(tag, values);
      print('zeroOrDummy: ${tag.dcm}, e: $e0');
      var e1 = e0.replace(values);
      mods.replace(e0, e1);
      return true;
      return true;
    }

    /// Removes the [Element] with [Tag] from the [Dataset] and returns [true] if the
    /// [Element] was preset; otherwise,  returns [false].
    bool remove(int tag) {
      Tag eDef = checkTag(tag);
      if (eDef == null) return false;
      Element e = lookup(tag);
      if (e == null) {
        log.warning(tag, ": Tag not present");
        return false;
      }
      remove(e.tag);
      return true;
    }

    bool noValues(tag) {
      checkTag(tag);
      mElement e = checkChangeRequest(tag, null);
      return e.noValues();
    }

    ///TODO: doc
    bool keep(int tag) {
      Element a = lookup(tag);
      if (a is SQ) {
        throw "Sequence Tag ${tag.dcm} are not valid for Dataset.keep";
      } else if (!map.containsKey(tag)) {
        keepTags.add(tag);
        return true;
      }
      return false;
    }

    ///TODO: doc
    /// If no [Element] with [tag] is present, does nothing and returns [false}.
    /// TODO: Study, Series and Instance UIDs have to be replaced at the appropriate level
    bool modifyUid(tag, [List values]) {
      mElement e0 = checkChangeRequest(tag, values);
      if (e0 == null) return false;
      if (e0 is! UI) {
        log.warning(e0, "Tag ${tag.dcm} is not a UID Tag.");
        return false;
      }
      //TODO: make sure Values is UidString
      var e1 = e0.replace(values);
      mods.modify(e0, values);
      print('ds.replaceUid: old: $e0, new: $e1');
      if (values == null) values = [];
      return e0.replace(values);
    }

    /// Generates new Study, Series, and SOP Instance [Uid]s using [Uuid]s.
    /*TODO: flush
  void generateNewUids(List<int> tags) {
    for (int tag in tags) {
      Element a = map[tag];
      if (a is! UI) throw "error";
      Element a1 = a.update(Uid.randomList(a.values.length));
      modified.add(a);
      map[tag] = a1;
    }
  }
  */

    /// Removes all Private Groups.
    List<Element> removePrivateTags({bool recursive: true, bool returnList: false}) {
      List<Element> returnedList = [];
      for (int tag in map.keys) {
        if (Tag.isPrivate(tag)) {
          mElement e = lookup(tag);
          if (returnList) {
            returnedList.add(lookup(tag));
          }
          remove(e.tag);
        }
      }
      return (returnList) ? returnedList : null;
    }

    void keepSafePrivate([List<String> creators]) {
      //TODO: use the .../deid/private_characteristics.dart
    }

    /// Removes all Private Groups.
    void removePrivateGroup(String pgCreatorToken, {bool recursive: true}) {
      for (int tag in map.keys) {
        if ((Tag.group(tag).isOdd) && (Tag.isPrivateCreator(tag))) {
          if (lookup(tag).value == pgCreatorToken) {
            removePrivateData(tag);
          }
        }
      }
    }

    //TODO: fix should return true if Private Group was present; false otherwise.
    bool removePrivateData(int pgCreator) {
      PrivateGroup pg = map[pgCreator];
      if (pg == null) return false;
      mods.delete(pg);
      map.remove(pg);
      return true;
    }

    void removePrivateExcept(int pgCreator, List<String> keepers) {
      PrivateGroup pg = map[pgCreator];
      //TODO:

    }

    /// Removes all Private Groups.
    void removePrivateGroups(int group, {bool recursive: true}) {
      for (int tag in map.keys) {
        Element e = map[tag];
        if (Tag.isPrivate(tag)) {
          mods.delete(e);
          map.remove(tag);
        } else if ((e is mSQ) && (recursive == true)) {
          for (mItem item in e.items)
            item.removePrivateGroups(group, recursive: recursive);
        }
      }
    }

    //TODO: are these correct
    static const removableGroups = const [0x0018, 0x0020, 0x0028, 0x0050, 0x0060];

    static isRemovableGroup(int group) => removableGroups.contains(group);

    //TODO: this could be private if no other group needs to be removed.
    /// Returns [true] if the [group] existed and was removed.
    bool removeGroup(int group, {bool recursive: true}) {
      if (!isRemovableGroup(group)) {
        tagWarning(group, "Group ${intToHex(group, 4)} is NOT removable");
        return false;
      }
      int min = group << 16;
      int max = min + 0xFFFF;
      List<Element> removed = [];
      for (int tag in map.keys) {
        Element e = map[tag];
        if ((min <= tag) && (tag <= max)) {
          removed.add(e);
          map.remove(tag);
        } else if ((e is SQ) && (recursive == true)) {
          for (mItem item in e.items)
            item.removePrivateGroups(group, recursive: recursive);
        }
      }
      if (removed.length == 0) {
        tagWarning(group, "Group ${intToHex(group, 4)} was NOT present");
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