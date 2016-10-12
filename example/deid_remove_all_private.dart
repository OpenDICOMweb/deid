// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';
import 'dart:typed_data';

import 'package:logger/logger.dart';
import 'package:convert/dicom.dart';
import 'package:core/dicom.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String test_output = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  Logger log = Logger.init(level: Level.fine);
  //var deidentifier = new DeIdentifier();
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    Instance instance = readSopInstance(file1);
    print('Initial Total Elements: ${instance.dataset.eMap.values.length}');
    print('***Identified:\n${instance.patient.format(new Prefixer(depth: 5))}');

    List<Element> removed = [];
    Dataset ds = instance.dataset;
    removed = ds.removePrivateTags(returnList: true);

    print('Final Total Elements: ${instance.dataset.eMap.values.length}');
    print('Removed Elements: ${removed.length}');
    for (Element a in removed)
      print('  $a');
    print('***With Private Tags removed:\n${instance.patient.format(new Prefixer(depth: 5))}');
  }


  //print('Active Patients: ${activePatients.stats}');
}


Instance readSopInstance(String path) {
  File file = new File(path);
  Uint8List bytes = file.readAsBytesSync();
  DcmDecoder decoder = new DcmDecoder(bytes);
  return decoder.readSopInstance(file.path);
}