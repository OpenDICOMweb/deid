// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


import 'package:core/core.dart';

import 'p_data_tag.dart';

class PCreatorTag {
  final String name;
  final String manufacturerId;
  final Modality modality;
  final String description;
  final PCreatorTag creator;
  final int group;
  final Map<int, PDataTag> elements;

  const PCreatorTag(this.name, this.manufacturerId, this.modality,
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
    for(PDataTag e in elements.values)
      out += '"k${e.name}": ${e.json},\n';
    return out += "}\n";
  }

  @override
  String toString() => "PCreator($name, $manufacturerId, $modality,\n  $creator";
}

class PDTag {
  final int code;
  final VR  vr;
  final VM  vm;
  final Action action;
  final String description;
  final String creator;

  const PDTag(this.code, this.vr, this.vm, this.action, this.description, this.creator);


  int get group => Tag.group(code);
  int get element => Elt.fromTag(code);
  String get name => 'k${Tag.toHex(code)}';

  String get json => '''
  {
    "tag": ${dcm(code)},
    "vr": $vr,
    "vm": $vm,
    "action": $action,
    "description": "$description",
    "creator": "$creator"
  }''';

  @override
  String toString() => 'PElement($name, $vr, $vm, $action, $description, $creator)';
}

class Action {
  final String name;
  final String code;

  const Action(this.name, this.code);

  String get id => 'k$name';

  @override
  String toString() => 'Action.$id';

  static const Action kKeep = const Action("Keep", "K");
  //TODO: what does Action.kKeepXXXXXX
  static const Action kKeepXX = const Action("KeepXXXXXX", "KB");
  static const Action kRemove = const Action("Remove", "X");
  static const Action kReplace = const Action("Replace", "R");

  static const Map<String, Action> codes = const {
    "K": kKeep,
    "KB": kKeepXX,
    "X": kRemove,
    "R": kReplace
  };

  static Action lookup(String code) => codes[code];

}

