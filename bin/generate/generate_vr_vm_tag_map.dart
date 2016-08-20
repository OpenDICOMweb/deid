// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/dicom.dart';
import 'package:core/new_base.dart';

import 'src/deid_tags.dart';

/// Create a JSON Map<VR, Map<VM, List<int>>>

String outDirPath = "C:/odw/sdk/deid/bin/generate/output/json";
String outFilePath = '$outDirPath/vr_vm_tag.json';

//String hex(int i) => '0x' + i.toRadixString(16).padLeft(8, '0');

/// {
///   vr: {vm: [tag, ...]
///        ...}
///   ...}
void main() {
  Map<VR, Map<VM, List<Tag>>> vrMap = {};
  var vmMap;
  var tagList;

  for (int i = 0; i < deIdTags.length; i++) {
    int code = deIdTags[i];

    Element e = Element.lookup(code);
    //   print('i: $i, element: $e');
    if (e == null) {
      print('bad Tag: ${tagToHex(code)}');
    } else {
      print('1: $e');
      Tag tag = Tag.lookup(e.code);
      VR vr = e.vr;
      VM vm = e.vm;
      vmMap = vrMap[vr];

      print('1a: $vm vrMap: $vrMap, tagList: $tagList');
      if (vmMap == null) {
        print('1b: vrMap: $vrMap, tagList: $tagList');
        vrMap[vr] = {vm: [tag]};
      } else if (vmMap[vm] == null) {
          vmMap[vm] = [tag];
      } else {
        print('1c: $vm vrMap: $vrMap, tagList: $tagList');
        vmMap[vm].add(tag);
      }
      print('2: vr: $vrMap');
    }
  }

  if (!checkMap(deIdTags.length, vrMap))
    print('***** wrong number of tags in map');
  var json = vrMapToJson(vrMap);
  writeJson(outFilePath, json);
}

bool checkMap(int tagCount, Map vrMap) {
  int count = 0;
  for (Map vmMap in vrMap.values)
    for (List list in vmMap.values)
      count += list.length;
  print('tags = $tagCount, mapCount= $count');
  return tagCount == count;
}

String vrMapToJson(Map<VR, Map<VM, List<Tag>>> vrMap) {
  var vrList = <String>[];
  vrMap.forEach((VR vr, Map<VM, List<Tag>> vmMap) {
    var vmList = <String>[];
    vmMap.forEach((VM vm, List<Tag> tags) {
      var tagList = <String>[];
      tags.forEach((Tag tag) {
       // print('tag: ${tag.hex}');
        tagList.add('"${tag.hex}"');
      });
      //print('tagList: $tagList');
      vmList.add('"VM.${vm.name}": [${tagList.join(', ')}]\n');
    });
    vrList.add('"$vr": {\n ${vmList.join(",\n")}}');
  });

  return '{\n${vrList.join(',\n')}}';
}

void writeJson(String outPath, String json) {
  File outFile = new File(outPath);
  outFile.writeAsStringSync(json);
}
