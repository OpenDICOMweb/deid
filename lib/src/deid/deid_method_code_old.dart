// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

//De-Identification Method
class DeIdMethodCode {
  final int code;
  final String meaning;

  const DeIdMethodCode._(this.code, this.meaning);

  String get designator => "DCM";

  /// Returns a [String] containing the [int] code;
  String get value => code.toString();

  /// Returns a list of validf [int] codes.
  List<int> get codes => map.keys;

  /// Returns [true] if [code] is a valid [CID7050] code.
  bool isValid(int code) => map.keys.contains(code);

  bool isValidList(List<int> codes) {
    for (int code in codes) if (!isValid(code)) return false;
    return true;
  }

  String toString() => "CID$id($designator) $name";

  static const basic =
      const DeIdMethodCode._(113100, "Basic Application Confidentiality Profile");
  static const kCleanPixelData =
      const DeIdMethodCode._(113101, "Clean Pixel Data Option");
  static const kCleanVisualFeatures =
      const DeIdMethodCode._(113102, "Clean Recognizable Visual Features Option");
  static const kCleanGraphics =
      const DeIdMethodCode._(113103, "Clean Graphics Option");
  static const kCleanStuctureContent =
      const DeIdMethodCode._(113104, "Clean Structured Content Option");
  static const kCleanDescriptors =
      const DeIdMethodCode._(113105, "Clean Descriptors Option");
  static const kRetainFullDates =
      const DeIdMethodCode._(113106, "Retain Longitudinal Temporal Information Full Dates Option");
  static const kRetainModifiedDates =
      const DeIdMethodCode._(113107, "Retain Longitudinal Temporal Information Modified Dates Option");
  static const kRetainPatientCharacteristics =
      const DeIdMethodCode._(113108, "Retain Patient Characteristics Option");
  static const kRetainDeviceIdentity =
      const DeIdMethodCode._(113109, "Retain Device Identity Option");
  static const kRetainUids =
      const DeIdMethodCode._(113110, "Retain UIDs Option");
  static const retailSafePrivate =
      const DeIdMethodCode._(113111, "Retain Safe Private Option");

  Item get item {
    Map<int, Attribute> map = {
      kCodeValue: new LO(kCodeValue, [code]),
      kCodingSchemeDesignator: new SH(kCodingSchemeDesignator, [designator]),
      kCodeMeaning: new LO(kCodeMeaning, [meaning])
    };
    return new Item(kDeidentificationMethodCodeSequence, map, kUndefinedLength);
  }

  static const Map<int, DeIdMethodCode> map = const {
    113100: basic,
    113101: kCleanPixelData,
    113102: kCleanGraphics,
    113103: kCleanStuctureContent,
    113104: kCleanStuctureContent,
    113105: kCleanDescriptors,
    113106: kRetainFullDates,
    113107: kRetainModifiedDates,
    113108: kRetainPatientCharacteristics,
    113109: kRetainDeviceIdentity,
    113110: kRetainUids,
    113111: retailSafePrivate
  };


}
