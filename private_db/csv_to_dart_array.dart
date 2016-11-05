// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

File creators = new File("C:/odw/sdk/deid/private_db/csv/private_creator.csv");

void main(List<String> args) {

  List<String> lines = creators.readAsLinesSync();
  List<String> out = [];

  for(String line in lines) {
    line = line.trim();
    List<String> vars = line.split('|');
    for(int i = 1; i < vars.length; i++)
      vars[i] = '"${vars[i]}"';
    line = vars.join(",");

    out.add('\n[$line]');
  }
  print('out:\n$out');

}
