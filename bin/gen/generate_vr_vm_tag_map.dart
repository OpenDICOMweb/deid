// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/new_base.dart';
import 'package:deid/deid.dart';
import 'src/gen_utils.dart';


/// Create a JSON Map<VR, Map<VM, List<int>>>

void main() {
  Map<VR, Map<VM, List<Element>>> vrMap = {};
  var vmMap;
  var eList;

  List<int> tagList = deIdTags.toList(growable: false);

  for (int i = 0; i < tagList.length; i++) {
    int code = tagList[i];
    //print('tag: ${toHexString(code)}');

    Element e = Element.lookup(code);
    //   print('i: $i, element: $e');
    if (e == null) {
      print('bad Tag 1: ${tagToHex(code)}');
    } else {
    //  print('1: $e');
      VR vr = e.vr;
      VM vm = e.vm;
      vmMap = vrMap[vr];

     // print('1a: $vm vrMap: $vrMap, eList: $eList');
      if (vmMap == null) {
      //  print('1b: vrMap: $vrMap, eList: $eList');
        vrMap[vr] = {vm: [e]};
      } else if (vmMap[vm] == null) {
          vmMap[vm] = [e];
      } else {
      // print('1c: $vm vrMap: $vrMap, eList: $eList');
        vmMap[vm].add(e);
      }
    //  print('2: vr: $vrMap');
    }
  }

  if (!checkMap(tagList.length, vrMap))
    print('***** wrong number of tags in map');
  var json = vrMapToJson(vrMap);
  writeFile("json", 'vr_mv_tag.dart', json);
}

bool checkMap(int tagCount, Map vrMap) {
  int count = 0;
  for (Map vmMap in vrMap.values)
    for (List list in vmMap.values)
      count += list.length;
  print('tags = $tagCount, mapCount= $count');
  return tagCount == count;
}

String vrMapToJson(Map<VR, Map<VM, List<Element>>> vrMap) {
  var vrList = <String>[];
  vrMap.forEach((VR vr, Map<VM, List<Element>> vmMap) {
    var vmList = <String>[];
    vmMap.forEach((VM vm, List<Element> elements) {
      var eList = <String>[];
      elements.forEach((Element e) {
        DeIdElement de = DeIdElement.lookup(e.code);
        BasicProfile bp = BasicProfile.lookup(e.code);
        //print('de: $de');
        if (de == null) {
          print('bad Tag 2: ${tagToHex(e.code)}');
          print('vmMap: $vmMap');
        } else if (bp == null) {
          print('bad Tag 3: ${tagToHex(e.code)}');
          print('vmMap: $vmMap');

        } else {
          // print('tag: ${e.code.hex}');
          eList.add('"${e.keyword}": ["${e.hex}", "${bp.keyword}"]');
        }
      });

      vmList.add('\n    "VM.${vm.name}": {${eList.join(', ')}}\n');
    });
    vrList.add('\n  "$vr": {\n ${vmList.join(",\n")}\n}');
  });

  return '{\n${vrList.join(',\n')}\n}';
}

void writeJson(String outPath, String json) {
  File outFile = new File(outPath);
  outFile.writeAsStringSync(json);
}
