// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';

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

String getFields(List<String> fieldTypes, List<String> fieldNames) {
  if (fieldTypes.length != fieldNames.length)
    throw "The length of fieldTypes and fieldNames must be the same";
  List<String> fields = [];
  for(int i = 0; i < fieldTypes.length; i++)
    fields.add('  final ${fieldTypes[i]} ${fieldNames[i]};\n');
    return fields.join();
}

String getConstructor(String className, List<String> fieldNames) {
  List args = [];
  fieldNames.forEach((String name) => args.add('this.$name'));
  return '  const $className(${args.join(', ')});';
}

String dcmStringToHex(String tag) {
  String s = '(' + tag.substring(2,6) + ',' + tag.substring(6, 10) + ')';
  return s;
}

/// Create a [String] that corresponds to all the [const] members of the class
String getMembers(String cName, List<String> fieldTypes, List<List<String>> memberData, int index) {
  List<String> members = [];
 // print('rows: $memberData');
  for(int i = 0; i < memberData.length; i++) {
    List row = memberData[i];
    var action = row[index];
    if (action == "null")
      continue;
    var keyword = row[0];
    var tag = row[1];
    Tag e = Tag.lookup(int.parse(tag));
    VR vr = e.vr;
    members.add('  static const k$keyword =\n'
                    '    const $cName("$keyword", $tag, VR.k${vr.name}, "$action");');
  }
  return members.join('\n');
}

String getMap(List rows, int keyOffset, int valueOffset, int index) {
  var kvPairs = [];
  for(int i = 0; i < rows.length; i++) {
    List row = rows[i];
    var action = row[index];
    if (action == "null")
      continue;
    var key = row[keyOffset];
  //  print('key: $key');
    var value = row[valueOffset];
    kvPairs.add('  $key: k$value');
  }
  var s = '{\n${kvPairs.join(',\n')}\n  };';
 // print('members: $s');
  return s;
}

String getActionTagsList(List rows, int tagOffset, int actionOffset, String actionNames) {
  var values = [];
  for(int i = 0; i < rows.length; i++) {
    var row = rows[i];
    var action = row[actionOffset];
    if (actionNames.contains(action)) {
      var tag = row[tagOffset];
      values.add('  $tag');
    }
  }
  return '[\n${values.join(',\n')}\n  ];';
}

String getList(List rows, int tagOffset, int actionOffset) {
  var values = [];
  for(int i = 0; i < rows.length; i++) {
    var row = rows[i];
    var action = row[actionOffset];
    if (action == "null")
      continue;
    var tag = row[tagOffset];
    values.add('  $tag');
  }
  return '[\n${values.join(',\n')}\n  ];';
}


