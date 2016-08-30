// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/new_dicom.dart';

class TagGroup {
  final String name;
  final int group;

  const TagGroup(this.name, this.group);

  int get min => group << 16;
  int get max => (group << 16) + 0xFFFF;

  static const group18 = const TagGroup("Group 18", 0x0018);
  static const group20 = const TagGroup("Group 20", 0x0020);
  static const group28 = const TagGroup("Group 28", 0x0028);
  static const group50 = const TagGroup("Group 50", 0x0050);
  static const group60 = const TagGroup("Group 60", 0x0060);
  static const curves = group50;
  static const overLays = group60;

  void kep(Dataset ds) {
    for (int i = min; i <= max; i++)
      ds.keep(i);
  }
  void remove(Dataset ds) {
    for (int i = min; i <= max; i++)
        ds.remove(i);
  }
}

class GlobalRule {
  static const allowedGroupNumbers = const [0x0018, 0x0020, 0x0028, 0x0050, 0x0060];
  bool deIdentify = true;
  bool keepSafePrivate = false;
  bool removePrivate = true;
  List<int> options = [];

  List<TagGroup> keepGroups = [];
  List<TagGroup> removeGroups = [];

  GlobalRule();

  bool keep(TagGroup group) {
    if (allowedGroupNumbers.contains(group)) {
      keepGroups.add(group);
      return true;
    } else {
      return false;
    }
  }

  bool remove(TagGroup group) {
    if (allowedGroupNumbers.contains(group)) {
      removeGroups.add(group);
      return true;
    } else {
      return false;
    }
  }

}

// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


//import 'package:core/new_base.dart';

const dataTypes = const ["char", "condition", "date", "default", "int", "param","regexp",
"siteId", "tag", "uidroot", "uint", "year", "month", "day"];
const vrTypes = const ["string", "AS", "DA", "LO", "private", "SQ", "TM", "UI", "??"];

class GlobalRuleType {
  final String name;
  final String vrType;
  final int min;
  final int max;
  final int nScripts;
  final List<String> argTypes;
  final Function argPredicate;

  const GlobalRuleType(this.name, this.vrType, this.min, this.max, this.nScripts,
                 [this.argTypes, this.argPredicate]);

  bool get hasArgs => min > 0;

  bool get hasScripts => nScripts > 0;

  bool validArgs(List args) => argPredicate(args);



  // Whitespace is allowed but ignored.  "RESET" might be present
  static const deIdentificationMethodCodeSeq =
  const GlobalRuleType("@DeIdentificationMethodCodeSeq", "SQ", 1, 1, 0, const ["string"]);

  static const keepGroup = const GlobalRuleType("@keepGroup", "uint", 1, 1, 1);
  static const keepGroup18 = const GlobalRuleType("@keepGroup18", "*", 0, 0, 0);
  static const keepGroup20 = const GlobalRuleType("@keepGroup20", "*", 0, 0, 0);
  static const keepGroup28 = const GlobalRuleType("@keepGroup28", "*", 0, 0, 0);
  static const keepGroup50 = const GlobalRuleType("@keepGroup50", "*", 0, 0, 0);
  static const keepGroup60 = const GlobalRuleType("@keepGroup60", "*", 0, 0, 0);
  static const keepCurves = keepGroup50;
  static const keepOverLays = keepGroup60;
  static const keepSafePrivate = null;

  static const keepPrivateGroup = const GlobalRuleType("@pkeepPrivateGroup", "private", 1, 1, 0);

  static const removeUncheckedElements = const GlobalRuleType("@removeUncheckedElements", "*", 0, 0, 0);

  static const removeGroup = const GlobalRuleType("@removeGroup", "uint", 1, 1, 1);
  static const removeGroup18 = const GlobalRuleType("@removeGroup18", "*", 0, 0, 0);
  static const removeGroup20 = const GlobalRuleType("@removeGroup20", "*", 0, 0, 0);
  static const removeGroup28 = const GlobalRuleType("@removeGroup28", "*", 0, 0, 0);
  static const removeGroup50 = const GlobalRuleType("@removeGroup50", "*", 0, 0, 0);
  static const removeGroup60 = const GlobalRuleType("@removeGroup60", "*", 0, 0, 0);
  static const removeCurves = removeGroup50;
  static const removeOverlays = removeGroup60;

