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

import 'dart:io';

class CsvToDart {

    CsvToDart();
}

void printLine(int i, var s) {
    var no = i.toString().padLeft(4);
    print('$no: $s');
}
void main(List<String> args) {
    var csvFile = "C:/odw/sdk/deid/private_db/new_db.csv";
    var jsonFile = "C:/odw/sdk/deid/private_db/db_entry.json";

    var inFile = new File(csvFile);
    var lines = inFile.readAsLinesSync();

    var creator = lines.sublist(0, 1);
    var data = lines.sublist(2);

    var creatorJson = generateCreatorJson(creator);
    var dataJson = generateDataJson(creator);

    //  var headLine = lines[0].split('|');
    //  var headers = headLine.sublist(1);
    //  for(String s in headers) s.trim();

    List<List<String>> rows = [];
    for (int i = 0; i < lines.length; i++) {
        var line = lines[i];
        printLine(i, line);
        var row = lines[i].split('|');
        row = row.sublist(1);
        for (int j = 0; j < row.length; j++) {
            row[j] = row[j].trim();
        }
        printLine(i, row);
        rows.add(row);
    }
    for (int i = 0; i < rows.length; i++) {
        printLine(i, rows[i]);
    }

    var generate = new PrivateGroupGenerator(rows);
    print(generate.code);
}


class PrivateGroupGenerator {
    List<List<String>> table;

    PrivateGroupGenerator(this.table);

    List<String> get headers => table[0];
    List<List<String>> get rows => table.sublist(1);

    String get privateGroupHead(creator, manu)
    var out = '''
// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

enum Action {K, KB, R, X}

const int private_group_base = 0x0009;
const int creator_element_base = 0x0010;

class PrivateGroup {
  final String creator;
  final String manufacturer;
  final Modality modality;
  final String description;
  final PrivateData elements;

  const PrivateGroup(this.creator, this.manufacturer, this.modality,
                     this.description, this.elements);

  int nextGroup(int group) => group + 2;

  int nextCreator(int element) {
    var next = element++;
    return (inRange(0x0010, next, 0x00FF)) ? next : null;
  }
''';

    String fields(creator) => '''
  final String creator = $creator;
  final int dGroup;
  final int element;
  final Modality modality;
  final VR vr;
  final Action action;
  final String manufacturer;
  final String description;

  const PrivateGroup(this.creator, this.dGroup, this.element, this.modality,
                     this.vr, this.action, this.manufacturer, this.description);

''';

    String get privateGroupDefinitions {
        var out = "";
        for (int i = 0; i < rows.length; i++) {
            var row = rows[i];
            var keyword = 'k${row[6]}';
            var creator = '"${row[6]}"';
            var mod = 'Modality.${row[2]}';
            var manu = '"${row[5]}"';
            var desc = '"${row[7]}"';
            out += 'static const $keyword '
                '= const PrivateGroup($creator, $manu, $mod, $desc);\n';
        }
        return out;
    }

    String get tail
} => "\n}\n";



String get code {
    print('head: $head');
    print('head: $definitions');
    print('head: $tail');
    return '$head$definitions$tail';
}

}

