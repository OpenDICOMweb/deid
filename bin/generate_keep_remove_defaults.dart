// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';
import 'package:deid/dictionary.dart';

List basicProfileAndOptions = [
  "BasicProfile",
  "RetainSafePrivate",
  "RetainUids",
  "RetainDeviceIdentity",
  "RetainPatientCharacteristics",
  "RetainLongFullDates",
  "RetainLongModifiedDates",
  "CleanDescriptors",
  "CleanStructucturedContent",
  "CleanGraphics"
];

void main(args) {
  Map<String, Map<String, List<int>>> keepRemoveTags = {};

  keepRemoveTags["BasicProfile"] =
      {"keep": BasicProfile.keep, "remove": BasicProfile.remove};
  keepRemoveTags["RetainSafePrivate"] =
      {"keep": RetainSafePrivateOption.keep, "remove": RetainSafePrivateOption.remove};
  keepRemoveTags["RetainUids"] =
      {"keep": RetainUidsOption.keep, "remove": RetainUidsOption.remove};
  keepRemoveTags["RetainDeviceIdentity"] =
  {"keep": RetainDeviceIdentityOption.keep, "remove": RetainDeviceIdentityOption.remove};

  keepRemoveTags["RetainPatientCharacteristics"] =
  {"keep": RetainPatientCharacteristicsOption.keep, "remove": RetainPatientCharacteristicsOption.remove};

  keepRemoveTags["RetainLongFullDates"] =
  {"keep": RetainLongFullDatesOption.keep, "remove": RetainLongFullDatesOption.remove};

  keepRemoveTags["RetainLongModifiedDates"] =
  {"keep": RetainLongModifiedDatesOption.keep, "remove": RetainLongModifiedDatesOption.remove};

  keepRemoveTags["CleanDescriptors"] =
  {"keep": CleanDescriptorsOption.keep, "remove": CleanDescriptorsOption.remove};

  keepRemoveTags["CleanStructucturedContent"] =
  {"keep": CleanStructuredContentOption.keep, "remove": CleanStructuredContentOption.remove};

  keepRemoveTags["CleanGraphics"] =
  {"keep": CleanGraphicsOption.keep, "remove": CleanGraphicsOption.remove};

  var indent1 = "  ";
  var indent2 = "    ";
  var indent3 = "      ";
  var outerList = [];
  keepRemoveTags.forEach((String option, Map<String, List<int>> map) {
    var innerList = [];
    map.forEach((key, values){
      List<String> tags = [];
      values.forEach((value){
        tags.add('${tagToHex(value)}');
      });
      innerList.add('\n$indent3"$key": const [${tags.join(", ")}]');
    });
    outerList.add('$indent2"$option": const {${innerList.join(",")}\n$indent1}');
  });

  var out = 'const Map map = const {\n${outerList.join(",\n")}\n};';
  print(out);
}