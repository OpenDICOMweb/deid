// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
import 'private_creator.dart';

class Manufacturer {
  static Map<String, Manufacturer> map = {};
  final String id;
  final Map<int, PrivateCreator> groups;

  Manufacturer(this.id, PrivateCreator creator)
      : groups = {creator.group:creator} {
    map[id] = this;
  }

  Iterable<PrivateCreator> get creators => groups.values;

  String get json => '''
  "$id": {
    "groups": ${groupsToJson}
    },
 ''';

  String get groupsJson {
    var out = "{\n";
    for(PrivateCreator creator in groups.values)
      out += creator.json;
    return out += '}\n';
  }

  String get creatorsToJson {
    var out = "";
    for(PrivateCreator creator in creators)
      out += creator.json;
    return out;
  }

  String get groupsToJson {
    var out = "{\n";
    for(PrivateCreator creator in creators)
      out += '${intToHex(creator.group, 4)}: ${creator.json}\n';
    return out += '}\n';
  }


  void add(PrivateCreator creator) {
    groups[creator.group] = creator;
  }

  String toString() => "$runtimeType $id: $groups";

  static lookup(String id) => map[id];

  static get values => map.values;
}
