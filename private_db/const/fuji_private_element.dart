// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
import 'package:dictionary/dictionary.dart';

import 'p_data_tag.dart';
import 'action.dart';

class FDMSPrivateElement extends PrivateElement {
  static const String manufacturerId = "GEMS";
  static const Modality modality = Modality.kPT;
  final String creatorId = "FDMS";

  const FDMSPrivateElement(int tag, VR vr, VM vm, Action action, String description)
      : super(tag, vr, vm, action, description);

  String get json => super.toJson(creatorId);



  //Creator: "FDMS", group: 0009, Manufacturer: "Fuji", Modality: "CR", "Fuji Film Private "
  //"Creator ID"
  static const k0010 =
  const FDMSPrivateElement(0x00090010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Film Private Creator ID");
  static const k1004 = const FDMSPrivateElement(0x00091004, VR.kSH, VM.k1_n, Action.kRemove, "Image "
      "Control Unit");
  static const k1005 = const FDMSPrivateElement(0x00091005, VR.kOW, VM.k1_n, Action.kRemove, "Image UID");
  static const k1006 = const FDMSPrivateElement(0x00091006, VR.kOW, VM.k1_n, Action.kRemove, "Route Image UID");
  static const k1008 = const FDMSPrivateElement(0x00091008, VR.kUL, VM.k1_n, Action.kKeepBlank, "Image Display Information Version No.");
  static const k1009 = const FDMSPrivateElement(0x00091009, VR.kUL, VM.k1_n, Action.kRemove, "Patient Information Version No.");
  static const k100c = const FDMSPrivateElement(0x0009100c, VR.kOW, VM.k1_n, Action.kRemove, "Film UID");
  static const k1010 = const FDMSPrivateElement(0x00091010, VR.kCS, VM.k1_n, Action.kKeep, "Exposure Unit Type Code");
  static const k1080 = const FDMSPrivateElement(0x00091080, VR.kLO, VM.k1_n, Action.kRemove, "Kanji Hospital Name");
  static const k1090 = const FDMSPrivateElement(0x00091090, VR.kST, VM.k1_n, Action.kRemove, "Distribution Code");
  static const k1092 = const FDMSPrivateElement(0x00091092, VR.kSH, VM.k1_n, Action.kRemove, "Kanji Department Name");
  static const k10f0 = const FDMSPrivateElement(0x000910f0, VR.kCS, VM.k1_n, Action.kKeep, "Blackening Process Flag");
  static const k10f1 = const FDMSPrivateElement(0x000910f1, VR.kST, VM.k1_n, Action.kKeep, "Processing Information Flag");
  static const k0010 = const FDMSPrivateElement(0x00190010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Private Creator ID");
  static const k1015 = const FDMSPrivateElement(0x00191015, VR.kLO, VM.k1_n, Action.kRemove, "Kanji Body Part for Exposure");
  static const k1032 = const FDMSPrivateElement(0x00191032, VR.kLO, VM.k1_n, Action.kRemove, "Kanji Menu Name");
  static const k1040 = const FDMSPrivateElement(0x00191040, VR.kCS, VM.k1_n, Action.kKeepBlank, "Image Processing Type");
  static const k1050 = const FDMSPrivateElement(0x00191050, VR.kCS, VM.k1_n, Action.kKeep, "EDR Mode");
  static const k1060 = const FDMSPrivateElement(0x00191060, VR.kSH, VM.k1_n, Action.kRemove, "Radiographers Code");
  static const k1070 = const FDMSPrivateElement(0x00191070, VR.kIS, VM.k1_n, Action.kKeep, "Split Exposure Format");
  static const k1071 = const FDMSPrivateElement(0x00191071, VR.kIS, VM.k1_n, Action.kKeep, "No. of Split Exposure Frames");
  static const k1080 = const FDMSPrivateElement(0x00191080, VR.kIS, VM.k1_n, Action.kKeep, "Reading Position Specification");
  static const k1081 = const FDMSPrivateElement(0x00191081, VR.kIS, VM.k1_n, Action.kKeep, "Reading Sensitivity Center");
  static const k0010 = const FDMSPrivateElement(0x00210010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Private Creator ID");
  static const k1010 = const FDMSPrivateElement(0x00211010, VR.kCS, VM.k1_n, Action.kRemove, "FCR Image ID");
  static const k1030 = const FDMSPrivateElement(0x00211030, VR.kCS, VM.k1_n, Action.kRemove, "Set No.");
  static const k1040 = const FDMSPrivateElement(0x00211040, VR.kIS, VM.k1_n, Action.kRemove, "Image No. In the Set");
  static const k1050 = const FDMSPrivateElement(0x00211050, VR.kCS, VM.k1_n, Action.kKeep, "Pair Processing Information");
  static const k1080 = const FDMSPrivateElement(0x00211080, VR.kOB, VM.k1_n, Action.kRemove, "Equipment Type-Specific Information");
  static const k0010 = const FDMSPrivateElement(0x00250010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Private Creator ID");
  static const k1010 = const FDMSPrivateElement(0x00251010, VR.kUS, VM.k1_n, Action.kKeep, "Relative Light Emission Amount Sk");
  static const k1011 = const FDMSPrivateElement(0x00251011, VR.kUS, VM.k1_n, Action.kKeep, "Term of Correction for Each IP Type St");
  static const k1012 = const FDMSPrivateElement(0x00251012, VR.kUS, VM.k1_n, Action.kKeep, "Reading Gain Gp");
  static const k0010 = const FDMSPrivateElement(0x00290010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Private Creator ID");
  static const k1050 = const FDMSPrivateElement(0x00291050, VR.kCS, VM.k1_n, Action.kKeep, "Data Compression Code");
  static const k0010 = const FDMSPrivateElement(0x50f10010, VR.kLO, VM.k1_n1, Action.kKeep, "Fuji Private Creator ID");
  static const k1006 = const FDMSPrivateElement(0x50f11006, VR.kCS, VM.k1_n, Action.kKeep, "Energy Subtraction Param");
  static const k1007 = const FDMSPrivateElement(0x50f11007, VR.kCS, VM.k1_n, Action.kKeep, "Subtraction Registration Result");
  static const k1008 = const FDMSPrivateElement(0x50f11008, VR.kCS, VM.k1_n, Action.kKeep, "Energy Subtraction Param. 2");
  static const k1009 = const FDMSPrivateElement(0x50f11009, VR.kSL, VM.k1_n, Action.kKeep, "Afin Conversion Coefficient");
  static const k100a = const FDMSPrivateElement(0x50f1100a, VR.kSH, VM.k1_n, Action.kKeep, "FNC Parameters");
  static const k1020 = const FDMSPrivateElement(0x50f11020, VR.kCS, VM.k1_n, Action.kKeep, "Image Processing Modification Flag");

}
