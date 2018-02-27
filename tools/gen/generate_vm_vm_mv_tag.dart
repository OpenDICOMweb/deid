// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:core/core.dart';

import 'src/deid_tags.dart';

String outDirPath = "C:/odw/sdk/deid/bin/generate/output/json";
String outFilePath = '$outDirPath/vr_vm_mv_tag.json';

/// Create a JSON Map<VR, Map<VM, List<int>>>

String hex(int i) => '0x' + i.toRadixString(16).padLeft(8, '0');

/// {
///   vr: {vm: [tag, ...]
///        ...}
///   ...}
void main() {
  Map<VR, Map<VM, List<Tag>>> vrMap = {};
  List<int> mvTags = [];
  var vmMap;
  var tagList;
  var loopCount = 0;


  for (int i = 0; i < deIdTags.length; i++) {
    int code = deIdTags[i];

    Tag e = Tag.lookup(code);
    //   print('i: $i, element: $e');
    if (e == null) {
      print('bad Tag: ${dcm(code)}');
    } else {
      if (e.vm == VM.k1) continue;
      mvTags.add(code);
      loopCount++;
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
    }
  }

  mvTagsToJson(mvTags);
  if (!checkMap(loopCount, vrMap))
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
        tagList.add('"${tag.hex}"');
      });
      vmList.add('"VM.${vm.name}": [${tagList.join(', ')}]\n');
    });
    vrList.add('"$vr": {\n ${vmList.join(",\n")}}');
  });
  return '{\n${vrList.join(',\n')}}';
}

String mvTagsToJson(List<int> mvTags) {
  List<String> sList = [];
  mvTags.forEach((int code) {
    sList.add(''"${dcm(code)}"'');
  });
  var s = '[ ${sList.join(',\n')}]';
  print('mvtags = $s');
  return s;
}


void writeJson(String outFilePath, String json) {
  File outFile = new File(outFilePath);
  outFile.writeAsStringSync(json);
}

