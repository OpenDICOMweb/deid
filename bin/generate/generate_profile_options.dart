// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

/// Generate Basic Profile Options

import 'dart:io';
import 'src/create_option_table.dart';

/// This program generates the DeID class using the 'deid.json' file
/// that was created from the DICOM table in PS3.15 Appendix E.
void main() {

  String jsonFilename        = 'C:/odw/sdk/deid/bin/generate/input/json/deid.json';
  String classDirName       = 'C:/odw/sdk/deid/bin/generate/output/dart';

  ProfileOptionTable table = ProfileOptionTable.read(jsonFilename);

  // Write Option Class
  Iterable<String> optionNames = optionOffset.keys;
  for (String name in optionNames) {
    String filename = optionToFilename[name];
    String outPath = '$classDirName/${filename}.dart';
    var code = table.profileOption(name);
    var outFile = new File(outPath);
    outFile.writeAsStringSync(code);
  }
  print('Done');
}

const Map<String, String> optionToFilename = const {
  "basicProfile": "basic_profile",
  "RetainSafePrivate": "retain_safe_private",
  "RetainUids": "retain_uids",
  "RetainDeviceIdentity": "retain_device_identity",
  "RetainPatientCharacteristics": "retain_patient_characteristics",
  "RetainLongFullDates": "retain_long_full_dates",
  "RetainLongModifDates": "retain_long_modification_dates",
  "CleanDescriptors": "clean_descriptors",
  "CleanStructuredContent": "clean_structured_content",
  "CleanGraphics": "clean_graphics"
};