// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.



import 'private_creator_tag.dart';

class Manufacturer {
  static Map<String, Manufacturer> map = {};
  final String id;
  final Map<int, PrivateCreatorTag> groups;

  Manufacturer(this.id, PrivateCreatorTag creator)
      : groups = {creator.group: creator} {
    map[id] = this;
  }

  Iterable<PrivateCreatorTag> get creators => groups.values;

  String get json => '''
  "$id": {
    "groups": ${groupsToJson}
    },
 ''';

  String get groupsJson {
    var out = "{\n";
    for(PrivateCreatorTag creator in groups.values)
      out += creator.json;
    return out += '}\n';
  }

  String get creatorsToJson {
    var out = "";
    for(PrivateCreatorTag creator in creators)
      out += creator.json;
    return out;
  }

  String get groupsToJson {
    var out = "{\n";
    for(PrivateCreatorTag creator in creators)
      out += '${Uint16.hex(creator.group)}: ${creator.json}\n';
    return out += '}\n';
  }


  void add(PrivateCreatorTag creator) {
    groups[creator.group] = creator;
  }

  @override
  String toString() => "$runtimeType $id: $groups";

  static Manufacturer lookup(String id) => map[id];

  static Iterable get values => map.values;
}
