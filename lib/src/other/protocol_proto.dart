// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.protocol;

import 'dart:convert';
import 'dart:io';
import 'package:core/base.dart';
import 'package:path/path.dart';

Context path = new Context(style: Style.windows);

//TODO: what value types are permissible? String, int, anything else?
// * what are legal value expressions for Parameters

/// A Protocol Parsing Error
///
/// Usually caused by invalid [Parameter] or [Rule] syntax.
class ParseError {
  int lineNo;
  String msg;

  ParseError(this.lineNo, this.msg);

  String get json => '"$lineNo: $msg"';

  toString() => 'Protocol Parse Error(line: $lineNo)\n    $msg';
}

/// Parameter Expressions look as follows:
///    param.TRIAD=triad
class Parameter {
  static const String parameterExp = r'param.(\w+)\s*=\s*([\$|@|\-|\d|\w]+)';
  static final RegExp param = new RegExp(parameterExp);

  /// The Parameter Name.
  final String name;

  /// The Parameter Value.
  final value;

  Parameter(this.name, this.value);

  /// Returns a [Map] for this [Parameter].
  Map<String, dynamic> get map => {"name": name, "value": value};

  String get json {
    var v;
    if (value is num) {
      print('Number: $value');
    } else if (value is String) {
      num n = num.parse(value, (String v) => null);
      if (n != null) {
        v = value;
        print('num: $v');
      } else if ((value[0] != '"') && (value[value.length - 1] != '"')) {
        v = '"$value"';
        print('String: $v');
      } else {
        v = "$value";
        print('has quote: $v');
      }
    } else if (value is Parameter) {
      print('Parameter: $value');
    }
    print("Value is $runtimeType: '$value'");
    return '{"name": "$name", "value": $v}';
  }

  String toString() => 'param.$name=$value';

  /// Parse a single line into a parameter.
  static parse(int lineNo, String line) {
    var s = line.trim();
    print('line($lineNo): $s');
    if (s[0] == "#") return null;

    if (s.indexOf("param.") == 0) {
      Match m = param.firstMatch(s);
      if (m == null) return new ParseError(lineNo, line);
      String name = m[1];
      var value = m[2];
      //print('param($name, $value)');
      return new Parameter(name, value);
    }
  }
}

// Rule expressions look as follows:
//    set.[0008,0020] StudyDate = @blank(0)
class Rule {


  // Set Rule
  static const String tagExp = r"\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]";
  static const String keywordExp = r'(\w+)';
  static const String setExp = 'set\.$tagExp\\s$keywordExp\\s=\\s';
  static final setRegExp = new RegExp(setExp);



  // Arg Expression
  static const String argExp = r'\(([\w\s|@|\-|\^|\,|\"|$|*|&|\[|\]|\\]*)\)\s*';

  //String foo = r'([\$|@|\-|\d|\w]+)';
  //static const String ruleExp = '\\($argExp\\)';
  static final RegExp argRegExp = new RegExp(argExp);

  // Reset Arg
  static const String resetValuesExp = r'((\/\d*)+)';
  static final RegExp resetValuesRegExp = new RegExp(resetRule);

  // Reset Rule
  static const String reset = r'RESET|Reset|reset(\/\d*)+';
  static const String resetRule =
      'set\.$tagExp\\s$keywordExp\\s=\\s$reset\\($argExp\\)';
  static final RegExp resetRuleRegExp = new RegExp(resetRule);

  /// Scripts
  //static const String scriptArgExp = r'([\w\s|@|\-|\^|\,|\"|$|*|&]*)';
  static const String scriptExp = r'\{([\w\s|@|\-|\^|\,|\"|$|*|&|\\|/]*)\}\s*';
  static final RegExp scriptRegExp = new RegExp(scriptExp);

  // If Rule
  static const ifArgs = r'([\w\s|@|\-|\^|\,|\"|$|*|&|\[|\]]*)';
  static const ifExp = '@if\\($argExp\\)$scriptExp$scriptExp';
  static const ifRule =
      'set\.$tagExp\\s$keywordExp\\s=\\s$ifExp\\)';
  static final ifRuleRegExp = new RegExp(ifRule);
  String targetTag;
  String keyword;
  String function;
  List args;
  List scripts;
  List suffix;

  Rule(this.targetTag, this.keyword, this.function, this.args, this.scripts);

  Map<String, dynamic> get map =>
      {
        "target": targetTag,
        "keyword": keyword,
        "function": function,
        "args": args,
        "scripts": scripts,
      };

  String get json => JSON.encode(map);

  //TODO: String dcmFmt(int tag) {

  String toString() => 'set.[$targetTag] $keyword = @$function($args)$scripts';

