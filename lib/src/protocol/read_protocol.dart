// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:deid/protocol.dart';

Protocol read_protocol_file(String inPath) {
  var ext = path.extension(inPath);
  if (ext == ".json") {
    File inFile = new File(inPath);
    var s = inFile.readAsStringSync();
    return Protocol.parse(s);
  }
  return null;
}

void write_protocol_file(String outPath, Protocol protocol) {
  var ext = path.extension(outPath);
  if (ext == ".json") {
    File inFile = new File(outPath);
    inFile.writeAsStringSync(protocol.json);
  }

}

String blank ="C:/odw/sdk/deidentification/bin/results/1.blank.json";

void main() {
  var p = read_protocol_file(blank);
  print(p.map);
}