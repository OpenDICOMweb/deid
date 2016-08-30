// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.


import 'dart:io';
import 'package:path/path.dart';

const String testDirPath = 'C://odw/Anonymization_test_data/';
const String outputDir = 'C:/odw/sdk/deidentification/bin/results/';
const String fileExt = '.txt';

///TODO: doc
void main() {
  //List<List<String>> filesWithErrors = [];
  List<FileSystemEntity> dirList;
  List<String> fileList = [];

  Directory testDir = new Directory(testDirPath);
  dirList = testDir.listSync(recursive: true);

  dirList.forEach((entity) {
    if (entity is! File) return;
    if (windows.extension(entity.path) != ".txt") return;
    fileList.add(entity.path);
  });

  List<String> params = [];
  List<String> setters = [];
  List<String> others = [];
  for (String filePath in fileList) {
    var lines = readLinesFromFile(filePath);
    params.addAll(getParams(lines));
    setters.addAll(getSetters(lines));
    others.addAll(getOthers(lines));
  }
  var paramsFile = '${outputDir}collected_params.txt';
  var settersFile = '${outputDir}collected_setters.txt';
  var othersFile = '${outputDir}collected_others.txt';
  writeFile(paramsFile, params, "param.");
  writeFile(settersFile, setters, "set.");
  writeFile(othersFile, others, "'OTHER'");

  //writeErrorFile(filesWithErrors);
}

List<String> readLinesFromFile(String path) {
  File inFile = new File(path);
  List<String> lines = inFile.readAsLinesSync();
  return lines;
}

void writeFile(String path, List<String> lines, type) {
  var s = "# generated file of $type with ${lines.length} lines not counting this one.\n";
  for(String l in lines) s += '$l\n';
  File outFile = new File(path);
  outFile.writeAsStringSync(s);
}

List<String> getParams(List<String> lines, {bool removeParam: true}) {
  List<String> params = [];
  for (String line in lines) {
    if (line.indexOf("param.") >= 0) {
      line = line.trim();
      if (removeParam) line = line.substring(6);
      params.add(line);
    }
  }
  return params;
}

List<String> getSetters(List<String> lines, {bool removeSet: true}) {
  List<String> setters = [];
  for (String line in lines)
    if (line.indexOf("set.") >= 0) {
      line = line.trim();
      if (removeSet) line = line.substring(line.indexOf("="));
      setters.add(line);
    }
  return setters;
}

List<String> getOthers(List<String> lines) {
  List<String> others = [];
  for (String line in lines)
    if ((line.indexOf("set.") < 0) && (line.indexOf("param.") < 0))
      others.add(line);
  return others;
}

void writeErrorFile(List fileWithErrors) {
  var s = 'Files with Errors:\n';
  fileWithErrors.forEach((file){
    s += '${file[0]}\n';
    for (var value in file[1])
      s += '  $value\n';
  });
  File errors = new File('$outputDir/errors.txt');
  errors.writeAsStringSync(s);
}