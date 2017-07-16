// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:dsc_convert/dcm.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String testOutput = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  final Logger log = new Logger('example/deid_remove_all_private.dart');
  //var deidentifier = new DeIdentifier();
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    var rds = TagReader.readFile(file);
    print('Initial Total Elements: ${rds.length}');
    print('***Identified:\n${rds.format(new Formatter(maxDepth: 5))}');

    List<Element> removed = [];
    rds.removePrivate();

    print('Final Total Elements: ${rds.length}');
    print('Removed Elements: ${removed.length}');
    for (Element a in removed)
      print('  $a');
    print('***With Private Tags removed:\n${rds.format(new Formatter(maxDepth: 5))}');
  }
}
