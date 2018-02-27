// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

import 'dart_arrays/private_tag_array.dart';

void main(List<String> args) {
  var creators = "";
  var data = "";
  var manufacturerId;
  var modality;
  var creatorId;

  for(int i = 0; i < privateTags.length; i++) {
    var row = privateTags[i];
    if (row[0] == "@") {
      manufacturerId = row[1].trim();
      modality = row[2].trim();
  //    print('row: $i, id($manufacturerId), modality($modality)');
      var creator = privateTags[i+1];
      creatorId = creator[5].trim();
  //    print('creatorId: $creatorId');
      var tag = creator[0];
      var description = creator[4].trim();
  //    print('creatorId($creatorId), modality($modality)');

      var group = Tag.toGroup(tag);
      creators += 'static const k${creatorId} = const PrivateCreator("$creatorId", '
          '$group, "$manufacturerId", "$modality, "$description");\n';
      data += 'Creator: "$creatorId", group: $group, Manufacturer: "$manufacturerId",'
          ' Modality: "$modality", "$description"';
    } else {
      var code = row[0];
      var vr = row[1];
      var vm = row[2].replaceAll("-", "_");
      var action = row[3];
      var desc = row[4];
      var id = row[5].trim();
      if (id != creatorId) {
        creatorId = id;
        creators += 'static const k${Tag.toHex(code)} = \n    const PrivateCreator'
            '("$creatorId", ${Tag.toHex(code)}, "$manufacturerId", "$modality, "$desc");\n';
      }

      var name = '${creatorId}PrivateElement';
      data += 'static const k${Tag.toHex(code)} =\n    const $name(${Tag.toHex(code)}, '
          'VR.k$vr, VM.k$vm, Action.$action, "$desc");\n';
    }
  }
  print(creators);
  print(data);
}