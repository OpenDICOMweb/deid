// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:convert';

import 'class_utils.dart';
import 'gen_deid_utils.dart';
import 'gen_utils.dart';

class ProfileTable {
  static const keywordOffset = 0;
  static const tagOffset = 1;
  String cName;
  List<String> fieldTypes;
  List<String> fieldNames;
  List<List<String>> memberData;
  List<String> badRows;
  int oIndex = 4;

  ProfileTable(this.cName, this.fieldTypes, this.fieldNames, this.memberData, this.badRows);

  // Create a [String] that corresponds to all the [const] members of the class
  String get members => getMembers(cName, fieldTypes, memberData, oIndex);

  String get map =>
      'static const Map<int, $cName> map = '
          'const ${getMap(memberData, tagOffset, keywordOffset, oIndex)}';

  String get tags =>
      'static const List<int> tags = const ${getList(memberData, tagOffset, oIndex)}';

  String get code => """
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/base.dart';
//import 'package:deid/src/deid/action.dart';

// DICOM attributes in De-Identification Profile (and Options)
class $cName {
  final String keyword;
  final int tag;
  final VR vr;
  final String action;

  const $cName(this.keyword, this.tag, this.vr, this.action);

  static $cName lookup(int tag) => map[tag];

$functionMap

$map

$tags
}
""";

  void write(String type, String option, int index) {
    cName = option;
    oIndex = index;
    var fName = optionFilename[option];
    writeFile(type, fName, code);
  }

  static ProfileTable read(String name) {
    String json = readFileAsString("json", name);
    Map m = JSON.decode(json);
    return new ProfileTable(m["className"],
                                m["fieldTypes"],
                                m["fieldNames"],
                                m["memberData"],
                                m["badRows"]);
  }
}



