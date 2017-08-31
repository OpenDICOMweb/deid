// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';

import 'src/deid_tags.dart';
import 'src/gen_utils.dart';

/// Create a JSON object of [DeId] [Tag]s by [VR] and [VM]

List vrs = new List(32);
List<List<Tag>> vrElements = new List(32);
String hex(int i) => '0x' + i.toRadixString(16).padLeft(8, '0');

void main() {

  for (int i = 0; i < deIdTags.length; i++) {
    int tag = deIdTags[i];
    Tag e = Tag.lookup(tag);
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
  checkCount(vrElements);
  String json = toJson(vrs, vrElements);
  writeFile('json','deid_by_vr', json);
}

void checkCount(List<List<Tag>> vrElements) {
  var tagCount = deIdTags.length;
  var total = 0;
  for (int i = 0; i < vrElements.length; i++) {
    if (vrElements[i] != null) total += vrElements[i].length;
  }
  if (tagCount != total) {
    print("** Tag count error: DeIdTag= $tagCount, output tags: $total");
  } else {
    print("All Tags present: DeIdTag= $tagCount, output tags: $total");
  }
}

String toJson(List vrs, List<List<Tag>> vrElements) {
  var s = '{\n';
  var vrList = [];
  for (int i = 0; i < vrElements.length; i++) {
    if ((vrs[i] == null) || (vrElements[i] == null)) continue;
    List<String> elts = [];
    vrElements[i].forEach((Tag e) {
      if (e != null)
        elts.add('"${hex(e.code)}": "${e.keyword}"');
    });
    String map = '{\n${elts.join(',\n')}\n}';
    vrList.add('"${vrs[i].name}": $map');
  }
  s += vrList.join(',\n');
  return s += '\n}';
}

