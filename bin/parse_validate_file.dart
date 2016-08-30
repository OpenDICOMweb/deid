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
  List<List<String>> filesWithErrors = [];
  List<FileSystemEntity> dirList;
  List<String> fileList = [];

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
    Protocol protocol = parseFile(filePath);
    if (protocol.errors.length > 0)
      filesWithErrors.add([filePath, protocol.errors]);

    var fname = path.basenameWithoutExtension(filePath);
    print('fname: $fname');
    var outPath = path.join(outputDir, '$fname.json');
    writeProtocolFile(outPath, protocol);
  }
  writeErrorFile(filesWithErrors);
}

Protocol parseFile(String path) {
  List<String> lines = readLinesFromFile(path);
  Protocol protocol = new Protocol('parse_text_file.dart', path, lines);
  int success = 0;
  int failure = 0;

  for (int i = 0; i < lines.length; i++) {

    if (parseLine(protocol, i, lines[i])) {
      success++;
    } else {
      failure++;
    }
  }
  print('Success $success, Failure: $failure of ${lines.length} lines');
  print('map = ${protocol.parameters}');
  print('profile: $protocol');
  return protocol;
}

List<String> readLinesFromFile(String path) {
  File inFile = new File(path);
  List<String> lines = inFile.readAsLinesSync();
  return lines;
}

void writeProtocolFile(outPath, Protocol protocol) {
  File outFile = new File(outPath);
  print('outFile: ${outFile.path}');
  outFile.writeAsStringSync(protocol.json);
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
