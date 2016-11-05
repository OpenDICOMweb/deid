// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import '../dart_arrays/creators_array.dart';

void main() {

  String out = "";
  String map = "";
  for(List row in cptCreatorsArray) {
    var mIndex = row[0];
    var group = row[1];
    var mod = row[2];
    var creator = row[3];
    var desc = row[4];

    out += 'static const k$creator = const Creator($mIndex, $group, Modality.$mod, "$creator", '
                '"$desc");\n';
    map += '"creator: k$creator,\n';
  }

  print('out:/n $out');

  //print('map:/n $map');
}
