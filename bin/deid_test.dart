// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:dsc_convert/dcm.dart';

String testData = "C:/odw/sdk/convert/test_data/";
String testOutput = "C:/odw/sdk/convert/test_output/";

List pidMint10 = [
  "PID_MINT10", [
    "PID_MINT10/CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm",
    "PID_MINT10/CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm"
  ]
];
String crf1 = "PID_MINT10/CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String crf2 = "PID_MINT10/CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

String output = "output.dcm";

void main() {
  Logger log = new Logger("deid_test");
  String path = testData + crf1;

  log.config('Reading file: $path');
  RootTagDataset rds = TagReader.readPath(path);
  print(rds.format(new Formatter()));


/*  //De-Identify
  //DeIdentifier deid = new DeIdentifier();
  //deid(instance);

  print('main:study: $study');
  print(study.summary);
  print(study.format(new Formatter()));*/
}
