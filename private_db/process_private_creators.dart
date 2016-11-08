// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:convert';
import 'package:core/core.dart';

import 'dart_arrays/private_tag_array.dart';

void main() {
  Map creators = {};
  Map creator;
 // int group;
 // Map elements;
  for (int i = 0; i < 415; i++) {
    List row = privateTags[i];
  //  print(row);
    if (row[0] == "@") {
      creator = getCreator(row, i);
      creators[creator["name"]] = creator;
      //group = creator["group"];
    //  print('creator: $creator');
      i++;
      continue;
    } else {
      var elements = creator["elements"];
    //  print('row $i: elements: $elements');
      var element = getElement(i);
    //  print('element');
      int tag = element["tag"];
      elements[tag]= element;
    }
  }

  print('creators: $creators');

}

Map getCreator(List mRow, int index) {
  var creator = {};
  creator["manufacturerId"] = mRow[1];
  creator["modality"] = mRow[2];
  Map element = getElement(index + 1);
  if (element["element"] != 0x0010)
    throw "Bad Creator Element Value in $element row ${index + 1}";
  creator["name"] = element["creator"];
  creator["creator"] = element;
  creator["elements"] = {};
  return creator;
}

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
  elements["descriptoin"] = row[4];
  elements["creator"] = row[5];
//  print(elements);
  return elements;
}

String toDartString(Map creators) {
  var out = "{\n";
  creators.forEach((String name, value) {
    out += "  $name:";
    out += toCreator(value, out);
  });
  return out;
}

String toCreator(Map values, String out) {
  values.forEach((String key, value) {
    out += '"$key": '
  });
  out += JSON.encode(values);
}


