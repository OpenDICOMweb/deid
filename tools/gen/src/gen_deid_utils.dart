// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'gen_utils.dart';

Map<String, String> inputDir = const {
  "xlsx": "C:/odw/sdk/deid/bin/gen/input/xlsx",
  "csv": "C:/odw/sdk/deid/bin/gen/input/csv",
  "json": "C:/odw/sdk/deid/bin/gen/input/json"
};

Map<String, String> outputDir = const {
  "json": "C:/odw/sdk/deid/bin/gen/output/json",
  "dart": "C:/odw/sdk/deid/bin/gen/output/dart",
};

int optionIndex(String optionName) => optionMap[optionName];

Map<String, int> optionMap = {
  "BasicProfile": 4,
  "RetainSafePrivateOption": 5,
  "RetainUidsOption": 6,
  "RetainDeviceIdentityOption": 7,
  "RetainPatientCharacteristicsOption": 8,
  "RetainLongFullDatesOption": 9,
  "RetainLongModifiedDatesOption": 10,
  "CleanDescriptorsOption": 11,
  "CleanStructuredContentOption": 12,
  "CleanGraphicsOption": 13
};

const Map<String, String> optionFilename = const {
  "BasicProfile": "basic_profile",
  "RetainSafePrivateOption": "retain_safe_private",
  "RetainUidsOption": "retain_uids",
  "RetainDeviceIdentityOption": "retain_device_identity",
  "RetainPatientCharacteristicsOption": "retain_patient_characteristics",
  "RetainLongFullDatesOption": "retain_long_full_dates",
  "RetainLongModifiedDatesOption": "retain_long_modified_dates",
  "CleanDescriptorsOption": "clean_descriptors",
  "CleanStructuredContentOption": "clean_structured_content",
  "CleanGraphicsOption": "clean_graphics"
};

String convertActionCodes(String value) {
  if (value == "") {
    return 'null';
  } else if (value.length > 1) {
    var s = removeSlashesAndStars(value);
    return 'Action.$s';
  } else {
    return 'Action.$value';
  }
}