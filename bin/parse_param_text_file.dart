// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:deid/protocol.dart';
import 'package:deid/text_protocol_parser.dart';

const String testDirPath = 'C://odw/Anonymization_test_data/';
const String inputDir = 'C:/odw/sdk/deidentification/bin/test_input/';

const String paramsWithKeyword = '${inputDir}collected_params.txt';
const String paramsWithoutKeyword = '${inputDir}collected_params_wo_param.txt';

void main(args) {

  parseDefOnly(paramsWithoutKeyword);
  parseFullLine(paramsWithKeyword);
}

void parseDefOnly(String path) {
  List<String> lines = readLinesFromFile(path);
  Protocol protocol = new Protocol('ParamTest', path, lines);

  int success = 0;
  int failure = 0;
  for (int i = 0; i < lines.length; i++) {
    if (parseParameterDefLine(protocol, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('map = ${protocol.pMap}');
  print('errors: ${protocol.errors}');
}

void parseFullLine(String path) {
  List<String> lines = readLinesFromFile(path);
  Protocol protocol = new Protocol('ParamTest', path, lines);

  int success = 0;
  int failure = 0;
  for (int i = 0; i < lines.length; i++) {
    if (parseParameterLine(protocol, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('map = ${protocol.pMap}');
  print('protocol: $protocol');
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