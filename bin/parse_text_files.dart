// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:deid/profile.dart';
import 'package:deid/text_protocol_parser.dart';

const String testDirPath = 'C://odw/Anonymization_test_data/';
const String outputDir = 'C:/odw/sdk/deidentification/bin/results/';
const String fileExt = '.txt';

///TODO: doc
void main() {
  List filesWithErrors = [];
  List<FileSystemEntity> dirList;
  List<String> fileList = <String>[];

  Directory testDir = new Directory(testDirPath);
  dirList = testDir.listSync(recursive: true);

  dirList.forEach((entity) {
    if (entity is! File) return;
    var extension = path.extension(entity.path);
    if (extension != ".txt") return;
    fileList.add(entity.path);
  });

  fileList.sort();

  for (String s in fileList)
      print('  $s');

  for (String filePath in fileList) {
    Profile profile = parseFile(filePath);
    if (profile.errors.length > 0) {
      filesWithErrors.add([filePath, profile.errors]);
      filesWithErrors.add(profile.errors);
    }


    var fname = path.basenameWithoutExtension(filePath);
    print('fname: $fname');
    var outPath = path.join(outputDir, '$fname.json');
    writeProfileFile(outPath, profile);
  }
  writeErrorFile(filesWithErrors);
}

Profile parseFile(String path) {
  List<String> lines = readLinesFromFile(path);
  Profile profile = new Profile('parse_text_file.dart', path, lines);
  int success = 0;
  int failure = 0;

  for (int i = 0; i < lines.length; i++) {

    if (parseLine(profile, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('map = ${profile.parameters}');
  print('profile: $profile');
  return profile;
}

List<String> readLinesFromFile(String path) {
  File inFile = new File(path);
  List<String> lines = inFile.readAsLinesSync();
  return lines;
}

void writeProfileFile(String outPath, Profile profile) {
  File outFile = new File(outPath);
  print('outFile: ${outFile.path}');
  outFile.writeAsStringSync(profile.json);
}


void writeErrorFile(List fileWithErrors) {
  var s = 'Files with Errors:\n';
  fileWithErrors.forEach((file){
    s += '${file[0]}\n';
    file[1].forEach((line, msg) {
      s += '  $line: $msg\n';
    });
  });
  File errors = new File('$outputDir/errors.txt');
  errors.writeAsStringSync(s);
}
