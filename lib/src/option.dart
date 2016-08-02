// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library odw.sdk.deid.option;

class Option {
  final String keyword;
  final int index;
  final String type;
  final String name;

  const Option(this.keyword, this.index, this.type, this.name);

  static const none = const Option("none", -1, "NoOptions", "No Options Specified");

  static const safePrivate = const Option("safePrivate", 0, "Retain", "Retail Safe Private Option");

  static const uids = const Option("retainUids", 1, "Retain", "Retail UIDs Option");

  static const deviceIdentity =
      const Option("deviceIdentity", 2, "Retain", "Retail Device Identity Option");

  static const patientCharacteristics =
      const Option("patientCharacteristics", 3, "Retain", "Retail Patient Characteristics Option");

  static const fullDates = const Option(
      "fullDates", 4, "Retain", "Retail Longitudinal Temporal Information with Full Dates Option");

  static const modifiedDates = const Option("modifiedDates", 5, "Retain",
      "Retain Longitudinal Temporal Information with Modified Dates Option");

  static const descriptors = const Option("descriptors", 6, "Clean", "Clean Descriptors Option");

  static const sucturedContent =
      const Option("structuredConent", 7, "Clean", "Clean Structured Content Option");

  static const graphics = const Option("graphics", 8, "Clean", "Clean Graphics Option");

  static const pixelData = const Option("pixelData", 6, "Clean", "Clean Pixel Data Option");

  static const visualFeatures =
      const Option("visualFeatures", 7, "Clean", "Clean Recognizable Visual Features Option");

//TODO:
// 1. Reidentifier - see PS3.15, E.1.2

}
