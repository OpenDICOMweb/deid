// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:io';

import 'package:path/path.dart'as path;

String cpt_dir = "C:/odw/sdk/deid/private_db/cpt";

List<String> total = [];

void main(List<String> args) {

 // var line = r' <e en="T" t="0009[GEMS_IDEN_01]01" n="Full Fidelity"> @keep() </e>';
  Directory cpt = new Directory(cpt_dir);
  List<FileSystemEntity> entities = cpt.listSync();
  print('${entities.length} entities');
  for(FileSystemEntity e in entities) {
    if (e is File) {
      var p = e.path;
      var ext = path.extension(p);
      if (ext == ".txt") {
        print('$p');
        var lines = e.readAsLinesSync();
        var olines = processCpt(lines);
      //  print('Out Lines:  ${olines.length}');
       // for(String line in olines)
      //      print('  $line');
      }
    }
  }
  print('total:\n$total');
}


var r = r'\<e\sen="(T)")\st="([0-9a-f]{4})\[([a-zA-Z0-9_]+)\]([0-9a-f]{2})"\sn=(".+")\>'
    r'\s+\@([a-z]+)\(\)\s*\<\/e\>';

var rexp0 = r'\<e\sen="(T)"\st="([0-9a-fA-F]{4})\[([\w\s\_\.\:]*)\]([0-9a-fA-F]{2})"'
    r'\sn=\s*"([\w\s\/\-\(\)\.\#\,\{\}\:\;\*\=\+\%]*)"\s*\>\s*@(\w*)';

var rexp1a = r'\s*t="([0-9a-f]{4})\[(\.+)\]([0-9a-f]{2})"\s';
var rexp1 = r'n=("[\w\s\/-]+")>\s@(\w+)\(\)\s<\/e>';
var rexp = '$rexp0$rexp1';

var regexp = new RegExp(rexp0);


List<String> processCpt(List<String> lines) {
  print('in: ${lines.length} lines');
  List<String> out = [];
  for(String line in lines) {
    line = line.trim();
    var index = line.indexOf('<e');
    //print('index: $index');
    if (index >= 0) {
      Match match = regexp.firstMatch(line);
      if (match != null) {
        int count = match.groupCount;
        if (count > 0) {
        //  print('index: $index, matches($count): ${match.group(0)}');
          //for (int i = 0; i < count; i++)
          //  print('  $i: |${match.group(i)}|');
          var lang = match.group(1);
          var group = match.group(2);
          var creator = match.group(3);
          var element = match.group(4);
          var desc = match.group(5);
          var action = match.group(6);
          var line = match.group(0);
          out.add('${match.groups([1,2, 3, 4, 5, 6])}');
          total.add('\n["$lang", "0x$group", "$creator", "0x$element", "$action","$desc"]');
        } else {
          print('index: $index, Match $match 0 groups: $line');
        }
      } else {
        print('index: $index, No matches: $line');
      }
    } else {
      if (line.indexOf('<!') >= 0) continue;
      if (line.length == 0) continue;
      print('X($index): "$line"');
    }
  }
  print('out: ${out.length} lines');
  return out;
}

