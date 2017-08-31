// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:tag/tag.dart';

import 'gen_deid_utils.dart';

// Utilities

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
String removeSlashesAndStars(String s) {
  s = s.replaceAll("/", "");
  return s.replaceAll('*', "");
}

String convertY_N(String value) {
  //print('$value');
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

String getVMValue(VM vm) {
  var min = vm.min;
  var max = vm.max;
  var width = vm.width;
  if (min != 1 || width != 1) throw "min or width not 1";
  if (max == 1) return "1";
  if (max == -1) return "-1";
  print("*************** $vm");
  return '[$min, $max, $width]';
}

String listToString(List data, String separator) => '[\n ${data.join(separator)}\n]';

int validTag(String tag) {
  int v = int.parse(tag, onError: (tag) => null);
  if (v == null) {
    print('Tag $tag cannot be converted to int.');
    return null;
  }
  return v;
}

String toHex(int tag) =>
 '0x' + tag.toRadixString(16).padLeft(8, "0");

// Converts any tags of the form 0x60xx1234 to 0x60001234
String fixTag(String tag) {
  String tmp = "0x";
  for(int i = 2; i < tag.length; i++) {
    if (tag[i] == 'x') {
      tmp += '0';
    } else {
      tmp += tag[i];
    }
  }
  return tmp;
}

/// Read a
List<String> readFileAsLines(String type, String name) {
  var dir = inputDir[type];
  File input = new File('$dir/$name.$type');
  print('Reading lines from ${input.path}...');
  return input.readAsLinesSync(encoding: SYSTEM_ENCODING);
}

String readFileAsString(String type, String name) {
  var dir = inputDir[type];
  File input = new File('$dir/$name.$type');
  print('Reading bytes from ${input.path}...');
  return input.readAsStringSync(encoding: SYSTEM_ENCODING);
}

/// Write generated code to file
void writeFile(String type, String name, String content) {
  var dir = outputDir[type];
  File f1 = new File('$dir/$name.$type');
  print('Writing ${f1.path}...');
  f1.writeAsStringSync(content);
}

