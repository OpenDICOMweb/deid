// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.


import 'dart:io';
import 'package:path/path.dart';
import 'protocol.dart';


const String testDirPath = 'C:/odw/Anonymization_test_data/';
const String outputDir = 'C:/odw/sdk/deidentification/bin/results/';
const String fileExt = '.txt';

///TODO: doc
void main() {
  List<List<String>> filesWithErrors = [];
  List<FileSystemEntity> dirList;
  List<String> fileList = [];

  Context path = new Context(style: Style.windows);

  Directory testDir = new Directory(testDirPath);
  dirList = testDir.listSync(recursive: true);

  dirList.forEach((entity) {
    if (entity is! File) return;
    if (path.extension(entity.path) != ".txt") return;

    var w = path.normalize(entity.path);
    print('w: $w');

    fileList.add(w);
  });

  for (String filePath in fileList) {
    Protocol protocol = Protocol.parseFile(filePath);
    //print(protocol.json);
    if (protocol.errors.length > 0) {
      List entry = [filePath, protocol.errors];
      filesWithErrors.add(entry);
    }
    var fname = path.basenameWithoutExtension(filePath);
    print('fname: $fname');
    var outPath = path.join(path.normalize(outputDir), '$fname.json');
    protocol.writeFile(outPath);
  }

  var s = 'Files with Errors:\n';
  s += filesWithErrors.join('\n');
  File errors = new File('$outputDir/errors.txt');
  errors.writeAsStringSync(s);
}