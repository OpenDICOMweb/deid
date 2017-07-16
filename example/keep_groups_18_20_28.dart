// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:common/common.dart';
import 'package:dictionary/dictionary.dart';
import 'package:core/core.dart';
import 'package:dsc_convert/dcm.dart';

String inputDir = "C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/";
String testOutput = "C:/odw/sdk/deid/example/output";

String file1 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm";
String file2 = inputDir + "CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm";

List<String> filesList = [file1];

void main() {
  final Logger log = new Logger('example/remove_groups_18_20_28.dart');
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    RootTagDataset rds = TagReader.readFile(file);
    //print('***Identified:\n${instance.patient.format(new Formatter(maxDepth: 5))}');
    print('Initial Total Elements: ${rds.length}');

    rds.retainGroup18();
    rds.retainGroup20();
    rds.retainGroup28();

    // Group 18
    rds.remove(kBodyPartExamined);
    print('${rds.lookup(kBodyPartExamined)}');
    rds.remove(kPlateID);
    print('${rds.lookup(kPlateID)}');
    rds.remove(kGridFocalDistance);
    print('${rds.lookup(kGridFocalDistance)}');

    // Group 20
    rds.remove(kStudyInstanceUID);
    print('${rds.lookup(kStudyInstanceUID)}');
    rds.remove(kSeriesInstanceUID);
    print('${rds.lookup(kSeriesInstanceUID)}');
    rds.remove(kImageComments);
    print('${rds.lookup(kImageComments)}');

    // Group 28
    rds.remove(kSamplesPerPixel);
    print('${rds.lookup(kSamplesPerPixel)}');
    rds.remove(kColumns);
    print('${rds.lookup(kColumns)}');
    rds.remove(kLossyImageCompression);
    print('${rds.lookup(kLossyImageCompression)}');

    print('Final Total Elements: ${rds.length}');

    // print('***With Group Removed:\n${instance.patient.format(new Formatter(maxDepth: 5))}');
  }
  //print('Active Patients: ${activePatients.stats}');
}



