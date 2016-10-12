// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'src/deid_table.dart';
import 'src/deid_tags.dart';
import 'src/gen_utils.dart';


void main() {

  DeIdTable table = new DeIdTable(deIdTags);
  writeFile('dart', 'deid_class', table.code);

}
