// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';
import 'dart:typed_data';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:convertX/dicom.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String test_output = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  final Logger log = new Logger('example/deid_remove_group.dart');
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    Instance instance = readEntity(file1);
    print('Initial Total Elements: ${instance.dataset.eMap.values.length}');
    //print('***Identified:\n${instance.patient.format(new Formatter(maxDepth: 5))}');

    Dataset ds = instance.dataset;
    bool anyRemoved = ds.removeCurves();

    print('Final Total Elements: ${instance.dataset.eMap.values.length}');
    print('Removed Elements: ${ds.removed}');
    if (anyRemoved) {
      for (Element a in ds.removed)
        print('  $a');
    }
   // print('***With Group Removed:\n${instance.patient.format(new Formatter(maxDepth: 5))}');
  }


  //print('Active Patients: ${activePatients.stats}');
}

Instance readEntity(String path) {
  File file = new File(path);
  Uint8List bytes = file.readAsBytesSync();
  return DcmDecoder.decode(bytes);
}
