// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';

import 'private_data.dart';

class Creator {
  final String name;
  final Modality modality;
  final String description;
  final List<PrivateData> data;
  final String manufacturer;

  const Creator(this.name, this.modality, this.description, this.data, this.manufacturer);

  List<int> get groups => _getGroups(data);
  List<int> _getGroups(data) {
    List<int> list = [];
    data.forEach((PrivateData e) {
      list.add(e.index);
    });
    return list;
  }



  static const kGEMS_IDEN_01 = const Creator(
      "GEMS_IDEN_01",
      Modality.MR,
      "GEMS_IDEN_01",
      null,
      ""
      "foo");
}
