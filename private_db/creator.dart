// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:common/common.dart';
import 'package:dictionary/dictionary.dart';


class Manufacturer {
  static Map<String, Manufacturer> map = {};
  final String id;
  final Map<int, PCreator> groups;

  Manufacturer(this.id, PCreator creator)
      : groups = {creator.group:creator} {
    map[id] = this;
  }

  Iterable<PCreator> get creators => groups.values;

  String get json => '''
  "$id": {
    "groups": ${groupsToJson}
    },
 ''';

  String get groupsJson {
    var out = "{\n";
    for(PCreator creator in groups.values)
        out += creator.json;
    return out += '}\n';
  }

  String get creatorsToJson {
    var out = "";
    for(PCreator creator in creators)
        out += creator.json;
    return out;
  }

  String get groupsToJson {
    var out = "{\n";
    for(PCreator creator in creators)
      out += '${Uint16.hex(creator.group)}: ${creator.json}\n';
    return out += '}\n';
  }


  void add(PCreator creator) {
    groups[creator.group] = creator;
  }

  String toString() => "$runtimeType $id: $groups";

  static lookup(String id) => map[id];

  static get values => map.values;
}

class PCreator {
  final String name;
  final String manufacturerId;
  final Modality modality;
  final String description;
  final PElement creator;
  final int group;
  final Map<int, PElement> elements;

  const PCreator(this.name, this.manufacturerId, this.modality,
      this.description, this.creator, this.group, this.elements);

  /*
  List<int> get groups => _getGroups(Listelements);
  List<int> _getGroups(elements) {
    List<int> list = [];
    data.forEach((PrivateData e) {
      list.add(e.index);
    });
    return list;
  }
  */

  String get json => '''
{
  "name": "$name",
  "manufacturerId": "$manufacturerId",
  "modality": $modality,
  "creator": ${creator.json},
  "elements": $elementsJson
}
''';

  String get elementsJson {
    var out = "{\n";
    for(PElement e in elements.values)
      out += '"k${e.element}": ${e.json},\n';
    return out += "}\n";
  }

  String toString() => "PCreator($name, $manufacturerId, $modality,\n  $creator";
}

class PElement {
  final int tag;
  final VR vr;
  final VM vm;
  final Action action;
  final String description;
  final String creator;

  const PElement(this.tag, this.vr, this.vm, this.action, this.description, this.creator);

  int get group => tagGroup(tag);
  int get element => tagElement(tag);
  String get name => 'k${tagElementHex(element)}';

  String get json => '''
  {
    "tag": ${tagToHex(tag)},
    "vr": $vr,
    "vm": $vm,
    "action": $action,
    "description": "$description",
    "creator": "$creator"
  }''';

  String toString() => 'PElement($name, $vr, $vm, $action, $description, $creator)';
}

class Action {
  final String name;
  final String code;

  const Action(this.name, this.code);

  String get id => 'k$name';

  String toString() => 'Action.$id';

  static const kKeep = const Action("Keep", "K");
  //TODO: what does Action.kKeepXXXXXX
  static const kKeepXX = const Action("KeepXXXXXX", "KB");
  static const kRemove = const Action("Remove", "X");
  static const kReplace = const Action("Replace", "R");

  static const Map<String, Action> codes = const {
    "K": kKeep,
    "KB": kKeepXX,
    "X": kRemove,
    "R": kReplace
  };

  static Action lookup(String code) => codes[code];

}

