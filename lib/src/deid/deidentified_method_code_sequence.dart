// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';
import 'deidentifier.dart';

class DeIdentificationMethodCodeSequence extends Sequence {
  final tag = kDeidentificationMethodCodeSequence;
  final method = DeIdentifier.method;
  final List<int> codes;

  DeIdentificationMethodCodeSequence(this.codes) {

  }

  SQ get element => new SQ(tag, items, lengthInBytes, hadUndefinedLength);

  Map<int, Attribute> get elements => {
    //TODO: make e1 a constant
    kPatientIdentityRemoved: new CS(kPatientIdentityRemoved, ["Yes"]),
    kDeidentificationMethod: new LO(kDeidentificationMethod, [method]),
    kDeidentificationMethodCodeSequence: new DeIdentificationMethodCodeSequence(codes)
  };
}