// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

/// generate_json

import 'dart:convert';
import 'dart:io';

/// This program is used to generate dart classes from DICOM table in PS3.15 Appendix E.
/// It read the .csv file and converts them to .json data structures.  It then uses these
/// *.json generate a Dart compile time constant class.

// Utilities
// TODO move to generators.dart library
/*
String cleanKeyword(String s) {
  // Remove spaces and apsotrophies
  String result = "";
  String tmp = "";
  bool doPrint = false;
  for(int i = 0; i < s.length; i++) {
    tmp = s[i];
    if ((tmp == " ") || tmp == "'") {
      doPrint = true;
      continue;
    }
    result += tmp;
  }
  if (doPrint) {
    print(s);
    print(result);
  }
  return result;
}
*/
// TODO move to generators.dart library
String cleanKeyword(String s) {
  // Remove spaces and apsotrophies
  s = s.replaceAll(' ', "");
  s = s.replaceAll("'", "");
  // Replace '/' and '-' with '_'
  s = s.replaceAll('/', "_");
  s = s.replaceAll("-", "_");
  return s;
}

//Remove '/' and '*'
String removeSlashes(String s) {
  s = s.replaceAll("/", "");
  return s.replaceAll('*', "");
}

String convertY_N(String value) {
  print('$value');
  if (value == 'N') {
    return 'false';
  } else if (value == 'Y') {
    return 'true';
  } else if (value == "") {
    return 'false';
  } else {
    throw new Error();
  }
}

String convertDeIdActionCodes(String value) {
  if (value == "") {
    return 'null';
  } else if (value.length > 1) {
    var s = removeSlashes(value);
    return 'DeIdAction.$s';
  } else {
    return 'DeIdAction.$value';
  }
}

String arrayToString(List data) {
  String s = '[\n';
  for (int i = 0; i < data.length; i++) {
    s = s + "    " + data[i].toString() + "\n";
  }
  return s + '  ]';
}

void main() {
  File input = new File("C:/odw/sdk/deidentification/lib/src/gen/deid.csv");
  File output = new File('./deid.json');

  List<String> lines = input.readAsLinesSync(encoding: SYSTEM_ENCODING);
  // Get the Headers
  String className = lines[0].trim();
  int fieldCount = int.parse(lines[1].trim());
  List fieldTypes = lines[2].trim().split(',');
  List fieldNames = lines[3].trim().split(',');

  List values = new List(lines.length - 4);
  for (int i = 4; i < lines.length; i++) {
    List row = lines[i].trim().split(',');
    if (fieldCount != row.length) throw new Error();
    row[0] = cleanKeyword(row[0]);
    row[2] = convertY_N(row[2]);
    row[3] = convertY_N(row[3]);
    for (var i = 4; i < fieldCount; i++) {
      row[i] = convertDeIdActionCodes(row[i]);
    }
    //print(row);
    values[i - 4] = row;
  }

  Map table = new Map();
  table["className"] = className;
  // +1 on next line because we added a new field called 'dcmFmt'.
  table["fieldCount"] = fieldCount;
  table["fieldTypes"] = fieldTypes;
  table["fieldNames"] = fieldNames;
  table["values"] = values;

  print(table);

  String jsonString = '''
{"className": "$className",
 "fieldCount": ${fieldTypes.length},
 "fieldTypes": $fieldTypes,
 "fieldNames": $fieldNames,
 "values": ${arrayToString(values)}
}''';

  //print(jsonString);

  String json = JSON.encode(table);
  output.writeAsStringSync(json);
}
