// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

/// generate_class

import 'profile_table.dart';
import 'generate_deid_map.dart';

/// This program generates the DeID class using the 'deid.json'
/// file that was created from the DICOM table in PS3.15 Appendix E.
void main() {

  ProfileTable table = ProfileTable.read('deid_class');

  optionMap.forEach((String option, int index) {
    table.write('dart', option, index);
  });

  print('Done');
}

