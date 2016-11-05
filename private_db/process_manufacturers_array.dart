// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:convert';

import "dart_arrays/manufacturers_array.dart";

void main(List<String> args) {
    Map<String, dynamic> map = {};


    for (List list in cptManufacturersArray) {
      //  print('$list');
      int mIndex = list[0];
      String id = list[1];
      String name = list[2];
      map[id] = {"id": "$id", "mIndex": mIndex, "name": "$name",};
    }
    var list = new List(map.length + 1);
    for (var e in map.values) {
      list[e["mIndex"]] = e;
    }

    var out = JSON.encode(map);
    out += JSON.encode(list);
    print(out);
}