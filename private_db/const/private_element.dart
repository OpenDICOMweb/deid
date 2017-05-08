// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
import 'action.dart';


class PrivateElement {
  final int tag;
  final VR vr;
  final VM vm;
  final Action action;
  final String description;

  const PrivateElement(this.tag, this.vr, this.vm, this.action, this.description);

  int get group => tagGroup(tag);
  int get element => tagElement(tag);
  String get id => 'k${tagElementHex(element)}';

  String toJson(String creatorId) => '''
  {
    "creator": "$creatorId"
    "tag": ${tagToHex(tag)},
    "vr": $vr,
    "vm": $vm,
    "action": $action,
    "description": "$description",
  }''';

  String toString() => 'PrivateElementBase($id, $vr, $vm, $action, $description, )';

}
