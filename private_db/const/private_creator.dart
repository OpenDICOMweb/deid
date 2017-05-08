// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

import 'private_element.dart';

class PrivateCreator {
  final String id;
  // Default private group
  final int group;
  final String manufacturerId;
  final Modality modality;
  final String description;
  final Map<int, PrivateElement> elements;

  const PrivateCreator(this.id, this.manufacturerId, this.modality,
      this.description, this.group, this.elements);

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
    for(PrivateElement e in elements.values)
      out += '"k${e.element}": ${e.toJson(id)},\n';
    return out += "}\n";
  }

  String toString() => "PCreator($id, $group, $manufacturerId, $modality, $description)";
}




