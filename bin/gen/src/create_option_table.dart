// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:convert';
import 'dart:io';

//TODO: merge with 'create_class_table.dart'

int lookupOptionOffset(String optionName) => optionOffset[optionName];

Map<String, int> optionOffset = {
 // "keyword": 0,
 // "tag": 1,
 // "isRetired": 2,
 // "InStdCompIOD": 3,
  "basicProfile": 4,
  "RetainSafePrivate": 5,
  "RetainUids": 6,
  "RetainDeviceIdentity": 7,
  "RetainPatientCharacteristics": 8,
  "RetainLongFullDates": 9,
  "RetainLongModifiedDates": 10,
  "CleanDescriptors": 11,
  "CleanStructuredContent": 12,
  "CleanGraphics": 13
};

class ProfileOptionTable {
  static const int   kKeywordOffset = 0;
  static const int   kTagOffset = 1;
  static const int   kActionOffset = 4;
  String             className;
  int                fieldCount;
  List<String>       fieldTypes;
  List<String>       fieldNames;
  List<List<String>> values;

  ProfileOptionTable(this.className, this.fieldCount, this.fieldTypes, this.fieldNames, this.values);

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
      String keyword = '${v[kKeywordOffset]}';
      keyword = keyword.replaceAll('/', '_');
      keyword = keyword.replaceAll('-', '_');
      String tag = v[kTagOffset];
      String comment = tagToDcmFmt(tag);
      v[kTagOffset] = fixTag(tag);
      String args = commaSeparatedString("", v.sublist(1), ", ");
      valuesString += '  //$comment\n  static const $keyword = const $className'
          '("$keyword", $args);'
          '\n';
    }
    return valuesString;
  }

  String lookupTable(String optionName) {
    var s = "static const Map<int, ${optionName}Option> tagToOption = const {\n";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[kKeywordOffset]}';
      String tag = v[kTagOffset];
      s += '    $tag: $keyword,\n';
    }
    return s += '  };\n';
  }

  // Create a [String] that corresponds to all the [const] members of the class
  String profileOptionValues(String optionName) {
    int optionOffset = lookupOptionOffset(optionName);
    String valuesString = "";
    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[kKeywordOffset]}';
      String tag = fixTag(v[kTagOffset]);
      String action = v[optionOffset];
      if (action != "null") {
        valuesString +=
        '  static const k$keyword = const ${optionName}Option($tag, "$keyword", $action);\n';
      }
    }
    return valuesString;
  }

  String  profileOptionTables(String optionName) {
    int optionOffset = lookupOptionOffset(optionName);
    List<String> map = [];
    List<String> mapKeys = [];
    List<String> mapValues = [];

    for(int i = 0; i < values.length; i++) {
      List v = values[i];
      String keyword = '${v[kKeywordOffset]}';
      String tag = v[kTagOffset];
      String action = v[optionOffset];

      if (action != "null") {
        map.add('$tag: k$keyword');
        mapKeys.add('$tag');
        mapValues.add('k$keyword');
      }
    }
    var indent = "".padRight(4);
    var lines = map.join(',\n$indent');
    var s = '  static const Map<int, String> map = const {\n$indent$lines};\n\n';
    lines = mapKeys.join(",\n$indent");
    s += '  static const List<int> keys = const [\n$indent$lines];\n\n';
    lines = mapValues.join(",\n$indent");
    s += '  static const List<String> values = const [\n$indent$lines];\n\n';
    return s;
  }

  String profileOption(String optionName) => '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This file generated by '../bin/generate/generate_basic_profile.dart' ***
// ----------------------------------------------------------

import 'package:deid/src/deid/action.dart';

class ${optionName}Option {
  final int tag;
  final String keyword;
  final Action action;

  const ${optionName}Option(this.tag, this.keyword, this.action);

  static lookup(int tag) => map[tag];

${profileOptionValues(optionName)}

${profileOptionTables(optionName)}

}
  ''';

  static ProfileOptionTable read(String filename) {
    File file = new File(filename);
    String s = file.readAsStringSync();
    Map m = JSON.decode(s);
    return new ProfileOptionTable(m["className"],
                                  m["fieldCount"],
                                  m["fieldTypes"],
                                  m["fieldNames"],
                                  m["values"]);

  }

  static void write(File file, ProfileOptionTable table) {
    String s = JSON.encode(table);
    file.writeAsStringSync(s);
  }

}