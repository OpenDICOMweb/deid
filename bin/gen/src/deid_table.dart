// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/base.dart';
import 'deid_tags.dart';
import 'class_utils.dart';
import 'gen_utils.dart';

class DeIdTable {
  static const keywordOffset = 0;
  static const tagOffset = 1;
  List<int> deIdTags;

  DeIdTable(this.deIdTags);

  int get count => deIdTags.length;

  // Create a [String] that corresponds to all the [const] members of the class
  String get members {
    int count = deIdTags.length;
    List<String> members = new List(count);

    for (int i = 0; i < deIdTags.length; i++) {
      int tag = deIdTags[i];
      Element e = Element.lookup(tag);
      if (e == null) {
        print('bad Tag: ${tagToHex(tag)}');
      } else {
        var tag = intToHex(e.code, 8);
        var keyword = e.keyword;
        var vr = 'VR.k${e.vr.name}';
        var vm = e.vm;
        var single = vm.isSingleton;
        members[i] =
        '  static const k$keyword =\n'
            '    const DeIdElement($tag, "$keyword", $vr, $vm, $single);';
      }
    }
    return members.join('\n');
  }

  String get map {
    List<String> kvPairs = [];
    List<String> keyList = [];
    List<String> valueList = [];

    for (int i = 0; i < deIdTags.length; i++) {
      int tag = deIdTags[i];
      Element e = Element.lookup(tag);
      if (e == null) {
        print('bad Tag: ${tagToHex(tag)}');
      } else {
        var tag = intToHex(e.code, 8);
        var keyword = e.keyword;
        kvPairs.add('    $tag: k$keyword');
        keyList.add('    $tag');
        valueList.add('    k$keyword');
      }
    }
    var kvString = kvPairs.join(',\n');
    var keys = keyList.join(',\n');
    var values = valueList.join(',\n');
    return '  static const map = const {\n$kvString\n  };\n'
        '\n  static const List keys = const [\n$keys\n  ];\n'
        '\n  static const List values = const [\n$values\n  ];\n';
  }

  String get code => '''
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

  static DeIdElement lookup(int tag) => map[tag];

$members

$map

}
''';
}


