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
  for (String path in filesList) {
    File file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    Instance instance = readSopInstance(file1);
    //print('***Identified:\n${instance.patient.format(new Prefixer(depth: 5))}');
    print('Initial Total Elements: ${instance.dataset.eMap.values.length}');

    Dataset ds = instance.dataset;
    ds.keepGroup18();
    ds.keepGroup20();
    ds.keepGroup28();

    // Group 18
    ds.remove(kBodyPartExamined);
    print('${ds.lookup(kBodyPartExamined)}');
    ds.remove(kPlateID);
    print('${ds.lookup(kPlateID)}');
    ds.remove(kGridFocalDistance);
    print('${ds.lookup(kGridFocalDistance)}');

    // Group 20
    ds.remove(kStudyInstanceUID);
    print('${ds.lookup(kStudyInstanceUID)}');
    ds.remove(kSeriesInstanceUID);
    print('${ds.lookup(kSeriesInstanceUID)}');
    ds.remove(kImageComments);
    print('${ds.lookup(kImageComments)}');

    // Group 28
    ds.remove(kSamplesPerPixel);
    print('${ds.lookup(kSamplesPerPixel)}');
    ds.remove(kColumns);
    print('${ds.lookup(kColumns)}');
    ds.remove(kLossyImageCompression);
    print('${ds.lookup(kLossyImageCompression)}');

    print('Final Total Elements: ${instance.dataset.eMap.values.length}');

    // print('***With Group Removed:\n${instance.patient.format(new Prefixer(depth: 5))}');
  }


  //print('Active Patients: ${activePatients.stats}');
}


Instance readSopInstance(String path) {
  File file = new File(path);
  Uint8List bytes = file.readAsBytesSync();
  DcmDecoder decoder = new DcmDecoder(bytes);
  return decoder.readSopInstance(file.path);
}

