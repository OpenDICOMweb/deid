// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:deid/profile.dart';

const String id = r'(\w+)';
const String atId = r'(@\w+)';
const String integer = r'([-+]?\d+)';
const String pOther = r'([\w\$]+)';
const String pFunction = r'(@\w+\(\))';
const String pValue = '($pFunction|$atId|$id|$integer|$pOther)';
const String paramDef = '\\s*$id\\s*=\\s*$pValue\\s*';
const String paramLine = '\\s*param\.$paramDef';

// Parameter RegExp
final paramLineRE = new RegExp('^$paramLine');

bool parseLine(Protocol protocol, int index, String line) {
  if ((parseParameterLine(protocol, index, line)) ||
      (parseSetLine(protocol, index, line)) ||
      (parseCommentLine(protocol, index, line))) {
    return true;
  }
  return false;
}

bool parseParameterLine(Protocol protocol, int index, String line) {
  Match m = paramLineRE.firstMatch(line);
  if (m == null) return false;
  var key = m[1];
  var value = m[2];
  // print('Parameter: "$key":"$value"');
  protocol.addVariable(key, value);
  return true;
}

// Set Rule
const String tag = r"\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]";
const String keyword = r'(\w+)';
const String setPrefix = 'set\.$tag\\s$keyword\\s=\\s';

const String setName = r'(@\w+)';
const String setArgs = r'([\w\*\&\,\@\-\"\^\[\]\s]*)';
const String setFunction = '$setName\\($setArgs\\)';

final setPrefixRE = new RegExp('$setPrefix');
final setFunctionRE = new RegExp('$setFunction');
//final setLineRE = new RegExp('${setPrefix}$setFunction');


/// Parse 'set.[gggg,eeee] <keyword> = <function>...'
bool parseSetLine(Protocol protocol, int index, String line) {
  Match m = setPrefixRE.firstMatch(line);
  if (m == null) return false;
  var group = m[1];
  var element = m[2];
  var tagText = '0x$group$element';
  var targetTag = int.parse(tagText);
  var keyword = m[3];
  // print('tag: $tagText, keyword: $keyword');
  Rule rule = new Rule(index, targetTag, keyword);
  if ((parseFunction(protocol, rule, line)) ||
      (parseReset(protocol, rule, line)) ||
      (parseCommentLine(protocol, index, line)))
    return true;
  // print('end of parseSetLine');
  return protocol.error(index, line);
}

/// Function - Parse: '@<id>(<args>){<script>}...'
bool parseFunction(Protocol protocol, Rule rule, String line) {
  Match m = setFunctionRE.firstMatch(line);
  if (m == null) return false;
  rule.function = m[1];
  rule.args = (m[2] == "") ? [] : m[2].split(",");
  line = line.substring(m.end);
  // print('function: ${rule.function}, args: ${rule.args}, rest: $line');
  switch (rule.function) {
    case "@append":
      return parseAppend(protocol, rule, line);
    case "@if":
      return parseIf(protocol, rule, line);
    case "@param":
      return parseParam(protocol, rule, line);
    default:
      var s = line.trim();
      if (s != "") {
        protocol.error(rule.index, line);
      } else {
        protocol.addRule(rule);
        return true;
      }
  }
}

// Reset Rule
const String reset = r'\s*(\w+)((\/\d*)+)\s*';
final RegExp resetRE = new RegExp(reset);

/// Reset - Parse: 'RESET/<int>/<int>...'
bool parseReset(Protocol protocol, Rule rule, String line) {
  Match m = resetRE.firstMatch(line);
  if (m == null) return false;
  if (m[1].toLowerCase() != "reset") return false;
  rule.function = m[1];
  rule.args = m[2].split("/");
  // print('function: ${rule.function}, args: ${rule.args}');
  protocol.addRule(rule);
  return true;
}

