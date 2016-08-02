// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library constant_class_table;

import 'dart:convert';
import 'dart:io';

class DeIdClassTable {
  static const int   KEYWORD_OFFSET = 0;
  static const int   TAG_OFFSET = 1;
  static const int   kActionOffset = 4;
  String             className;
  int                fieldCount;
  List<String>       fieldTypes;
  List<String>       fieldNames;
  List<List<String>> values;

  DeIdClassTable(this.className, this.fieldCount, this.fieldTypes, this.fieldNames, this.values);

  String commaSeparatedString(String prefix, List args, String suffix, {last: false}) {
    String s = "";
    int end = args.length - 1;
    for(int i = 0; i < end; i++) {
      s += '$prefix${args[i]}$suffix';
    }
    s += '$prefix${args[end]}';
    s += (last == false) ? "" : suffix;
    return s;
  }

  String get fieldsString {
    String s = "";
    for(int i = 0; i < fieldCount; i++) {
      s += "  final ${fieldTypes[i]} ${fieldNames[i]};\n";
    }
    return s;
  }

  String get constructorString {
    String args = "";
    //int end = fieldCount - 1;
    args = commaSeparatedString('this.', fieldNames, ", ");
    return '  const $className($args);';
  }

  String tagToDcmFmt(String tag) {
    String s = '(' + tag.substring(2,6) + ',' + tag.substring(6, 10) + ')';
    return s;
  }

  // Converts any tags of the form 0x60xx1234 to 0x60001234
  String fixTag(String tag) {
    String tmp = "0x";
    for(int i = 2; i < tag.length; i++) {
      if (tag[i] == 'x') {
        tmp += '0';
      } else {
        tmp += tag[i];
      }
    }
    return tmp;
  }

  // Create a [String] that corresponds to all the [const] members of the class
  String get valuesString {
    String valuesString = "";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[KEYWORD_OFFSET]}';
      keyword = keyword.replaceAll('/', '_');
      keyword = keyword.replaceAll('-', '_');
      String tag = v[TAG_OFFSET];
      String comment = tagToDcmFmt(tag);
      v[TAG_OFFSET] = fixTag(tag);
      String args = commaSeparatedString("", v.sublist(1), ", ");
      valuesString += '  //$comment\n  static const $keyword = const $className'
          '("$keyword", $args);'
          '\n';
    }
    return valuesString;
  }

  String get lookupTable {
    var s = "static const Map<int, DeId> tagToDeId = const {\n";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[KEYWORD_OFFSET]}';
      String tag = v[TAG_OFFSET];
      s += '    $tag: $keyword,\n';
    }
    return s += '  };\n';
  }

  String get deIdClassString => """
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library odw.sdk.deid.${className.toLowerCase()};

// *** This file generated by '../deid/generate_class.dart' ***
// ----------------------------------------------------------

import 'package:deid/src/deid_action.dart';

// DICOM attributes in De-Identification Profile (and Options)
class $className {
$fieldsString
$constructorString

static BasicProfile lookup(int tag) => tagToDeId[tag];
  
$valuesString
$lookupTable
}
""";

  // Create a [String] that corresponds to all the [const] members of the class
  String get basicProfileValues {
    String valuesString = "";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[KEYWORD_OFFSET]}';
      String tag = fixTag(v[TAG_OFFSET]);
      String action = v[kActionOffset];
      valuesString +=
      '  static const k$keyword = const BasicProfile($tag, "$keyword", $action);\n';
    }
    return valuesString;
  }

  String get basicProfileLookupTable {
    var s = "static const Map<int, BasicProfile> tagToBasicProfile = const {\n";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[KEYWORD_OFFSET]}';
      String tag = v[TAG_OFFSET];
      s += '    $tag: k$keyword,\n';
    }
    return s += '  };\n';
  }

  String get basicProfile => '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.
library odw.sdk.deid.basic_profile;

// *** This file generated by '../deid/generate_basic_profile.dart' ***
// ----------------------------------------------------------

import 'package:deid/src/deid_action.dart';

class BasicProfile {
  final int tag;
  final String keyword;
  final DeIdAction action;

  const BasicProfile(this.tag, this.keyword, this.action);

  static lookup(int tag) => tagToBasicProfile[tag];

  $basicProfileValues

  $basicProfileLookupTable

}
  ''';

  static DeIdClassTable read(String filename) {
    File file = new File(filename);
    String s = file.readAsStringSync();
    Map m = JSON.decode(s);
    return new DeIdClassTable(m["className"],
                              m["fieldCount"],
                              m["fieldTypes"],
                              m["fieldNames"],
                              m["values"]);

  }

  static void write(File file, DeIdClassTable table) {
    String s = JSON.encode(table);
    file.writeAsStringSync(s);
  }

}