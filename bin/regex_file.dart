// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

String path0 = 'C:/odw/sdk/deidentification/test_data/10-11.encrypt/10-11.encrypt.txt';
String path1 = 'C:/odw/sdk/deidentification/test_data/7,17,18,19,24/7,17,18,19,24.txt';

// Parameter Expressions look as follows:
//    param.TRIAD=triad
const String parameterExp = r'param.(\w+)\s*=\s*([\$|@|\-|\d|\w]+)';
//const String parameterExp = r'param.(\w+)\s*=\s*([@|\-|\d|\w]+)';
final RegExp param = new RegExp(parameterExp);

// Rule expressions look as follows:
//    set.[0008,0020] StudyDate = @blank(0)
const String ruleExp =
  r'set.\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]\s(\w+)\s=\s@(\w+)\(([\s|@|\-|\,|\"|\d|\w]*)\)';

final RegExp ruleRegExp = new RegExp(ruleExp);


//
String parse(List<String> lines) {
  Map<String, dynamic> parameters = {};
  List<Map<String, dynamic>> rules = [];
  Map protocol = {};
  List<String> errors = [];

  for (int i = 0; i < lines.length; i++) {
    var line = lines[i];
    var s = line.trim();
    print('line: $s');
    if (s[0] == "#") continue;

    if (s.indexOf("param.") == 0) {
      Match m = param.firstMatch(s);
      if (m == null) {
        errors.add('line $i: $line');
        continue;
      }
      var name = m[1];
      var value = m[2];
      //print('param($name, $value)');
      parameters[name] = value;
    } else if (s.indexOf("set.[") == 0) {
      Match m = ruleRegExp.firstMatch(s);
      if (m == null) {
        errors.add('line $i: $line');
        continue;
      }
      var group = m[1];
      var element = m[2];
      int target = int.parse('0x$group$element');

      // add tag validation
      //    var tag = Tag.lookup(target);
      var keyword = m[3];

      var function = m[4];
      var args = m[5];
      List argList = args.split(",");
      int index = argList.indexOf("this");
      if (index >= 0) argList[index] = target;
     // var newArgs = argList.join(', ');

      Map<String, dynamic> rule = {
        "tag": target,
        "keyword": keyword,
        "function": function,
        "args": argList};
      rules.add(rule);
      //var v = 'ds[$target] = ds[$function($newArgs);';
      //print(v);;
    }
  }
  protocol["parameters"] = parameters;
  protocol["rules"] = rules;
  JsonEncoder encoder = new JsonEncoder.withIndent("  ");
  var output = encoder.convert(protocol);
  print(output);
  return output;
}

String write(Map<String, dynamic> parameters, List<Map<String, dynamic>> rules) {
  String params = JSON.encode(parameters);
  String rules = JSON.encode(parameters);
  return '''{
  "parameters": {
     $params
     },
  "rules": $rules
}''';
}

const String testDir = 'C:/odw/Anonymization_test_data/';
const String outputDir = 'C:/odw/sdk/deidentification/bin/results/';
const String fileExt = '.txt';


void main() {
  List<FileSystemEntity> dirList;
  List<File> fileList = [];

  Directory dir = new Directory(testDir);
  dirList = dir.listSync(recursive: true);
 // print('dirList: $dirList');

  dirList.forEach((file) {
    if (file is! File) return;
    if (path.extension(file.path) != ".txt") return;
    //fileList.add(path.normalize(file.path));
    fileList.add(file);
  });

  for (File f in fileList) {
    print('File: ${f.path}');
    List<String> lines = f.readAsLinesSync();
    String output = parse(lines);

    String filename = path.basenameWithoutExtension(f.path);
    print('basename: $filename');
    String outPath = outputDir + filename + '.dvp';
    print('outPath: $outPath');
    File outFile = new File(outPath);
    outFile.writeAsStringSync(output);
  }



}
