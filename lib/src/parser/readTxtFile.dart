// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.deidentification.parser.parse_text;

import 'dart:io';

RegExp identifier = new RegExp(r'[_a-zA-Z][_a-zA-Z0-9]{0,30}');
RegExp integer = new RegExp('[-+]?\d+');

enum VType {int, float, string}
abstract class Value {
  String input;
  int line;
  int start;
  int end;
  VType type;
  String lexeme;
}

class Integer {
  int value;

  Integer(String input, int line, int start, int end) {

  }

  static parse(String input, int line, int start, int end) {

  }
}

String validateIdentifier(String s) {
  s = s.trim();
  Match match = identifier.firstMatch(s);
  print(match);

}



class Param {
  static const String start = "param.";
  static const int offset = start.length;
  String name;
  var value;

  Param(this.name, this.value);

  /// param.{id}={value}
  static Param parse(String line) {
    line = line.toLowerCase().trim();
    int index = line.indexOf(start);
    print('index: $index');
    if (index == 0) {
      var rest = line.substring(offset);
      List<String> list = rest.split('=');
      if (list.length != 2) return null;
      var id = validateIdentifier(list[0]);
      if (id == null) return null;
      var value = getValue(list[1]);
      if (value == null) return null;
      return new Param(id, value);
    }

  }
}

class Assignment {
  static const String start = "set.[";
  static const int offset = start.length;
  int targetTag;
  String keyword;
  String function

  Param(this.name, this.value);

  /// param.{id}={value}
  static Param parse(String line) {
    line = line.toLowerCase().trim();
    int index = line.indexOf(start);
    print('index: $index');
    if (index == 0) {
      var rest = line.substring(offset);
      List<String> list = rest.split('=');
      if (list.length != 2) return null;
      var id = validateIdentifier(list[0]);
      if (id == null) return null;
      var value = getValue(list[1]);
      if (value == null) return null;
      return new Param(id, value);
    }

  }
}

class Comment {
  String line;

  Comment(this.line);

  static parse(String line) {
    var trimmed = line.trim();
    if (trimmed[0] == "#") {
      return new Comment(line);
    } else {
      return null;
    }
  }
}

class TextParser {
  final List<String> source;

  TextParser(this.source);

  parseLine(String line) {
    int i = line.indexOf("param.");
    String char = line[0];
    switch (char) {
      case "#":
        var token = Comment.parse(line);
      case "p":
        Param.parse(line);
      case "s":

    }
  }



  parseParam(String line) {
  }
}

enum TokenType {param, set, operator}

class Token {
  String line;
  TokenType type;
}

void main(List<String> args) {
  String path = 'C:/odw/sdk/deidentification/test_data/1.blank/1.blank.txt';

  File file = new File(path);
  List<String> lines = file.readAsLinesSync();

  for (String line in lines) {
    Param param = Param.parse(line);
  }
}

