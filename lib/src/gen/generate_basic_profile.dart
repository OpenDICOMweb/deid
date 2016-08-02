// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

/// Generate Basic Profiles

import 'dart:io';
import 'deid_class_table.dart';

/**
 * This program generates the DeID class using the 'deid.json' file that was created
 * from the DICOM table in PS3.15 Appendix E.
 */

void main() {
  String s;
  File   output;

  String jsonFilename        = 'c:/odw/sdk/de_id/lib/src/gen/deid.json';
  String classFilename       = 'basic_profile.dart';

  DeIdClassTable table = DeIdClassTable.read(jsonFilename);

  // Write Tags class
  s = table.basicProfile;
  output = new File(classFilename);
  output.writeAsStringSync(s);

  print('Done');
}