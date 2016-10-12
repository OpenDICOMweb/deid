// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


class BasicProfileOptions {
  final String keyword;
  final int index;
  final String type;
  final String name;

  const BasicProfileOptions(this.keyword, this.index, this.type, this.name);

  static const kNone = const BasicProfileOptions("none", -1, "NoOptions", "No Options Specified");

  static const kRetainSafePrivate = const BasicProfileOptions("RetainSafePrivate", 0, "Retain",
      "Retail Safe Private Option");

  static const kRetainUids = const BasicProfileOptions("RetainUids", 1, "Retain", "Retail UIDs Option");

  static const kRetainDeviceIdentity =
      const BasicProfileOptions("RetainDeviceIdentity", 2, "Retain", "Retail Device Identity Option");

  static const kRetainPatientCharacteristics =
      const BasicProfileOptions("patientCharacteristics", 3, "Retain", "Retail Patient Characteristics Option");

  static const kRetainFullDates = const BasicProfileOptions(
      "RetainFullDates", 4, "Retain", "Retail Longitudinal Temporal Information with Full Dates "
      "Option");

  static const kRetainModifiedDates = const BasicProfileOptions("RetainModifiedDates", 5, "Retain",
      "Retain Longitudinal Temporal Information with Modified Dates Option");

  static const kCleanDescriptors = const BasicProfileOptions("CleanDescriptors", 6, "Clean", "Clean Descriptors "
      "Option");

  static const kCleanStructuredContent =
      const BasicProfileOptions("CleanStructuredContent", 7, "Clean", "Clean Structured Content Option");

  static const kCleanGraphics = const BasicProfileOptions("CleanGraphics", 8, "Clean", "Clean Graphics Option");

  static const kCleanPixelData = const BasicProfileOptions("CleanPixelData", 6, "Clean", "Clean Pixel Data "
      "Option");

  static const kCleanVisualFeatures =
      const BasicProfileOptions("CleanVisualFeatures", 7, "Clean", "Clean Recognizable Visual Features Option");

//TODO:
// 1. Reidentifier - see PS3.15, E.1.2
  static const map = const{
    "None": kNone,
    "RetainSafePrivate": kRetainSafePrivate,
    "RetainUids": kRetainUids,
    "RetainDeviceIdentity": kRetainDeviceIdentity,
    "RetainPatientCharacteristics": kRetainPatientCharacteristics,
    "RetainFullDates": kRetainFullDates,
    "RetainModifiedDates": kRetainModifiedDates,
    "CleanDescriptors": kCleanDescriptors,
    "CleanStructuredContent": kCleanStructuredContent,
    "CleanGraphics": kCleanGraphics,
    "CleanPixelData": kCleanPixelData,
    "CleanVisualFeatures": kCleanVisualFeatures
  };
}
