// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
import 'package:deid/src/deid/other/deidentifier.dart';
import 'package:tag/tag.dart';

class DeIdMethod {
  final Tag tag = PTag.kDeidentificationMethodCodeSequence;
  final DeIdmethod = DeIdentifier.method;
  final List<String> codes;

  DeIdMethod(this.codes) {
    if (! tag.hasValidValues(codes))
      throw "Invalid code in List";
  }

  Map<int, Element> get elements => {
    //TODO: make e1 a constant
    kPatientIdentityRemoved: new CS(PTag.kPatientIdentityRemoved, ["Yes"]),
    kDeidentificationMethod: new LO(PTag.kDeidentificationMethod, codes),
    //TODO: figure out whether deidentificationMethod or deidMethodCodeSeq is preferrable.
   // kDeidentificationMethodCodeSequence: new DeIdentificationMethodCodeSequence(codes)
  };

  String get values => codes.map((code) => code.toString()).toList().join('\\');

  //TODO: once CodeSequenceMacro is available
  Map<int, Element> get sequence => {

  };

}
