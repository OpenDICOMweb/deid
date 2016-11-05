// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:convert';

import "dart_arrays/cpt_array.dart";

void main(List<String> args) {
  Map<String, dynamic> pGroups = {};

  for(List list in cptArray) {
    String groupNo = list[1];
    int gIndex = int.parse(groupNo);
    String element = list[3];
    int eIndex = int.parse(element);
    String creator = list[2];
    String desc = list[4];
    String action = list[5];

    Map<String, dynamic> group = pGroups[creator];
    if (group == null) {
      group = <String, dynamic>{"creator": creator, "groupNo": groupNo, "gIndex": gIndex};
      pGroups[creator] = group;
    }
    group[element] = {"element": element, "eIndex": eIndex, "action": action, "description": desc};
  }


  var out = JSON.encode(pGroups);
  print(out);

}

