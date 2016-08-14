// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:io';

const String id = r'(\w+)';
const String atId = r'(@\w+)';

const String integer = r'([-+]?\d+)';
const String pOther = r'([\w\$]+)';
const String pFunction = r'(@\w+\(\))';
const String pValue = '($pFunction|$atId|$id|$integer|$pOther)';
const String paramDef = '^\\s*$id\\s*=\\s*$pValue\\s*';





const String setOther = r'([\w\*\&\$]+)';

const String atFunction = '(@\\w+\\($setArgs\\))';

const String action = r"remove|keep|empty|skip|default|ignore";

const String condition = r'exists|isblank|equals|contains|matches';

const String testDirPath = 'C://odw/Anonymization_test_data/';
const String inputDir = 'C:/odw/sdk/deidentification/bin/test_input/';
const String fileExt = '.txt';

const String settersWithKeyword = '${inputDir}collected_setters.txt';
const String settersWithoutKeyword = '${inputDir}collected_setters_wo_setexp.txt';

List<String> input;
void main(args) {
  //Map<String, String> params = {};

  print('setFunction: $setFunction');
  print('setArgs: $setArgs');
  List<String> lines = readLinesFromFile(settersWithKeyword);
  input = lines;
  int total = lines.length;
  List<Rule> rules = [];
  List<String> failures = [];

  for (int i = 0; i < lines.length; i++) {
    String line = lines[i];
    var rule = parseSetLine(i, line);
    if (rule != null) {
      rules.add(rule);
      print('$rule');
      continue;
    } else {
      failures.add(line);
    }
  }
  print('Success ${rules.length}, Failure: ${failures.length} of $total lines');
  print('Failures: $failures');
}

void success(Match m, String s) {
  print('****: $s');
  for (int i = 0; i < m.groupCount; i++)
    print('  m[$i = ${m[i]}');
}

List<String> readLinesFromFile(String path) {
  File inFile = new File(path);
  List<String> lines = inFile.readAsLinesSync();
  return lines;
}

class Rule {
  int index;
  String targetTag;
  String keyword;
  String function;
  List<String> args;
  List<String> scripts;
  List suffix;
  bool isParsed;
  String name;

  Rule(this.index, targetTag, this.keyword);

  toString() => '''+++  $index: ${input[index]}
--- $function
--- args: $args
--- scripts: $scripts
''';
}


// Set Rule
const String tag = r"\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]";
 const String keyword = r'(\w+)';
 const String setPrefix = 'set\.$tag\\s$keyword\\s=\\s';
 final setPrefixRE = new RegExp(setPrefix);

Rule parseSetLine(int index, String line) {
  Match m = setPrefixRE.firstMatch(line);
  if (m == null) return null;
    //new ParseError(lineNo, line);
  var group = m[1];
  var element = m[2];
  //targetTag = int.parse('0x$group$element');
  var targetTag = '0x$group$element';

  // add tag validation
  // var tag = Tag.lookup(target);
  var keyword = m[3];
  Rule rule = new Rule(index, targetTag, keyword);

  line = line.substring(m.end);
  var val = parseFunction(rule, line);
  if (val != null) return rule;
  return parseReset(rule, line);
}

const String setName = r'(@\w+)';
const String setArgs = r'([\w\*\&\,\@\-\"\^\[\]\s]*)';
const String setFunction = '$setName\\($setArgs\\)';
final setFunctionRE = new RegExp(setFunction);


Rule parseFunction(Rule rule, String line) {
  Match m = setFunctionRE.firstMatch(line);
  if (m == null) return null;
  String name = m[1];
  line = line.substring(m.end);
  List args = parseSetArgs(m[2]);
  var scripts = parseScripts(rule, line);
  rule.function = name;
  rule.args = args;
  rule.scripts = scripts;
  return rule;
}

// Reset Rule
const String reset = r'\s*(\w+)((\/\d*)+)\s*';
final RegExp resetRE = new RegExp(reset);

Rule parseReset(Rule rule, String line) {
  Match m = resetRE.firstMatch(line);
  if (m == null) return null;
  String name = m[1];
  if (name.toLowerCase() != "reset") return null;
  var arg = m[2].substring(1);
  List<String> args = arg.split("/");
  rule.function = name;
  rule.args = args;
  return rule;
}

List<String> parseSetArgs(String args) {
  List<String> argList = args.split(",");
  return argList;
}

/// Scripts
//static const String scriptArg = r'([\w\s|@|\-|\^|\,|\"|$|*|&]*)';
const String scriptArg = r'([\w\s|@|\-|\^|\,|\"|$|*|&|\|/]*)\s*';
const String script = '\{$scriptArg\}| $scriptArg';
final RegExp scriptRE = new RegExp(script);

List<String> parseScripts(Rule rule, String line) {
  var sList = [];
  while (line != "") {
    line = line.trim();
    Match m = scriptRE.firstMatch(line);
    if (m == null) return sList;
    sList.add(m[1]);
    line = line.substring(m.end);
  }
  return sList;
}
