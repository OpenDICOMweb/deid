// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:deid/profile.dart';

import 'parse_text.dart';

final paramDefRE = new RegExp('^$paramDef');

// Parse the definition part of a Parameter line
bool parseParameterDefLine(Profile profile, int index, String line) {
  Match m = paramDefRE.firstMatch(line);
  if (m == null) return false;
  var key = m[1];
  var value = m[2];
  print('Parameter: "$key":"$value"');
  profile.addVariable(key, value);
  return true;
}

// Parse the Function part of the line
bool parseSetFunctionLine(Profile profile, int index, String line) {
  Rule rule = new Rule(index, index, line);
  if ((parseFunction(profile, rule, line)) ||
      (parseReset(profile, rule, line)) ||
      (parseCommentLine(profile, index, line)))
    return true;
  return profile.error(index, line);
}