// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/base.dart';
import 'deid_tags.dart';

String classString(String members) => '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/base.dart';

class DeIdElement {
  final int tag;
  final String keyword;
  final VR vr;
  final VM vm;
  final bool isSingleton;

  const DeIdElement(this.tag, this.keyword, this.vr, this.vm, this.isSingleton);

$members

}
''';

String genMember(Element e) {
  var tag = intToHex(e.code, 8);
  var keyword = e.keyword;
  var vr = e.vr;
  var vm = e.vm;
  return '  static const k$keyword '
      '= const DeIdElement($tag, "k$keyword", VR.k${vr.name}, VM.${vm.name}, ${vm.isSingleton});';
}


String outDirPath = "C:/odw/sdk/deidentification/lib/src/generate/output";

void writeFile(String dart) {
  // Write Dart
  File f2 = new File('$outDirPath/deid_class.dart');
  f2.writeAsStringSync(dart);
}

void main() {
  int count = deIdTags.length;
  List<String> members = new List(count);

  for (int i = 0; i < deIdTags.length; i++) {
    int tag = deIdTags[i];
    Element e = Element.lookup(tag);
    if (e == null) {
      print('bad Tag: ${tagToHex(tag)}');
    } else {
      members[i] =genMember(e);
    }
  }

  var s = '${members.join('\n')}';
  writeFile(classString(s));

}
