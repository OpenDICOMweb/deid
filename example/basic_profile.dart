// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:common/common.dart';
import 'package:deid/deid.dart';
import 'package:deid/src/deid/deidentifier.dart';
import 'package:dsc_convert/dcm.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String testOutput = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  Logger log = new Logger('example/basic_profile.dart');
  //var deidentifier = new DeIdentifier();
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    DeIdentifier deIdentify = new DeIdentifier(null);
    var rds0 = TagReader.readFile(file);
    print('***Identified:\n${rds0.format(new Formatter(maxDepth: 5))}');

    var rds1 = deIdentify(rds0);

    DSComparison compare = new DSComparison(rds0, rds1);

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
}

