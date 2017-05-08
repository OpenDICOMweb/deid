// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';
import 'package:core/core.dart';

class ContextGroup {
  final dcmType = "ContextGroup";
  final Map<String, String> designators = const {
    "DCM": "DICOM",
    "SRT": "SNOMED-RT"
  };

  const ContextGroup();
}

const CID7050 = DeIdentificationMethod;

class DeIdentificationMethod extends ContextGroup {
  final CodingScheme designator = CodingScheme.DCM;
  final String number = "7050";
  final String name = "De-Identification Method";
  final String code;
  final String meaning;

  const DeIdentificationMethod(this.code, this.meaning);

  /// Returns a list of validf [int] codes.
  List<int> get codes => map.keys;

  /// Returns [true] if [code] is a valid [CID7050] code.
  bool isValid(int code) => map.keys.contains(code);

  bool isValidList(List<int> codes) {
    for (int code in codes) if (!isValid(code)) return false;
    return true;
  }

  Item get item {
    Map<int, Element> map = {
      kCodeValue: new SH(PTag.kCodeValue, [code]),
      kCodingSchemeDesignator: new SH(PTag.kCodingSchemeDesignator, [designator]),
      kCodeMeaning: new LO(kCodeMeaning, [meaning])
    };

    return new Item(kDeidentificationMethodCodeSequence, map, kUndefinedLength, true);
  }

  String toString() => "CID$number($designator) $name";

  static const kBasicApplicationConfidentialityProfile =
  const DeIdentificationMethod("113100", "Basic Application Confidentiality Profile");
  static const kCleanPixelDataOption = const DeIdentificationMethod("113101", "Clean Pixel Data Option");
  static const kCleanRecognizableVisualFeaturesOption =
  const DeIdentificationMethod("113102", "Clean Recognizable Visual Features Option");
  static const kCleanGraphicsOption = const DeIdentificationMethod("113103", "Clean Graphics Option");
  static const kCleanStructuredContentOption =
  const DeIdentificationMethod("113104", "Clean Structured Content Option");
  static const kCleanDescriptorsOption = const DeIdentificationMethod("113105", "Clean Descriptors Option");
  static const kRetainLongitudinalTemporalInformationFullDatesOption =
  const DeIdentificationMethod("113106", "Retain Longitudinal Temporal Information Full Dates Option");
  static const kRetainLongitudinalTemporalInformationModifiedDatesOption =
  const DeIdentificationMethod("113107", "Retain Longitudinal Temporal Information Modified Dates Option");
  static const kRetainPatientCharacteristicsOption =
  const DeIdentificationMethod("113108", "Retain Patient Characteristics Option");
  static const kRetainDeviceIdentityOption = const DeIdentificationMethod("113109", "Retain Device Identity Option");
  static const kRetainUIDsOption = const DeIdentificationMethod("113110", "Retain UIDs Option");
  static const kRetainSafePrivateOption = const DeIdentificationMethod("113111", "Retain Safe Private Option");

  static const Map<int, String> map = const {
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
}
