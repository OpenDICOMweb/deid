// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';
import 'action.dart';


class PrivateDataTag {
  final int code;
  final VR vr;
  final VM vm;
  final Action action;
  final String description;

  const PrivateDataTag(this.code, this.vr, this.vm, this.action, this.description);

  int get group => Group.fromTag(code);
  int get elt => Elt.fromTag(code);
  String get id => 'k${Tag.toHex(elt)}';

  String toJson(String creatorId) => '''
  {
    "creator": "$creatorId"
    "tag": ${Tag.toHex(code)},
    "vr": $vr,
    "vm": $vm,
    "action": $action,
    "description": "$description",
  }''';

  @override
  String toString() => 'PrivateElementBase($id, $vr, $vm, $action, $description, )';

}
