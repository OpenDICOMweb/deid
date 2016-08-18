// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:deid/protocol.dart';
import 'package:deid/text_protocol_parser.dart';

const String id = r'(\w+)';
const String atId = r'(@\w+)';

const String integer = r'([-+]?\d+)';
const String pOther = r'([\w\$]+)';
const String pFunction = r'(@\w+\(\))';
const String pValue = '($pFunction|$atId|$id|$integer|$pOther)';
const String paramDef = '^\\s*$id\\s*=\\s*$pValue\\s*';





const String setOther = r'([\w\*\&\$]+)';

const String atFunction = '(@\\w+\\($setArgs\\))';

const String action = r"remove|keep|empty|skip|default|ignore";

const String condition = r'exists|isblank|equals|contains|matches';

const String testDirPath = 'C://odw/Anonymization_test_data/';
const String inputDir = 'C:/odw/sdk/deidentification/bin/test_input/';
const String fileExt = '.txt';

const String settersWithKeyword = '${inputDir}collected_setters.txt';
const String settersWithoutKeyword = '${inputDir}collected_setters_wo_setexp.txt';

List<String> input;
void main(args) {

 // parseFunctionOnly(settersWithoutKeyword);
  parseFullLine(settersWithKeyword);
}

void parseFunctionOnly(String path) {
  List<String> lines = readLinesFromFile(path);
  Protocol protocol = new Protocol('ParamTest', path, lines);

  int success = 0;
  int failure = 0;
  for (int i = 0; i < lines.length; i++) {
    if (parseSetFunctionLine(protocol, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('map = ${protocol.rules}');
  print('errors: ${protocol.errors}');
}

void parseFullLine(String path) {
  List<String> lines = readLinesFromFile(path);
  Protocol protocol = new Protocol('ParamTest', path, lines);

  int success = 0;
  int failure = 0;
  for (int i = 0; i < lines.length; i++) {
    if (parseSetLine(protocol, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('protocol: ${protocol.json}');
}

void success(Match m, String s) {
  print('****: $s');
  for (int i = 0; i < m.groupCount; i++)
    print('  m[$i = ${m[i]}');
}

List<String> readLinesFromFile(String path) {
  File inFile = new File(path);
  List<String> lines = inFile.readAsLinesSync();
  return lines;
}
