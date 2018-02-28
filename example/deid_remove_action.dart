// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:convert/convert.dart';
import 'package:core/core.dart';
import 'package:deid/deid.dart';

const inputDir = 'C:/odw/test_data/sfd/CR/PID_MINT10/1_DICOM_Original/';
const testOutput = 'C:/odw/sdk/deid/example/output';

final file1 = '$inputDir\CR.2.16.840.1.114255.393386351.1568457295.17895.5.dcm';
final file2 = '$inputDir\CR.2.16.840.1.114255.393386351.1568457295.48879.7.dcm';

List<String> filesList = [file1];

void main() {
  final log = new Logger('example/deid_remove_action');
  //var deidentifier = new DeIdentifier();
  for (var path in filesList) {
    final file = new File(path);
    print('Reading file: $file');
    log.config('Reading file: $file');

    final rds = TagReader.readFile(file);
    print('Initial Total Elements: ${rds.length}');
    print('***Identified:\n${rds.format(new Formatter(maxDepth: 5))}');

    final removed = <Element>[];
    for (BasicProfile bp in BasicProfile.map.values) {


      if (bp.name == 'X') {
        final a = rds.lookup(bp.tag.code);
        if (a == null) {
        //  print('${tagToDcm(bp.tag)} Not Present');
        } else {
        //  print(bp);
          removed.add(a);
        //  print('Before: ${ds.lookup(bp.tag)}');
          rds.remove(bp.tag);
        //  print('after: ${ds.lookup(bp.tag)}');
        }
      }
    }
    print('Final Total Elements: ${rds.length}');
    print('Removed Elements: ${removed.length}');
    for (var a in removed)
    print('  $a');
   print('***DeIdentified:\n${rds.format(new Formatter(maxDepth: 5))}');
  }
}

