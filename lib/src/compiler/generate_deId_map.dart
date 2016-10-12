// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';
import 'package:deid/profile.dart';
import 'package:deid/deid.dart';

class AType {
  String name;
  int value;
  bool isConditional;
  AType(String name, int value, bool isConditional);
}

class GenerateDeIdentifier {
  String cName = "DeIdentifier";
  Profile profile;
  Trial trial;

  GenerateDeIdentifier(Profile protocol, Trial trial);

  String get code => """
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/dicom.dart';

// DICOM attributes in De-Identification Profile (and Options)
class $cName {
  final Protocol profile;
  final Trial trial;
  final Dataset ds;
  final List<String> options;

  const $cName(this.profile, this.trial, this.ds, this.options);

  static Function lookup(int tag) => map[tag];

  call(Dataset ds) {
    for(int i = 0; i < tags.length; i++)
      funtions[i]();
  }

  $map

  $tags

  $functions


}
""";

  mapEntry(String keyword, int tag, VR vr, String action) => '''
      $keyword:
''';
 
  String genRemove(String keyword, int tag, VR vr, [AType aType, List values]) {
    DEDict e = DEDict.lookup(tag);
    String code = "";
    if (e is SQ)
      code += '(Dataset ds) {}';
    (profile.keep(tag)) ? "" : '$keyword: ds.remove($tag);';
  }

  String genReplaceUid(String keyword, int tag, VR vr, [AType aType, List values]) {

  }

  String genZeroOrDummy(String keyword, int tag, VR vr, [AType aType, List values]) {

  }

  String genDummy(String keyword, int tag, VR vr, [AType aType, List values]) {

  }

  String genKeep(String keyword, int tag, VR vr, [AType aType, List values]) {

  }

  String genClean(String keyword, int tag, VR vr, [AType aType, List values]) {

  }

  String genZorD(String keyword, int tag, VR vr, [AType aType, List values]) {

  }
  String genXorZ(String keyword, int tag, VR vr, [AType aType, List values]) {

  }
  String genXorD(String keyword, int tag, VR vr, [AType aType, List values]) {

  }
  String genXorZorD(String keyword, int tag, VR vr, [AType aType, List values]) {

  }
  String genXorZorU(String keyword, int tag, VR vr, [AType aType, List values]) {

  }
    

  static  Map<String, Function> actionMap = const {
      "X": genRemove,
      "U": genReplaceUid,
      "Z": genZeroOrDummy,
      "D": genDummy,
      "K": genKeep,
      "C": genClean,
      "ZorD": genZorD,
      "XorZ": genXorZ,
      "XorD": genXorD,
      "XorZorD": genXorZorD,
      "XorZorU": genXorZorU
    };
}

