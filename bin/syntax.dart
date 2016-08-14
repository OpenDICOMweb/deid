// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

class Grammar {

  // Identifier expressions

  // Parameter Names and Function names are [identifier]s
  static const String id = r'([\w]+)';
  static final idRE = new RegExp(id);
  static const String atId = r'(@[\w]+)';
  static final atIdRE = new RegExp(atId);

  static const String int = r'([-+]*\d)';
  static final RegExp intRE = new RegExp(int);

  static const String uint = r'(*\d)';
  static final RegExp uintRE = new RegExp(int);

  static const String string = r'(\".*\")';
  static final RegExp stringRE = new RegExp(string);

  static const String tag = r'(\[\d{4},\d{4\])';
  static final RegExp tagRE = new RegExp(tag);

  static const String element = '$id|$tag';
  static final RegExp elementRE = new RegExp(element);

  //static const String key = '$element|$id';
  static final RegExp keyRE = elementRE;

  //TODO: this just makes sure the charset is correct, not necessarily valid
  static const String uid = r'([\d\.]*)';
  static final RegExp uidRE = new RegExp(uid);

  static const String action = r"remove|keep|empty|skip|default|ignore";
  static final RegExp actionRE = new RegExp(action);

  static const String condition = r'exists|isblank|equals|contains|matches';
  static final RegExp conditionRE = new RegExp(condition);

  static const String keyType = id;
  static final RegExp keyTypeRE = idRE;

  static const String year = r'\d{4}';
  static final RegExp yearRE = new RegExp(year);
  static const String month = r'\d{2}';
  static final RegExp monthRE = new RegExp(month);
  static const String day = month;
  static final RegExp darRE = monthRE;

  static const String date = '$year-?$month-?$day';
  static final RegExp dateRE = new RegExp(date);

  static const String quotedString = r'(\".*\")';
  static final RegExp quotedStringRE = new RegExp(quotedString);

  static const String functionArgs ='';
  static const String function = '$atId\($functionArgs\)';
  static final RegExp functionRE = new RegExp(function);

  static const String scriptArg = '$function|$string|$quotedString';
  static const String boundedScript = '\{$scriptArg\}';
  static final RegExp scriptRE = new RegExp('$boundedScript|$scriptArg');

  static const String emptyArg ='';
  static final RegExp appendRE = new RegExp('$emptyArg');

  static const String valueExp = r'';
  static const String separator = r'.';
  static const String valueField = r'(id\\)*';

  static const String key = '$string|$element';
  //static const String

  // Parameter Expressions (single line)

  static const String pValue = r'([\$|@|\-|\d|\w]+)';
  static const String parameterExp = 'param.$id\s*=\s*$pValue';
  static final RegExp param = new RegExp(parameterExp);

  // Keep Group (global) Expressions (keep.group10)
  static final String keepExp =
      'keep.group18'
      '|keep.group20'
      '|keep.group28'
      '|keep.group50'
      '|keep.group60'
      '|keep.curves'
      '|keep.safePrivate'
      '|keep.overlays'
      '|keep.group\\d{2}';
  static final RegExp keepRegExp = new RegExp(keepExp);

  // Remove Group (global) Expressions (remove.group10)
  static final String removeExp =
      'remove.group18'
      '|remove.group20'
      '|remove.group28'
      '|remove.group50'
      '|remove.group60'
      '|remove.curves'
      '|remove.safePrivate'
      '|remove.overlays'
      '|remove.group\\d{2}';
  static final RegExp removeRegExp = new RegExp(removeExp);

  static final functionMap =  {
    "@add": {"value": string},
    "@blank": {"n": uint},
    "@append": {"script": scriptRE},
    "@always": {"script": scriptRE},
  //  "@call": {"id": id, "args": argValues},
    "@contents": {"id": id, "regexp": string, "string":string},
    "@date": {"separator": separator},
    "@empty": {},
    "@encrypt": {"element": element, "key": key},
    "@hash": {"element": element, "maxCharsOutput": uint},
    "@hashdate": {"element": element, "hashElementName": id},
    "@hashName": {"element": element, "maxCharsOutput": uint, "maxWordsInput": uint},
    "@hashptid": {"@siteID": string, "element": element},
    "@hashuid": {"root": uid, "element": element, "element2": element, "extraParam": param},
    "@if": {"element": element, "condition": condition, "x": param, "true": scriptRE, "false":
    scriptRE},
    "@incrementDate": {"element": element, "incInDays": int},
    "@initials": {"element": element, "offset": int},
    "@integer": {"element": element, "keyType": keyType, "width": uint},
    "@keep": {},
    "@lookup": {"element": element, "keyType": keyType, "action": action},
    "@lowercase": {"element": element},
    "@modifyDate":
      {"element": element, "year": year, "month": month, "day": day, "defaultDate": date},
    "@param": {"@parameterName": atId},
    "@pathelement": {"element": element, "index": int},
    "@process": {},
    "@remove": {},
    "@require": {"element": element, "defaultValue": string},
    "@round": {"element": element, "groupsize": uint},
    "@time": {"separator": separator},
    "@truncate": {"element": element, "n": int},
    "@uppercase": {"element": element},
    "@value": {"element": element, "defaultValue": string}
  };

  static final functionExp =  {
    "@add": stringRE,
    "@blank": uintRE,
    "@append": scriptRE,
    //  "@call": {"id": id, "args": argValues},
    "@contents": {"id": id, "regexp": string, "string":string},
    "@always": {},
    "@date": {"separator": separator},
    "@empty": {},
    "@encrypt": {"element": element, "key": key},
    "@hash": {"element": element, "maxCharsOutput": uint},
    "@hashdate": {"element": element, "hashElementName": id},
    "@hashName": {"element": element, "maxCharsOutput": uint, "maxWordsInput": uint},
    "@hashptid": {"@siteID": string, "element": element},
    "@hashuid": {"root": uid, "element": element, "element2": element},
    "@incrementDate": {"element": element, "incInDays": int},
    "@initials": {"element": element, "offset": int},
    "@integer": {"element": element, "keyType": keyType, "width": uint},
    "@keep": {},
    "@lookup": {"element": element, "ptid": uint, "action": action},
    "@lowercase": {"element": element},
    "@modifyDate": {"element": element, "year": year, "month": month, "day": day,
  "defaultDate": date},
    "@param": pValue,
    "@pathelement": {"element": element, "index": int},
    "@process": {},
    "@remove": {},
    "@require": {"element": element, "defaultValue": string},
    "@round": {"element": element, "groupsize": uint},
    "@time": {"separator": separator},
    "@truncate": {"element": element, "n": int},
    "@uppercase": {"element": element},
    "@value": {"element": element, "defaultValue": string}
  };

}