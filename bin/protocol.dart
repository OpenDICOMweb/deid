// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.protocol;

import 'dart:convert';
import 'dart:io';

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

  toString() => 'Protocol Parse Error(line: $lineNo) $msg';
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
    var v = (value is num) ? value : "$value";
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
  static const String tagExp = r"\[([0-9a-fA-F]{4}),([0-9a-fA-F]{4})\]";
  static const String kwExp = r'(\w+)';
  static const String funcExp = r'([@\w]+)';
  static const String argExp = r'([\w\s|@|\-|\^|\,|\"|$|*|&]*)';
  String foo = r'([\$|@|\-|\d|\w]+)';
  static const String ruleExp =
      'set.$tagExp\\s$kwExp\\s=\\s$funcExp\\($argExp\\)';
  static final RegExp ruleRegExp = new RegExp(ruleExp);
  static const String reset = r'RESET|Reset|reset(\/\d*)+';
  static const String resetExp =
      'set.$tagExp\\s$kwExp\\s=\\s$reset\\($argExp\\)';
  static final RegExp resetRuleRegExp = new RegExp(resetExp);
  // If Rule
  static const ifExp = r'@if(()';
  int targetTag;
  String keyword;
  String function;
  List args;
  List scripts;

  Rule(this.targetTag, this.keyword, this.function, this.args, this.scripts);

  Map<String, dynamic> get map => {
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
    bool isReset = false;
    var s = line.trim();
    if (s.indexOf("set.[") == 0) {
      Match m = ruleRegExp.firstMatch(s);
      if (m == null) {
        m = resetRuleRegExp.firstMatch(s);
        if (m == null) return new ParseError(lineNo, line);
        isReset = true;
      }

      var group = m[1];
      var element = m[2];
      int target = int.parse('0x$group$element');

      // add tag validation
      //    var tag = Tag.lookup(target);
      var keyword = m[3];
      var function = m[4];
      String args = m[5];
      List argList;
      if (args == null) {
        argList = [];
      } else if (isReset) {
        argList = [args];
      } else {
        argList = args.split(",");
        int index = argList.indexOf("this");
        if (index >= 0) argList[index] = target;
      }

      //TODO: Parse Scripts
      var scripts = [];

      return new Rule(target, keyword, function, argList, scripts);
    }
  }
}

enum ProtocolFormat { txt, json, xml }

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
