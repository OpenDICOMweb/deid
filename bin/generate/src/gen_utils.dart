// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

int lookupOptionOffset(String optionName) => optionOffset[optionName];

Map<String, int> optionOffset = {
  "keyword": 0,
  "tag": 1,
  "isRetired": 2,
  "InStdCompIOD": 3,
  "basicProfile": 4,
  "RetainSafePrivate": 5,
  "RetainUids": 6,
  "RetainDeviceIdentity": 7,
  "RetainPatientCharacteristics": 8,
  "RetainLongFullDates": 9,
  "RetainLongModifDates": 10,
  "CleanDescriptors": 11,
  "CleanStructuredContent": 12,
  "CleanGraphics": 13
};