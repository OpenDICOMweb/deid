// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';
import 'dart:typed_data';

import 'package:core/core.dart';
import 'package:deid/deid.dart';
import 'package:deid/src/deid/deidentifier.dart';
import 'package:encode/encoder.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String test_output = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  Logger log = Logger.init();
  //var deidentifier = new DeIdentifier();
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    DeIdentifier deIdentify = new DeIdentifier(null);
    Instance instance0 = readEntity(file1);
    var dataset0 = instance0.dataset;
    print('***Identified:\n${instance0.format(new Formatter(maxDepth: 5))}');
    Instance instance1 = readEntity(file1);
    var dataset1 = deIdentify(instance1.dataset);

    DSComparison compare = new DSComparison(dataset0, dataset1);

    print('same: ${compare.same}');
    print('diff: ${compare.diff}');

    /*
    print('Initial Total Elements: ${instance0.dataset.deMap.values.length}');
    //  print('***Identified:\n${instance.patient.format(new Formatter(maxDepth: 5))}');
   //Study study0 = instance0.study;
    Study instance1 = instance0.study.copy;
    print('***Copy:\n${instance1.format(new Formatter(maxDepth: 5))}');
    print('FMI instance1: ${instance1.fmi}');
    deIdentify.fmi(instance1.fmi);

    Dataset ds = deIdentify(instance1.dataset);

    print('Final Total Elements: ${ds.deMap.values.length}');
    print('Removed Elements: ${ds.removed.length}');
    for (Attribute a in ds.removed)
      print('  $a');
    print('***DeIdentified:\n${instance1.patient.format(new Formatter(maxDepth: 5))}');
    */
  }


  //print('Active Patients: ${activePatients.stats}');
}


Instance readEntity(String path) {
  File file = new File(path);
  Uint8List bytes = file.readAsBytesSync();
  return DcmDecoder.decode(bytes);
}