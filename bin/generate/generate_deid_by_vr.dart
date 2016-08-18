// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/dicom.dart';
import 'package:core/new_base.dart';

import 'src/deid_tags.dart';

List vrs = new List(32);
List<List<Element>> vrElements = new List(32);
String hex(int i) => '0x' + i.toRadixString(16).padLeft(8, '0');

void main() {

  for (int i = 0; i < deIdTags.length; i++) {
    int tag = deIdTags[i];
    Element e = Element.lookup(tag);
    if (e == null) {
      print('bad Tag: ${hex(tag)}');
    } else {
      var i = e.vr.index;
      if (vrs[i] == null) {
        vrs[i] = e.vr;
        vrElements[i] = [e];
      } else {
        vrElements[i].add(e);
      }
    }
  }

  var total = 0;
  for (int i = 0; i < vrElements.length; i++) {
    if (vrElements[i] != null) total += vrElements[i].length;
  }

  //print(toByVRJson(vrs, vrElements));
  writeJson(vrs, vrElements);

}

String toByVRJson(List vrs, List<List<Element>> vrElements) {
  var s = '{\n';
  var vrList = [];
  for (int i = 0; i < vrElements.length; i++) {
    if ((vrs[i] == null) || (vrElements[i] == null)) continue;
    List<String> elts = [];
    vrElements[i].forEach((Element e) {
      if (e != null)
        elts.add('"${hex(e.code)}": "${e.keyword}"');
    });
    String map = '{\n${elts.join(',\n')}\n}';
    vrList.add('"${vrs[i].name}": $map');
  }
  s += vrList.join(',\n');
  return s += '\n}';
}

String outDirPath = "C:/odw/sdk/deid/bin/generate/output";

void writeJson(List vrs, List<List<Element>> vrTags) {
  File outFile = new File('$outDirPath/deid_by_vr.json');
  outFile.writeAsStringSync(toByVRJson(vrs, vrElements));
}
