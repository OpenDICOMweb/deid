// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
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

void main() {
  Map<String, Map<String, List<int>>> retainRemoveTags = {};

  retainRemoveTags["BasicProfile"] =
      {"retain": BasicProfile.retainList, "remove": BasicProfile.removeCodes};
  retainRemoveTags["RetainSafePrivate"] =
      {"retain": RetainSafePrivateOption.retain, "remove": RetainSafePrivateOption.remove};
  retainRemoveTags["RetainUids"] =
      {"retain": RetainUidsOption.retain, "remove": RetainUidsOption.remove};
  retainRemoveTags["RetainDeviceIdentity"] =
  {"retain": RetainDeviceIdentityOption.retain, "remove": RetainDeviceIdentityOption.remove};

  retainRemoveTags["RetainPatientCharacteristics"] =
  {"retain": RetainPatientCharacteristicsOption.retain, "remove": RetainPatientCharacteristicsOption.remove};

  retainRemoveTags["RetainLongFullDates"] =
  {"retain": RetainLongFullDatesOption.retain, "remove": RetainLongFullDatesOption.remove};

  retainRemoveTags["RetainLongModifiedDates"] =
  {"retain": RetainLongModifiedDatesOption.retain, "remove": RetainLongModifiedDatesOption.remove};

  retainRemoveTags["CleanDescriptors"] =
  {"retain": CleanDescriptorsOption.retain, "remove": CleanDescriptorsOption.remove};

  retainRemoveTags["CleanStructucturedContent"] =
  {"retain": CleanStructuredContentOption.retain, "remove": CleanStructuredContentOption.remove};

  retainRemoveTags["CleanGraphics"] =
  {"retain": CleanGraphicsOption.retain, "remove": CleanGraphicsOption.remove};

  var indent1 = "  ";
  var indent2 = "    ";
  var indent3 = "      ";
  var outerList = [];
  retainRemoveTags.forEach((String option, Map<String, List<int>> map) {
    var innerList = [];
    map.forEach((key, values){
      List<String> tags = [];
      values.forEach((value){
        tags.add('${Tag.toHex(value)}');
      });
      innerList.add('\n$indent3"$key": const [${tags.join(", ")}]');
    });
    outerList.add('$indent2"$option": const {${innerList.join(",")}\n$indent1}');
  });

  var out = 'const Map map = const {\n${outerList.join(",\n")}\n};';
  print(out);
}