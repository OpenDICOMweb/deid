// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

const String id = r'(\w+)';
const String atId = r'(@\w+)';
const String integer = r'([-+]?\d+)';
const String pOther = r'([\w\$]+)';
const String pFunction = r'(@\w+\(\))';
const String pValue = '($pFunction|$atId|$id|$integer|$pOther)';
const String paramDef = '^\\s*$id\\s*=\\s*$pValue\\s*';
const String paramExp = '^\\s*param\.$id\\s*=\\s*$pValue\\s*';


final paramDefRegExp = new RegExp(paramDef);

/*
static const String id = r'([\w]+)';
static final idRE = new RegExp(id);
static const String atId = r'(@[\w]+)';
static final atIdRE = new RegExp(atId);

static const String int = r'([-+]*\d)';
static final RegExp intRE = new RegExp(int);
*/
const String testDirPath = 'C://odw/Anonymization_test_data/';
const String inputDir = 'C:/odw/sdk/deidentification/bin/test_input/';
const String fileExt = '.txt';

const String paramsWithKeyword = '${inputDir}collected_params.txt';
const String paramsWithoutKeyword = '${inputDir}collected_params_wo_param.txt';

void main(args) {
  Map<String, String> params = {};

  print('paramDef: $paramDef');
  print('paramExp: $paramDef');
  List<String> lines = readLinesFromFile(paramsWithoutKeyword);
  int total = lines.length;
  int matches = 0;
  int failures = 0;
  for (String line in lines) {
    Match m = paramDefRegExp.firstMatch(line);
    if (m == null) {
      print('XXXX: No Match for: $line');
      failures++;
    } else {
      var key = m[1];
      var value = m[2];
      params[key] = value;
      matches++;
    }
  }
  print('Success $matches, Failure: $failures of $total lines');
  print('map = $params');
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
