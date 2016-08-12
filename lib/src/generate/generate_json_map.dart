// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/dicom.dart';

import 'deId_tags.dart';

List vrs = new List(32);
List vrTags = new List(32);
String hex(int i) => i.toRadixString(16).padLeft(8, '0');

void main() {
  String types = '"types": ["keyword", "VR", "VM", "VM.min", "VM.max", "VM.width"]';
  List<String> sList1 = [types];
  for (int i = 0; i < deIdTags.length; i++) {
    int tag = deIdTags[i];
    Element e = Element.lookup(tag);
    if (e == null) {
      print('bad Tag: ${hex(tag)}');
    } else {
      var hexTag = tagToHex(tag);
      var keyword = e.keyword;
      var vm = e.vm;
      var vmVal = getVMValue(vm);
      var vr = e.vr;
      var s1 = '"$hexTag": ["k$keyword", "${vr.name}", "${vm}", $vmVal]';
      sList1.add(s1);
    }
  }
  var json = '{\n${sList1.join(",\n")}\n}\n';
  writeJsonTagMap(json);
}

String getVMValue(VM vm) {
  var min = vm.min;
  var max = vm.max;
  var width = vm.width;
  if (min != 1 || width != 1) throw "min or width not 1";
  if (max == 1) return "1";
  if (max == -1) return "-1";
  print("*************** $vm");
  return '[$min, $max, $width]';
}

String outDirPath = "C:/odw/sdk/deidentification/lib/src/generate/output/json";

/// Write JSON map to file
void writeJsonTagMap(String json) {
  File f1 = new File('$outDirPath/deid_json_map.json');
  f1.writeAsStringSync(json);
}



