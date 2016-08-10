// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/dicom.dart';
import 'package:core/new_base.dart';
import 'package:deidentification/deidentification.dart';

List vrs = new List(32);
List vrTags = new List(32);
String hex(int i) => i.toRadixString(16).padLeft(8, '0');

void main() {

  for (int i = 0; i < deIdTags.length; i++) {
    int tag = deIdTags[i];
    Element e = Element.lookup(tag);
    if (e == null) {
      print('bad Tag: ${hex(tag)}');
    } else {
      var i = e.vr.index;
     // print("${e.vr}, Index= $i");
      if (vrTags[i] == null) {
        if (vrs[i] == null)
          vrs[i] = e.vr;
        vrTags[i] = [e.code];
      }
      vrTags[i].add(e.code);
      //print('${hex(tag)}: ${e.vr}: ${vrTags[i]}');
    }
  }

  var total = 0;
  for (int i = 0; i < vrTags.length; i++) {
    if (vrTags[i] != null) total += vrTags[i].length;
  }
  print('deIdTags.length: ${deIdTags.length}, vrTags.total: $total'  );

  for (int i = 0; i < vrTags.length; i++) {
    if (vrTags[i] != null)
      print('$i(${vrTags[i].length}): ${vrTags[i]}');
  }
  print(toByVRJson(vrs, vrTags));
  writeJson(vrs, vrTags);


  // print('${hex(tag)}: ${Element.lookup(tag)}');
}

String toByVRJson(List vrs, List<List<int>> vrTags) {
  var s = '{\n';
  var vrList = [];
  for (int i = 0; i < vrTags.length; i++) {
    if ((vrs[i] == null) || (vrTags[i].length == 0)) continue;
    vrList.add('"${vrs[i].name}": [${vrTags[i].length}, ${vrTags[i].join(', ')}]');
  }
  s += vrList.join(',\n');
  return s += '\n}';
}

String outDirPath = "C:/odw/sdk/deidentification/lib/src/generate/output";

void writeJson(List vrs, List<List<int>> vrTags) {
  File outFile = new File('$outDirPath/deid_by_vr.json');
  outFile.writeAsStringSync(toByVRJson(vrs, vrTags));
}
