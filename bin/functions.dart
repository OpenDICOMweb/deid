// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

class Replacement {
  Pattern pattern;

  Replacement(this.pattern);

  static parse(String replacement) {

  }
}

abstract class Func {
  static const String name = "";
  final List args;
  final List scripts;

  Func([this.args, this.scripts]);

  Type get type => runtimeType;

  static parse(String args) {

  }

}

/// @always()
class Always extends Func {

  Always();

  static parse(String args) {

  }

}

/// @append(){script}
class Append extends Func {

  Append();

  static parse(String args) {

  }

}

/// @call(id, args)
class Call extends Func {
  // the name of a callable plugin
  String id;
  Call(this.id, [args]);

  static parse(String args) {

  }

}

/// @blank(int n)
class Blank extends Func {
  // The number of blanks - n must be non-negative

  Blank();

  String call(int n) {
    if(n < 0) throw 'Invalid blank argument';
    return "".padRight(n, " ");
  }

  static parse(String args) {

  }

}

/// @blank(int n)
class Contents extends Func {

  Contents(int tag, Pattern regex, Replacement replacement);

  List<String> call(Dataset ds, int tag, Pattern pattern, Replacement replacement) {
    List<String> values = ds[tag].values;
    List<String> results = [];
    for(String s in values)
        results.add(s.replaceAll(pattern, replacement.pattern));
    return results;
  }

  static parse(String args) {}

}

/// @date(String sep)
class Date extends Func {

  Date(int tag, Pattern regex, Replacement replacement);

  String call([String sep = ""]) {
    if ((sep == null) || (sep.length >= 1)) throw "Invalid separator: $sep";
    if (sep == "-") ;

  }

  static parse(String args) {}

}

/// @encrypt(int tag, key)
/// key may be a [code] or [String]
/// If key is [code] the value of the [code] is used as the key.
class Encrypt extends Func {

  Encrypt(int tag, [key]);

  String call(int tag, key) {

  }

  static parse(String args) {

  }

}


