// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

var file = 'C:/odw/sdk/deidentification/test_data/10-11.encrypt/10-11.encrypt.txt';

var p0 = 'param.NEGATIVE=-1';
var p1 = 'param.ONE=1';
var p2 = 'param.TWO=2';
var p3 = 'param.ZERO=0';

var pList = [p0, p1, p2, p3];


var s0 = 'set.[0008,0020] StudyDate = @blank(0)';
var s1 = 'set.[0008,0021] SeriesDate = @blank(@ONE)';
var s2 = 'set.[0008,0023] ContentDate = @blank(@TWO)';
var s3 = 'set.[0008,0030] StudyTime = @blank(-5)';
var s4 = 'set.[0008,0050] AccessionNumber = @blank(@NEGATIVE)';
var s5 = 'set.[0008,0060] Modality = @blank(@ZERO)';
var s6 = 'set.[0008,0070] Manufacturer = @blank(4)';
var s7 = 'set.[0012,0031] ClinicalTrialSiteName = @blank(1)';

var sList = [s0, s1, s2, s3, s4, s5, s6, s7];


// Parameter Expressions look as follows:
//    param.TRIAD=triad
const String parameterExp = r'param.(\w+)\s*=\s*([\$|@|\-|\w]+)';
//const String parameterExp = r'param.(\w+)\s*=\s*([@|\-|\d|\w]+)';
final RegExp paramRegExp = new RegExp(parameterExp);
/// @param(string)
const String pSpecial = r'|!|@|#|$|%|^|&|*|-|=|+|~|`|?';
const String pChar = r'|!|@|$|^|&|*';
const String pLegal = '[\w$pChar]+';
const String paramArg = '[\w$pSpecial]+';

final RegExp param = new RegExp(r'param.(\w+)\s*=\s*([@|\-|\d|\w]+)');



/// Functions
const String fChar = r'|!|@|$|^|&|*';
const String fLegal = '[\\w$pChar]+';
const String function = '@\\w+\\(($fLegal)\)';

/// Rule RegExp
//set.[0008,0020] StudyDate = @blank(0)
final RegExp setter = new RegExp(r'set\.\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\] ([0-9a-zA-F]+) = (@[a-zA-Z]+)(\([\w\s]+\))');

final RegExp tag = new RegExp(r'set.\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]\s(\w+)\s=\s@(\w+)\(([@|\-|\d|\w]+)\)');


/// Scripts
const String sChar = r'|!|@|$|^|&|*';
const String sLegal = '[\\w$pChar]+';
const String script = '\\{spLegal\\}';

/// Reset
const String reset = 'RESET|Reset|reset(\/\d*)+';

const String atParamPattern = '@param\\($paramArg\\)';
final RegExp atParam = new RegExp(atParamPattern);

const String blank = '@blank\(([@|\w]*)\)';
const String pName = '(\w*^)';
const String param1 = '@param\((([@|\w]*[^]?)*)';
const String time = '@time\((@\w+)|([\*|\&|\w]+)\)';


/// (<string>)
const String legalNonWords = r'[@|$|*|&|^';


const String tagRegExp = r"(\d+)";
const String tagListRegExp = r'(/$tag)';

const String ruleExp =
    r'set.\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]\s(\w+)\s=\s@(\w+)\(([\s|@|\-|\,|\"|\d|\w]*)\)';

final RegExp ruleRegExp = new RegExp(ruleExp);

void main() {

  for (String s in pList) {
    Match m = param.firstMatch(s);
    var identifier = m[1];
    var value = m[2];
    print('param($identifier, $value)');
  }

  for (String s in sList) {
    Match m = tag.firstMatch(s);
    print(m.groups([1, 2, 3, 4, 5]));
    //var group = m[1];
    //var element = m[2];
    //var target = '0x$group$element';
    //var keyword = m[3];
    //var func = lookupFunction(m[4]);
    //var args = m[5];

    var v = '0x${m[1]}${m[2]}, ${m[3]}, ${m[4]}, ${m[5]}';
    print(v);
    v = '${m[4]}(${m[3]}(0x${m[1]}${m[2]}), ${m[5]});';
    print(v);
  }
}