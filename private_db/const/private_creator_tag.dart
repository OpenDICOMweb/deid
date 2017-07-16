// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';

import 'private_data_tag.dart';

class PrivateCreatorTag {
  final String id;
  // Default private group
  final int group;
  final String manufacturerId;
  final Modality modality;
  final String description;
  final Map<int, PrivateDataTag> pDataTags;

  const PrivateCreatorTag(this.id, this.manufacturerId, this.modality,
      this.description, this.group, this.pDataTags);

  String get json => '''
{
  "name": "$id",
  "manufacturerId": "$manufacturerId",
  "modality": $modality,
  "elements": $elementsJson
}
''';

  String get elementsJson {
    var out = "{\n";
    for(PrivateDataTag e in pDataTags.values)
      out += '"k${e.elt}": "${e.id}",\n';
    return out += "}\n";
  }

  @override
  String toString() => "PCreator($id, $group, $manufacturerId, $modality, $description)";
}




