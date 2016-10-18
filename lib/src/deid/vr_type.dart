// Copyright (c) 2016: Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';


//TODO: All VR Classes should have a static validator(List<type>);
//TODO: move this to the Element Library
class VRClass {

  Map<VR, Element> constructors = {
    // String VRs
    VR.kAE: AE,
    VR.kAS: AS,
    //  VR.kBR:
    VR.kCS: CS,
    VR.kDA: DA,
    VR.kDS: DS,
    VR.kDT: DT,
    VR.kIS:IS,
    VR.kLO: LO,
    VR.kLT: LT,
    VR.kPN: PN,
    VR.kSH: SH,
    VR.kST: ST,
    VR.kTM: TM,
    VR.kUC: UC,
    VR.kUI: UI,
    VR.kUR: UR,
    VR.kUT: UT,

    // Integers
    VR.kAT: AT,
    VR.kOB: OB,
    VR.kOW: OW,
    VR.kSL: SL,
    VR.kSS: SS,
    VR.kUL: UL,
    VR.kUS: US,

    //Floats
    VR.kFD: FD,
    VR.kFL: FL,
    VR.kOD: OD,
    VR.kOF: OF
  };

  Map<VR, Element> types = {
    // String VRs
    VR.kAE: AE,
    VR.kAS: AS,
    //  VR.kBR:
    VR.kCS: CS,
    VR.kDA: DA,
    VR.kDS: DS,
    VR.kDT: DT,
    VR.kIS:IS,
    VR.kLO: LO,
    VR.kLT: LT,
    VR.kPN: PN,
    VR.kSH: SH,
    VR.kST: ST,
    VR.kTM: TM,
    VR.kUC: UC,
    VR.kUI: UI,
    VR.kUR: UR,
    VR.kUT: UT,

    // Integers
    VR.kAT: "uint32",
    VR.kOB: "uint8",
    VR.kOW: "uint16",
    VR.kSL: "int32",
    VR.kSS: "int16",
    VR.kUL: "uint32",
    VR.kUS: "uint16",

    //Floats
    VR.kFD: "float64",
    VR.kFL: "float32",
    VR.kOD: "float64",
    VR.kOF: "float32"
  };
}


// static const List<VR> byteVRs = const [
//   VR.kAT: AT, VR.kFD: FD,  VR.kFL: FL, VR.kOB: OB, VR.kOD: OD, VR.kOF: OF,
//   VR.kOW: OW, VR.kSL: SL, VR.kSS: SS, VR.kUL: UL, VR.kUN: UN, VR.kUS: US,