/// Scripts
//static const String scriptArg = r'([\w\s|@|\-|\^|\,|\"|$|*|&]*)';
/*
const String scriptChars = r'[\w|\s|\@|\-|\^|\,|\$|\*|\&|\\|\/]+';
const String scriptArg = '($scriptChars)';
const String quotedScriptArg = r'(\"\([\w|\s|\@|\-|\^|\,|\$|\*|\&|\\|\/]+\)\")';
//const String quotedScriptArg = '(\\"\\($scriptChars\\)\\")';
//const String script = '$quotedScriptArg|\{$scriptArg\}|$scriptArg';
const String script = '\{$scriptArg\}|$scriptArg';
final RegExp scriptRE = new RegExp(script);

const String paramScript = r'^' + setFunction;
*/
// AA
// AA\\BB\\BB
// aldfdadfs
// @TRIAD
// {}
// {AA}
// {AA\\BB\\CC}
// {this has spaces}
// {"TRIAD"}
// {"@TRI"}
// Multi-Valued Append Scripts
const String appendEmpty = r'\{\s*\}';
const String appendParam = r'(@\w+)';
const String appendString = r'\{(\"?\@?[\w\s]+\"?)\}';
const String appendMVChars = r'((\w+)|(\\\\\w+))*';
const String appendMVScriptChars = r'\{(([\w\s]+)|(\\\\[\w\s]+))*\}';
const String appendMVScript = '\\{$appendMVScriptChars\\}';
const String appendQuotedScript = '\\{\\"$appendMVScriptChars\\"\\}';
const String appendParamScript = r'@?\w+';

const String appendScript =
    '$appendEmpty|'
    '$appendParam|'
    '$appendString|'
    '$appendQuotedScript|'
    '$appendMVScriptChars|'
    '$appendMVScript|'
    '$appendMVChars';

final RegExp appendScriptRE = new RegExp(appendScript);


/// Scripts - Parse: '{<id>} | <id>...'
bool parseAppend(Protocol protocol, Rule rule, String line) {
  if (rule.args.length != 0) {
    print('Append Script: "$line"');
    print('Append args: ${rule.args}, length: ${rule.args.length}');
    return protocol.error(rule.index, 'Append takes no args');
  }
  Match m = appendScriptRE.firstMatch(line);
  if (m == null) {
    print('Append Script: "$line"');
    print('Append Script Error: $line');
    return protocol.error(rule.index, 'Append invalid script: "$line"');
  }
  rule.scripts = [m[0]];
  if (m.end != line.length) {
    var s = line.substring(m.end);
    print('Append Script: "$line"');
    print('Append Left Over: $s');
    return protocol.error(rule.index, 'Append left over script: "$s"');
  }
  //print('append success: "${m[0]}"');
  //printMatch(m);
  protocol.addRule(rule);
  return true;
}

/// Scripts
//static const String scriptArg = r'([\w\s|@|\-|\^|\,|\"|$|*|&]*)';
//const String scriptChars = r'[\w|\s|\@|\-|\^|\,|\$|\*|\&|\\|\/]+';
//const String scriptArg = '($scriptChars)';
//const String quotedScriptArg = r'(\"\([\w|\s|\@|\-|\^|\,|\$|\*|\&|\\|\/]+\)\")';
//const String quotedScriptArg = '(\\"\\($scriptChars\\)\\")';
//const String script = '$quotedScriptArg|\{$scriptArg\}|$scriptArg';
const String script = r'\{(\w+)\}';
final RegExp ifScriptRE = new RegExp(script);

/// Scripts - Parse: '{<id>} | <id>...'
bool parseIf(Protocol protocol, Rule rule, String line) {
  print('Script: $line');
  var sList = [];
  for (int i = 0; i < 2; i++) {
    Match m = ifScriptRE.firstMatch(line);
    if (m == null)
        return protocol.error(rule.index, line);
   // printMatch(m);
    print('len=${line.length}, script: "$line"');
    sList.add(m[0]);
    line = line.substring(m.end);
  }
  rule.scripts = sList;
  print('scripts: $sList');
  if (line.length > 0)
    return protocol.error(rule.index, line);
  protocol.addRule(rule);
  return true;
}

/// Scripts - Parse: '{<id>} | <id>...'
bool parseParam(Protocol protocol, Rule rule, String line) {
  if (line != "")
    print('Param Script: $line');
  rule.scripts = (line != "") ? [line] : [];
  protocol.addRule(rule);
  return true;
}

const String comment = r'\s*#';
final RegExp commentRE = new RegExp(comment);

/// Comment - Parse: '# <comment>'
bool parseCommentLine(Protocol protocol, int index, String line) {
  // print('in comment');
  Match m = commentRE.firstMatch(line);
  if (m == null) return false;
  // print('comment: $index: $line');
  protocol.comment(index, line);
  return true;
}




