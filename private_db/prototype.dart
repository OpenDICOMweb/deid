// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

enum Action {K, KB, R, X}

const int private_group_base = 0x0009;
const int creator_element_base = 0x0010;

class PrivateGroup {
  final String creator;
  final String manufacturer;
  final Modality modality;
  final String description;
  final PrivateData elements;

  const PrivateGroup(this.creator, this.manufacturer, this.modality,
                     this.description, this.elements);

  static const GEMS_ACQU_01 =
      const PrivateGroup("GEMS_ACQU_01", "GEMS", Modality.MR,
                             "GEHC Private Creator ID", PrivateData.k1002);

  int nextGroup(int group) => group + 2;

  int nextCreator(int element) {
    var next = element++;
    return (inRange(0x0010, next, 0x00FF)) ? next : null;
  }
}

class PrivateData {
  final int element;
  final VR vr;
  final Action action;
  final String description;
  final int dGroup;

  const PrivateData(this.element, this.vr, this.action, this.description, this.dGroup);

  static const k1002 =
      const PrivateData(0x0010, VR.kLO, Action.K, "GEHC Private Creator ID", 0x0019);
}

