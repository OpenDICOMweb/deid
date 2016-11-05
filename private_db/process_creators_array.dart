// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:convert';

import "dart_arrays/creators_array.dart";

void main(List<String> args) {
  Map<String, dynamic> creators = {};

  for (List list in cptCreatorsArray) {
  //  print('$list');
    int mIndex = list[0];
    String groupNo = list[1];
    String mod = list[2];
    String creator = list[3];
    String desc = list[4];

    Map<String, dynamic> entry = creators[creator];
    if (entry == null) {
      entry =
      <String, dynamic>{
        "creator": "$creator",
        "mIndex": mIndex,
        "groups": ["$groupNo"],
        "modality": "$mod",
        "description": "$desc"
      };
      creators[creator] = entry;
    } else {
      print('entry: $entry');
      var g = entry["groups"];
      print('groupNo: $g');
      if (!g.contains(groupNo)) g.add("$groupNo");
    }
  }
  var out = JSON.encode(creators);
  print(out);
}