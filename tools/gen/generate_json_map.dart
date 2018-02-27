// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

import 'src/deId_tags.dart';
import 'src/gen_utils.dart';



List vrs = new List(32);
List vrTags = new List(32);
String hex(int i) => i.toRadixString(16).padLeft(8, '0');

void main() {
  String types = '"types": ["keyword", "VR", "VM", "VM.min", "VM.max", "VM.width"]';
  List<String> sList1 = [types];
  for (int i = 0; i < deIdTags.length; i++) {
    int code = deIdTags[i];
    PTag tag = PTag.lookupCode(code);
    if (tag == null) {
      print('bad PTag: ${hex(code)}');
    } else {
      var hexTag = tag.hex;
      var keyword = tag.keyword;
      var vr = tag.vr;
      var vm = tag.vm;
      var vmVal = getVMValue(vm);
      if (vmVal.length > 2)
        print('**** $hexTag, $keyword, $vr, $vm');
      var s1 = '"$hexTag": ["k$keyword", "${vr}", "${vm}", $vmVal]';
      sList1.add(s1);
    }
  }
  var json = '{\n${sList1.join(",\n")}\n}\n';
  writeFile('json','deid_tag_map', json);
}





