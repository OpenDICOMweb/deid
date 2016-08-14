// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk. ;

import 'package:core/core.dart';

class RuleType {
  final String name;
  final int minArgs;
  final int maxArgs;
 // final List<String> argTypes;
  final Function argPredicate;
  final int minScripts;
  final int maxScripts;

  const RuleType(this.name, this.minArgs, this.maxArgs,
                 this.argPredicate, this.minScripts, this.maxScripts);

  bool get hasArgs => minArgs > 0;
  bool get hasScripts => minScripts > 0;

  bool validArgs(List args) => argPredicate(args);

  static const blank = const RuleType("@blank", 0, 1, blankArgPredicate, 0, 0);
  static const blank = const RuleType("@blank", 0, 1, blankArgPredicate, 0, 0);
}

bool blankArgPredicate(List args) {
    if (args.length == 0) return true;
  if (args.length == 1) {
    int val = int.parse(args[0], onError: (s) => null);
    if (val != null) return true;
  }
  return false;
}
