// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

/// generate_json

import 'dart:convert';

/// This program is used to generate dart classes from DICOM table in
/// PS3.15 Appendix E. It read the .csv file and converts them to .json
/// data structures.  It then uses these *.json generate a Dart compile
/// time constant class.

import 'src/gen_utils.dart';
import 'src/gen_deid_utils.dart';

void main() {
  String path = "deid_class";
  List<String> lines = readFileAsLines( "csv",path);

  List<String> badRows = [];
  List<String> header = lines.sublist(0, 3);
  List<String> rows = lines.sublist(3);
  // Get the Headers
  String className = header[0].trim();
  List fieldTypes = header[1].trim().split(',');
  List fieldNames = header[2].trim().split(',');
  int fieldCount = fieldTypes.length;
  if (fieldCount != fieldNames.length)
    throw "Number of Types does not match number of fields";

  List<List<String>> memberData = [];
  for (int i = 0; i < rows.length; i++) {
    List row = rows[i].trim().split(',');
    if (fieldCount != row.length)
      throw "Field Count error: ($fieldCount) $row ";
    var keyword = cleanKeyword(row[0]);
    if (keyword == null) {
      print('*** Bad Keyword: ${row[0]}');
      badRows.add(rows[i]);
      continue;
    } else {
      row[0] = keyword;
    }
    int tag = validTag(row[1]);
    if (tag == null) {
      print('*** Bad Tag: ${row[1]}');
      badRows.add(rows[i]);
      continue;
    } else {
      row[1] = toHex(tag);
    }
    row[2] = convertY_N(row[2]);
    row[3] = convertY_N(row[3]);
    for (var i = 4; i < fieldCount; i++) {
      row[i] = convertActionCodes(row[i]);
    }
   // print('length: ${row.length}');

    memberData.add(row);
  }

  memberData.sort(compareMembers);

  Map table = new Map();
 // print('rows2: $rows');
  table["className"] = className;
  table["fieldTypes"] = fieldTypes;
  table["fieldNames"] = fieldNames;
  table["memberData"] = memberData;
  table["badRows"] = badRows;

  String json = JSON.encode(table);
  writeFile("json", path, json);

}

int compareMembers(List<String> a, List<String> b) {
  int x = int.parse(a[1]);
  int y = int.parse(b[1]);
  return x.compareTo(y);
}