  static parse(int lineNo, String line) {
    String targetTag;
    String keyword;
    String function;
    //String args;
    List argList;
    List scripts;
    List suffix;

    print('setRule: $setRule');
    var s = line.trim();
    if (s.indexOf("set.[") != 0) return null;

    // Set Rule
    Match m = setRuleRegExp.firstMatch(s);
    if (m == null) new ParseError(lineNo, line);
    var group = m[1];
    var element = m[2];
    //targetTag = int.parse('0x$group$element');
    targetTag = '0x$group$element';

    // add tag validation
    // var tag = Tag.lookup(target);
    keyword = m[3];
    function = m[4];
    s = s.substring(m.end);

    print('setRule($targetTag) $keyword, $function: s:$s');

    // Arg Rule
    m = argRegExp.firstMatch(s);
    //matchInfo(resetRuleRegExp, s);
    if (m != null) {
      argList = m[1].split(',');
      if (argList.contains("this")) {
        int i = argList.indexOf("this");
        argList[i] = targetTag;
      }
      s = s.substring(m.end);
      print('argList: $argList, s: $s');
    } else if ((argList == null) && (function.toLowerCase() == 'reset')) {
      // Reset Arg
      m = resetValuesRegExp.firstMatch(s);
      if (m != null) {
        argList = m[1].split('\\');
        s = s.substring(m.end);
        print('reset: $argList, s: $s');
      }
    } else {
      return new ParseError(lineNo, line);
    }

    if ((s != "") && (s[0] != "{")) {
      m = scriptRegExp.firstMatch(s);
      if (m != null) {
        suffix = [];
        suffix.add(m[0]);
        s = s.substring(m.end);
        print('suffix: ${m[0]}, s: $s');
      }
    }
    scripts = [];
    while (s != "") {
      if (s[0] == "{") {
        m = scriptRegExp.firstMatch(s);
        if (m == null) break;
        scripts.add(m[0]);
        s = s.substring(m.end);
        print('script: ${m[0]}, s: $s');
      } else {
        m = identifierRegExp.firstMatch(s);
        if (m != null) {
          suffix = [];
          suffix.add(m[0]);
          s = s.substring(m.end);
          print('suffix: ${m[0]}, s: $s');
        }
      }
    }
    return new Rule(targetTag, keyword, function, argList, scripts);
  }

  static matchInfo(Pattern p, String line) {
    Iterable matches = p.allMatches(line);
    for (Match m in matches) {
      if (m != null) {
        print('MatchInfo $m, count= ${m.groupCount}');
      }
    }
  }

}




class Protocol {
  final String name;
  final List<Parameter> parameters;
  final List<Rule> rules;
  final List<ParseError> errors;
  final String _inPath;
  final List<String> lines;

  Protocol(this.name, this.parameters, this.rules, this.errors, [this._inPath, this.lines]);

  Protocol.old(this.parameters, this.rules, this.errors, [this._inPath, this.lines]) : name = "";

  Map<String, dynamic> get map =>
      {
        "name": name,
        "parameters": parameters,
        "rules": rules,
        "errors": errors,
        "filename": _inPath,
        "lines": lines
      };

  //String get json => JSON.encode(map);

  String get inPath => _inPath.replaceAll(r"\\", r"/");

  String get json {
    List plist = [];
    parameters.forEach((Parameter p) => plist.add(p.json));
    List rlist = [];
    rules.forEach((Rule r) => rlist.add(r.json));
    var elist = [];
    errors.forEach((ParseError e) => elist.add(e.json));
    var lines = [];
    lines.forEach((String s) => lines.add("$s"));
    return '''
{
    "name": "$name",
    "parameters": [${plist.join(",\n")}],
    "rules": [${rlist.join(",\n")}],
    "errors": [${elist.join(",\n")}],
    "filename": "$inPath",
    "lines": [${lines.join(",\n")}]
}''';
  }

  String format([ProtocolFormat format]) {
    switch (format) {
      case ProtocolFormat.json:
        return json;
      case ProtocolFormat.txt:
      //TODO:
        return "Text is not yet supported.";
      case ProtocolFormat.xml:
        return "XML is not yet supported.";
      default:
        return json;
    }
  }

  void writeFile([String outPath, ProtocolFormat fmt = ProtocolFormat.json]) {
    File outFile = new File(outPath);
    print('outFile: ${outFile.path}');
    //outFile.writeAsStringSync(format(fmt));
    outFile.writeAsStringSync(json);
  }

  String toString() => 'Protocol: $name';

  static Protocol parse(List<String> lines, [String inPath]) {
    //TODO: add a name for the protocol
    String name;
    List<Parameter> parameters = [];
    List<Rule> rules = [];
    List<ParseError> errors = [];

    //print('rule: ${Rule.}');
    //print('ifRule: ${Rule.ifRule}');
    //print('reset: ${Rule.resetRule}');
    for (int i = 0; i < lines.length; i++) {
      var line = lines[i];
      var s = line.trim();
      //print('line: $s');
      if (s[0] == "#") continue;

      if (s.indexOf("param.") == 0) {
        var value = Parameter.parse(i, line);
        if (value is Parameter) {
          parameters.add(value);
        } else if (value is ParseError) {
          errors.add(value);
        } else {
          throw "Parameter Parsing Error: line($i): $line";
        }
      } else if (s.indexOf("set.[") == 0) {
        var value = Rule.parse(i, line);
        if (value is Rule) {
          rules.add(value);
        } else if (value is ParseError) {
          errors.add(value);
        } else {
          throw "Rule Parsing Error: line($i): $line";
        }
      }
    }
    //return new Protocol(name, parameters, rules, errors, inPath, lines);
    print('parameters: $parameters');
    print('rules: $rules');
    print('errors: $errors');
    return new Protocol("", parameters, rules, errors, inPath, lines);
  }

  static Protocol parseFile
      (inPath, [String outPath]) {
    File inFile = new File(path.normalize(inPath));
    print('File: ${inFile.path}');
    List<String> lines = inFile.readAsLinesSync();
    return parse(lines, inPath);
  }

  static String get extension => '.dvp';

  static String toOutPath(String outPath) {
    var fdir = path.dirname(outPath);
    var fname = path.basenameWithoutExtension(outPath);
    outPath = '$fdir$fname.dvp';
    print('outPath: $outPath');
    return outPath;
  }
}
