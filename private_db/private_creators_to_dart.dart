// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

//import 'dart:convert';


import 'package:core/core.dart';

import 'dart_arrays/private_tag_array.dart';
import 'p_creator_tag.dart';
import 'p_data_tag.dart';

void main() {
  _Manufacturer manufacturer;
  PCreatorTag creator;
  for (int i = 0; i < privateTags.length; i++) {
    List row = privateTags[i];
    //  print(row);
    if (row[0] == "@") {
      creator = getCreator(row, i);
      //print('New Creator: $creator');
      String mId = creator.manufacturerId;
      if (_Manufacturer.lookup(mId) == null) {
        manufacturer = new _Manufacturer(mId, creator) ;
      } else {
        _Manufacturer manufacturer = _Manufacturer.lookup(mId);
        manufacturer.add(creator);
      }
    //  print(creator);
      i++;
      continue;
    } else {
      // print(privateTags[i]);
      //  print('row $i: elements: $elements');
      PDataTag e = getElement(i);
    //  print('element: ${tagElementHex(e.element)}');
      creator.elements[e.index]= e;
    }
  }

  var out = "{\n";
  for(_Manufacturer manu in _Manufacturer.values) {
    out += manu.json;
  }
  out += "}\n";
  print(out);
}

PCreatorTag getCreator(List mRow, int index) {
  PDataTag creator = getElement(index + 1);
 // if (creator.elt != 0x0010)
  //  throw "Bad Creator Element Value in $creator row ${index + 1}";
  String manufacturerId= mRow[1].trim();
  String mod = mRow[2].trim();
  Modality m = Modality.stringToModality[mod];
  return new PCreatorTag(creator.name, manufacturerId, m, creator.description,
      creator, creator.group, {});
}

PDataTag getElement(int index) {
  var row = privateTags[index];
  if (row[0] is! int)
    throw "Bad Element row at ${index + 1}";
  int tag = row[0];
  VR vr = VR.lookupId(row[1].trim());
  String s = row[2].trim();

  //print('VM: $s');
  VM vm = (s == "") ? VM.kUnknown : VM.lookup('k$s');
  //print('vm: $vm');
  Action action = Action.lookup(row[3]);
  String desc = row[4];
  String creator = row[5];
  return new PDataTag(tag, vr, vm, action, desc, creator);
}
/*
Map getElement(int index) {
  Map elements = {};
  var row = privateTags[index];
  if (row[0] is! int)
    throw "Bad Element row at ${index + 1}";
  int tag = row[0];
  elements["tag"] = tag;
  elements["group"] = tagGroup(tag);
  elements["element"] = tagElement(tag);
  elements["vr"] = row[1];
  elements["vm"] = row[2];
  elements["action"] = row[3];
  elements["description"] = row[4];
  elements["creator"] = row[5];
//  print(elements);
  return elements;
}
*/
/*
String toDartString(Map creators) {
  var out = "{\n";
  creators.forEach((String name, value) {
    out += "  $name:";
    out += toCreator(value, out);
  });
  return out;
}
*/
String creatorsToString(Map<String, dynamic> creators) {
  var out = "{\n";
  for(Map creator in creators.values)
    out += '"${creator["name"]}": ${creatorToString(creator)}\n';
  return out += "}\n";
}

String creatorToString(Map<String, dynamic> creator) {
  print('creator: $creator');
  return '''
{
  "manufacturerId": "${creator["manufacturerId"]}",
  "modality": "${creator["modality"]}",
  "name": "${creator["name"]}",
  "creator": ${creatorToString(creator["creator"])},
  "elements": ${elementsToString(creator["elements"])}
}
''';
}

String elementsToString(Map elements) {
  var out = "{\n";
  for(Map element in elements.values)
    out += '"${element["tag"]}": ${elementToString(element)},\n';
  return out += "},\n";
}

String elementToString(Map<String, dynamic> element) {
 // print('element: $element');
  if ((element == null) || (element.length == 0)) return "";
  return
  '''
{
  "code": ${Tag.toHex(element["tag"])},
  "group":  ${Tag.toHex(element["tag"])},
  "element": ${Tag.toHex(element["tag"])},
  "vr": "${element["vr"]}",
  "vm": "${element["vm"]}",
  "action": "${element["action"]}",
  "description": "${element["description"]}",
  "creator": "${element["creator"]}"
}
''';
}




class _Manufacturer {
  static Map<String, _Manufacturer> map = {};
  final String id;
  final Map<int, PCreatorTag> groups;

  _Manufacturer(this.id, PCreatorTag creator)
      : groups = {creator.group:creator} {
    map[id] = this;
  }

  Iterable<PCreatorTag> get creators => groups.values;

  String get json => '''
  "$id": {
    "groups": ${groupsToJson}
    },
 ''';

  String get groupsJson {
    var out = "{\n";
    for(PCreatorTag creator in groups.values)
      out += creator.json;
    return out += '}\n';
  }

  String get creatorsToJson {
    var out = "";
    for(PCreatorTag creator in creators)
      out += creator.json;
    return out;
  }

  String get groupsToJson {
    var out = "{\n";
    for(PCreatorTag creator in creators)
      out += '${Uint16.hex(creator.group)}: ${creator.json}\n';
    return out += '}\n';
  }


  void add(PCreatorTag creator) {
    groups[creator.group] = creator;
  }

  @override
  String toString() => "$runtimeType $id: $groups";

  static _Manufacturer lookup(String id) => map[id];

  static List<_Manufacturer> get values => map.values;
}