  static const removeAllPrivateGroups = const GlobalRuleType("@removePrivateGroups", "", 0, 0, 0);
  static const removePrivateGroup = const GlobalRuleType("@removePrivateGroup", "string", 1, 1, 0);

  //TODO: these might work with whole groups
  static const ifExists = const GlobalRuleType("@ifExists", "*", 1, 1, 2, const ["tag"]);
  static const ifBlank = const GlobalRuleType("@ifBlank", "string", 1, 1, 2, const ["tag"]);
  static const ifEquals = const GlobalRuleType("@ifEquals", "*", 2, 2, 2, const ["tag", "string"]);
  static const ifContains = const GlobalRuleType("@ifContains", "string", 2, 2, 2,
                                               const ["tag", "string"]);
  static const ifMatches = const GlobalRuleType("@ifMatches", "*", 2, 2, 2, const ["tag", "string"]);


  bool blankArgPredicate(List args) {
    if (args.length == 0) return true;
    if (args.length == 1) {
      int val = int.parse(args[0], onError: (s) => null);
      if (val != null) return true;
    }
    return false;
  }

  static const Map<String, GlobalRuleType> globalRuleTypeMap = const {
    "@deIdentificationMethodCodeSeq": deIdentificationMethodCodeSeq,
    //TODO: Should be keep or remove other groupNumbers
    "@keepGroup": keepGroup,
    "@keepGroup18": keepGroup18,
    "@keepGroup20": keepGroup20,
    "@keepGroup28": keepGroup28,
    "@keepGroup50": keepGroup50,
    "@keepGroup60": keepGroup60,
    "@keepCurves": keepCurves,
    "@keepOverlays": keepOverLays,
    "@keepSafePrivate": keepSafePrivate,

    "@keepPrivateGroup": keepPrivateGroup,

    "@removeGroup": removeGroup,
    "@removeGroup18": removeGroup18,
    "@removeGroup20": removeGroup20,
    "@removeGroup28": removeGroup28,
    "@removeGroup50": removeGroup50,
    "@removeGroup60": removeGroup60,
    "@removeCurves": removeCurves,
    "@removeOverlays": removeOverlays,

    "@removeAllPrivateGroups": removeAllPrivateGroups,
    "@removePrivateGroup": removePrivateGroup,

    //TODO: are this useful globally
    "@ifExists": ifExists,
    "@ifBlank": ifBlank,
    "@ifEquals": ifEquals,
    "@ifContaints": ifContains,
    "@ifMatches": ifMatches,
  };


  static final List<String> names = globalRuleTypeMap.keys;

  static final List<GlobalRuleType> rules = globalRuleTypeMap.values;

  /* TODO: delete after verifying that [names] and [values] work
  static const List<String> ruleNames = const [
    "@deIdentificationMethodCodeSeq",
    "@empty",
    "@encrypt",
    "@hash",
    "@hashuid",
    "@hashname",
    "@hashptid",
    "@hashPtId",
    "@if",
    "@incrementDate",
    "@initials",
    "@integer",
    "@keep",
    "@keepGroup18",
    "@keepGroup20",
    "@keepGroup28",
    "@keepGroup50",
    "@keepGroup60",
    "@keepCurves",
    "@keepOverlays",
    "@keepSafePrivate",
    "@lookup",
    "@modifiyDate",
    "@param",
    "@privateattribute",
    "@privateElement",
    "@process",
    "@ptidlookup",
    "@remove",
    "@removePrivateGroup",
    "@removeGroup18",
    "@removeGroup20",
    "@removeGroup28",
    "@removeGroup50",
    "@removeGroup60",
    "@removeCurves",
    "@removeOverlays",
    "@require",
    "@round",
    "@select",
    "@skip",
    "@time",
    "@truncate"
        "@ifExists",
    "@ifBlank",
    "@ifEquals",
    "@ifContaints",
    "@ifMatches"
  ];
*/
}
