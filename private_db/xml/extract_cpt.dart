// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

void main(List<String> args) {
  var infile = "C:/odw/sdk/deid/private_db/xml/GE_CT.txt";

  var r = r'^\s\<e\sen=("T")\st="([0-9a-f]{4})\[([a-zA-Z0-9_]+)\]([0-9a-f]{2})"\sn=(".+")\>'
      r'\s+\@([a-z]+)\(\)\s*\<\/e\>';
  var rexp0 = r'(\s*\<e\s*en="T")';
  var rexp1a = r'\s*t="([0-9a-f]{4})\[([a-zA-Z0-9_]+)\]([0-9a-f]{2})"\s';
  var rexp1 = r'n=("[\w\s\/-]+")>\s@(\w+)\(\)\s<\/e>';
  var rexp = '$rexp0$rexp1';
  print('rexp: $rexp');

 // var line = r' <e en="T" t="0009[GEMS_IDEN_01]01" n="Full Fidelity"> @keep() </e>';
  File f = new File(infile);
  List<String> lines = f.readAsLinesSync();
 // print('*\n$lines\n*\n');
  lines = lines.sublist(7);
 // print('0: "${lines[0]}"');

  var regexp = new RegExp(r);

  int i = 0;
  for(String s in lines) {
    if (s.length == 0) continue;
    print('${i++}: "$s"');
    Match match = regexp.firstMatch(s);
    if (match != null) {
      int count = match.groupCount;
      if (count > 0) {
        print('matches($count): ');
        for (int i = 0; i < count; i++)
          print('  $i: |${match.group(i)}|');
      } else {
        print('Match $match with no groups');
      }
    } else {
      print('No matches');
    }
  }
}

