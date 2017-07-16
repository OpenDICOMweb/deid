// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:deid/deid.dart';

/// Calculate the frequency of BasicProfile Actions.
void main() {
  Map<String, int> frequency = {};
  print('length: ${BasicProfile.map.values.length}');
  for (BasicProfile bp in BasicProfile.map.values) {
    int count = frequency[bp.name];
    print(count);
    print('Action: ${bp.name}');
    if (count == null) {
      frequency[bp.name] = 1;
    } else {
      frequency[bp.name] = ++count;
      print("count: $count");
    }
  }
  print(frequency);

}