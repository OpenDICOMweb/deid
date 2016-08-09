// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.deidentification;




const List<String> ruleNames = const [
  "@add",
  "@always",
  "@append",
  "@blank",
  "@contents",
  "@date",
  "@empty",
  "@encrypt",
  "@hash",
  "@hashuid",
  "@hashname",
  "@hashptid",
  "@incrementDate",
  "@initials",
  "@integer",
  "@keep",
  "@lookup",
  "@modifiyDate",
  "@param",
  "@privateattribute",
  "@process",
  "@remove",
  "@require",
  "@round",
  "@time",
  "@truncate"
];

const Map<String, List> functions = const
{
"@add": [target, value],          // This is really replaceOrAdd.  Can it take multiple values?
"@always": [target, script],
"@append": [target, script],
"@blank": [target, uint ],       // can the value be negative
"@contents": [target, source, regex, replacement],
"@date": [target, separator],
"@empty": [target],                           // equivalent to @blank(0)
"@encrypt": [target, source, (string | @param)],   // String has no spaces
"@hash": [target, source, maxChars],
"@hashuid": [target, source, root, @Param],    // using @param makes the UID invalid
"@hashname": [target, source, maxChars, maxWords],
"@hashptid": [target, source, @TrialPid, maxChars],
"@incrementDate": [target, source, incInDays],
"@initials": [target, source],
"@integer": [target, source, keyType, minWidth],  // pad with leading zeros
"@keep": [target],
"@modifiyDate": [tag, year, month, day, defaultDate], // y,m,d may be "*"
"@param": [name],  //returns the value of the @param
"@privateattribute": [],
"@process": [targetSQ, script],
"@ptidlookup": [target, ptid, keyType, action],    //Needs a lookup table
"@remove": [target],
"@require": [target, source],
"@round": [target, source, binSize],
"@time": [target, separator],
"@truncate": [target, source, int],   // pos is first n, neg is last n, zero returns empty
"@value": [target, source, defaultValue],
"@ifExists": [target, source, text, trueScript, falseScript],
"@ifBlank": [target, source, text, trueScript, falseScript],
"@ifEquals": [target, source, text, trueScript, falseScript]
};
class Function {
  final foo;

  Function(this.foo);
}