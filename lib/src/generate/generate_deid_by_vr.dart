// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.


import 'package:core/core.dart';
import 'package:deid/deidentification.dart';

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
      print("${e.vr}, Index= $i");
      if (vrTags[i] == null) {
        if (vrs[i] == null)
          vrs[i] = e.vr;
        vrTags[i] = [];
      }
      var list = vrTags[i];
      list.add(e);
      //print('${hex(tag)}: ${e.vr}');
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

  print(toJson(vrs, vrTags));

  // print('${hex(tag)}: ${Element.lookup(tag)}');
}

String toJson(List vrs, List vrTags) {
  var s = '{\n';
  for (int i = 0; i < vrTags.length; i++) {
    if (vrs[i] == null) continue;
    List<Element> elt = vrTags[i];
      s += '${vrs[i]}: [${Tag.hex(elt.code)}\n';
  }
  return s += '}\n';
}