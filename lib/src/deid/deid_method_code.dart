// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -See the AUTHORS file for other contributors.

/// Common name for the [class].
const DeIdMethodCode = CID7050;

/// Canonical name for the [class].
class CID7050 {
  static const String id = "7050";
  static const String name = "De-Identification Method";
  static const String designator = "DCM";
  final int code;
  final String meaning;

  const CID7050(this.code, this.meaning);

  /// Returns a [String] containing the [int] code;
  String get value => code.toString();

  /// Returns [true] if [code] is a valid [CID7050] code.
  bool isValid(int code) => codes.contains(code);

  bool isNotValid(int code) => ! isValid(code);

  bool isValidList(List<int> codes) {
    for (int code in codes) if (!isValid(code)) return false;
    return true;
  }

  bool isNotValidList(List<int> codes) => ! isValidList(codes);

  String toString() => "CID$id($designator) $name";

  static const kBasicApplicationConfidentialityProfile =
      const CID7050(113100, "Basic Application Confidentiality Profile");
  static const kCleanPixelDataOption = const CID7050(113101, "Clean Pixel Data Option");
  static const kCleanRecognizableVisualFeaturesOption =
      const CID7050(113102, "Clean Recognizable Visual Features Option");
  static const kCleanGraphicsOption = const CID7050(113103, "Clean Graphics Option");
  static const kCleanStructuredContentOption =
      const CID7050(113104, "Clean Structured Content Option");
  static const kCleanDescriptorsOption = const CID7050(113105, "Clean Descriptors Option");
  static const kRetainLongitudinalTemporalInformationFullDatesOption =
      const CID7050(113106, "Retain Longitudinal Temporal Information Full Dates Option");
  static const kRetainLongitudinalTemporalInformationModifiedDatesOption =
      const CID7050(113107, "Retain Longitudinal Temporal Information Modified Dates Option");
  static const kRetainPatientCharacteristicsOption =
      const CID7050(113108, "Retain Patient Characteristics Option");
  static const kRetainDeviceIdentityOption = const CID7050(113109, "Retain Device Identity Option");
  static const kRetainUIDsOption = const CID7050(113110, "Retain UIDs Option");
  static const kRetainSafePrivateOption = const CID7050(113111, "Retain Safe Private Option");

  static const Map<int, String> stringMap = const {
    113100: "Basic Application Confidentiality Profile",
    113101: "Clean Pixel Data Option",
    113102: "Clean Recognizable Visual Features Option",
    113103: "Clean Graphics Option",
    113104: "Clean Structured Content Option",
    113105: "Clean Descriptors Option",
    113106: "Retain Longitudinal Temporal Information Full Dates Option",
    113107: "Retain Longitudinal Temporal Information Modified Dates Option",
    113108: "Retain Patient Characteristics Option",
    113109: "Retain Device Identity Option",
    113110: "Retain UIDs Option",
    113111: "Retain Safe Private Option"
  };

  static const Map<int, String> keywordMap = const {
    113100: "BasicApplicationConfidentialityProfile",
    113101: "CleanPixelDataOption",
    113102: "CleanRecognizableVisualFeatures",
    113103: "CleanGraphics",
    113104: "CleanStructuredContent",
    113105: "CleanDescriptors",
    113106: "RetainFullDates",
    113107: "RetainModified Dates",
    113108: "RetainPatientCharacteristics",
    113109: "RetainDeviceIdentity",
    113110: "RetainUIDs",
    113111: "RetainSafePrivate"
  };

  static final List<int> codes = keywordMap.keys;
  static final List<String> keywords = keywordMap.values;
}
