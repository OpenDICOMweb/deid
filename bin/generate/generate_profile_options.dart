// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

/// Generate Basic Profiles

import 'dart:io';
import 'src/deid_option_table.dart';

/**
 * This program generates the DeID class using the 'deid.json' file that was created
 * from the DICOM table in PS3.15 Appendix E.
 */

void main() {

  String jsonFilename        = 'C:/odw/sdk/deid/bin/generate/input/deid.json';
  String classDirName       = 'C:/odw/sdk/deid/bin/generate/output/dart';

  ProfileOptionTable table = ProfileOptionTable.read(jsonFilename);

  // Write Option Class
  Iterable<String> optionNames = optionOffset.keys;
  for (String name in optionNames) {
    String outPath = '$classDirName/${name}Option.dart';
    var code = table.profileOption(name);
    var outFile = new File(outPath);
    outFile.writeAsStringSync(code);
  }
  print('Done');
}