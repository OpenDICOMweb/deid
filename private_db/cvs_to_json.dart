// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:convert';
import 'dart:io';

void printLine(int i, var s) {
  var no = i.toString().padLeft(4);
  print('$no: $s');
}

void main(List<String> args) {
  var csvFile = "C:/odw/sdk/deid/private_db/new1_db.csv";
  var jsonFile = "C:/odw/sdk/deid/private_db/db_entry.json";

  var inFile = new File(csvFile);
  var lines = inFile.readAsLinesSync(encoding: SYSTEM_ENCODING);

  var creatorJson = generateCreatorMap(lines);
 // var dataJson = generateDataMaps(lines);

  var outFile = new File(jsonFile);
  var json = JSON.encode(creatorJson);
  outFile.writeAsStringSync(json);
  print(creatorJson);
  //print(dataJson);
}

List<String> splitAndTrim(String s, [String delimiter = "|"]) {
  //print('String: $s');
  List<String> list = s.split(delimiter);
  List<String> out = [];
  for (String s in list)
    out.add(s.trim());
  //print('trim: $out');
  return out;
}

List<Map<String, String>> generateDataMaps(List<String> lines) {
  // Get and Clean Names
  List<String> names = splitAndTrim(lines[0]);
  print('data names: $names');

  List<Map<String, String>> maps = [];
  for (int i = 1; i < lines.length; i++) {
    List<String> values = splitAndTrim(lines[i]);
  //  print('data values(${values.length}: $values');
    Map<String, String> map = {};
    for (int j = 0; j < values.length; j++) {
  //    print('names[$j]: ${names[j]}, values[$j]: ${values[j]}');
      map[names[j]] = values[j];
  //    print('map: $map');
    }
    print('Final map: $map');
    maps.add(map);
  }
  return maps;
}


Map generateCreatorMap(List<String> rows) {
 //if (rows.length > 2) throw "Invalid Creator List";

  // Clean identifiers
  List<String> names = splitAndTrim(rows[0]);
  print('creator names: $names');
  List<String> values = splitAndTrim(rows[1]);
  print('creator values: $values');

  // Create Private Data Element Objects
  if (names.length != values.length)
    throw "Invalid - there must be the same number of names(${names.length} "
        "and values(${values.length}";
  Map<String, dynamic> map = {};
  for (int i = 0; i < names.length; i++) map[names[i]] = values[i];
  print('creator: $map');
  List<Map> dataMaps = generateDataMaps(rows.sublist(2));
  print('map0: $dataMaps');
  map["elements"] = dataMaps;
  print('creator: $map');
  return map;
}



