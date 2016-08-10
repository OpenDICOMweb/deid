// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.


import 'package:core/dicom.dart';

/// This library implements DICOM study de-identification.  It conforms to
/// DICOM PS3.15 Appendix E.
///
/// D   - Replace with a non-zero length value that may be a dummy value and consistent
///       with the VR.
/// Z   - Replace with a zero length value, or a non-zero length value that may be a dummy
///       value and consistent with the VR.
/// X   - Remove.
/// K   - Keep (unchanged for non-sequence attributes, cleaned for sequences).
/// C   - Clean, that is replace with values of similar meaning known not to contain
///       identifying information and consistent with the VR.
/// U   - Replace with a non-zero length UID that is internally consistent within a set
///       of Instances.
/// ZD  - Z unless D is required to maintain IOD conformance (Type 2 versus Type 1).
/// XZ  - X unless Z is required to maintain IOD conformance (Type 3 versus Type 2).
/// XD  - X unless D is required to maintain IOD conformance (Type 3 versus Type 1).
/// XZD - X unless Z or D is required to maintain IOD conformance
///         (Type 3 versus Type 2 versus Type 1).
/// XZU - X unless Z or replacement of contained instance UIDs (U) is required to
///         maintain IOD conformance (Type 3 versus Type 2 versus Type 1 sequences
///         containing UID references).

//typedef dynamic Action(Attribute a, values);

class DeIdAction {
  final String keyword;
  final String name;
  final dynamic action;
  final String doc;

  //TODO:
  // 1. Make Keep List and make sure they are not removed, issue error if not present;

  const DeIdAction(this.keyword, this.name, this.action, this.doc);

  static const dummy = const DeIdAction("D", "Replace Non-Zero", kDummyAction, kDummyInfo);
  static const D = dummy;
  static const zeroOrDummy = const DeIdAction("Z", "Replace Zero", kZeroAction, kZeroInfo);
  static const Z = zeroOrDummy;
  static const remove = const DeIdAction("X", "Remove", kRemoveAction, kXinfo);
  static const X = remove;
  static const keep = const DeIdAction("K", "Keep", kKeepAction, kKeepInfo);
  static const K = keep;
  static const clean = const DeIdAction("C", "Clean", kCleanAction, kCleanInfo);
  static const C = clean;
  static const uid = const DeIdAction("U", "Replace UID", kUidAction, kUidInfo);
  static const U = uid;
  static const ZD = const DeIdAction("ZD", "Z unless D", kZDaction, kZDinfo);
  static const XZ = const DeIdAction("XZ", "X unless Z", kXZaction, kXZinfo);
  static const XD = const DeIdAction("XD", "X unless D", kXDaction, kXDinfo);
  static const XZD = const DeIdAction("XZD", "X unless Z unless D", kXZDaction, kXZDinfo);
  static const XZU = const DeIdAction("XZU", "X unless Z unless U", kXZUaction, kXZUinfo);

  call(Dataset ds, Attribute a, List values) {
    action(ds, a, values);
  }

  // dummy equals replace with values not empty;
  static _check(List values) {
    if ((values == null) || (values.length <= 0))
      throw "Invalid values ($values) for D action";
  }

  static bool _isEmpty(List values) =>
      ((values == null) || (values.length == 0));

  //TODO finish all these actions
  static const String kDummyInfo =
      'Replace with a non-zero length value that may be a dummy value and consistent with the VR';

  /// Replace with non-zero or consistent dummy values
  //kDummy
  static kDummyAction(Dataset ds, Attribute a, values) {
    _check(values);
    a.replace(values);
  }

  static const String kZeroInfo =
      'Replace with a zero length value, or a non-zero length value'
      ' that may be a dummy value and consistent with the VR';

  //kZero or kDummy
  static kZeroAction(Dataset ds, Attribute a, [List values]) =>
    (_isEmpty(values)) ? a.noValue : a.replace(values);

  static const String kXinfo   = 'Remove the attribute';

  // kRemove
  static kRemoveAction(Dataset ds, Attribute a, values) => ds.remove(a.tag);

  static const String kKeepInfo=
      'keep (unchanged for non-sequence attributes, cleaned for sequences)';

  /// Keep.
  static kKeepAction(Dataset ds, Attribute a, List values) {
    if (a is SQ) deIdentifySequence(a);
  }

  static const String kCleanInfo   =
      'clean, that is replace with values of similar meaning known '
      'not to contain identifying information and consistent with the VR';

  //TODO: what if not present
  static kCleanAction(Dataset ds, Attribute a, List values) => a.replace(values);

  static const String kUidInfo   =
      'replace with a non-zero length UID that is internally consistent within a set of Instances';

  static kUidAction(Dataset ds, Attribute a, [List<Uid> values]) {
    assert(a.vr == VR.kUI);
    a.replace(values);
  }

  static const String kZDinfo  = 'Z unless D is required to maintain IOD conformance '
                                '(Type 2 versus Type 1)';

  static kZDaction(Dataset ds, Attribute a, [List values]) {
    //TODO: make this work with IODs
   // AType aType = ds.IOD.lookup(a.tag).aType;
   // if ((aType == AType.k1) || (aType == AType.k1C)) {
   //   a.replace(values);
   // } else {
      if (_isEmpty(values)) {
        a.noValue;
      } else {
        a.replace(values);
      }
    //}
  }

  static const String kXZinfo  =
      'X unless Z is required to maintain IOD conformance (Type 3 versus Type 2)';
  static kXZaction(Dataset ds, Attribute a, [List values]) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k2) || (aType == AType.k2C)) {
    //   a.Zero(values);
    // } else {
    // ds.a.remove()
    if (_isEmpty(values)) {
      a.noValue;
    } else {
      a.replace(values);
    }
    //}
  }

  static const String kXDinfo  =
      'X unless D is required to maintain IOD conformance (Type 3 versus Type 1)';

  static kXDaction(Dataset ds, Attribute a, values) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k3)  {
    //   ds.remove.a;
    // } else {
    // a.replace(values);
    if (_isEmpty(values)) {
      ds.remove(a.tag);
    } else {
      a.replace(values);
    }
  }

  static const String kXZDinfo =
      'X unless Z or D is required to maintain IOD conformance (Type 3 versus '
      'Type 2 versus Type 1)';
  static kXZDaction(Dataset ds, Attribute a, values) {
    //TODO: fix when AType info available
    if (_isEmpty(values)) {
      a.noValue;
    } else {
      a.replace(values);
    }
  }

  static const String kXZUinfo =
      'X unless Z or replacement of contained instance UIDs (U) is required to maintain IOD '
      'conformance (Type 3 versus Type 2 versus Type 1 sequences containing UID references)';
  static kXZUaction(Dataset ds, Attribute a, values) {
    if (a is! SQ) {
      throw "Invalid Tag $a for this action";
    }
  }

  toString() =>'DeIdAction.$keyword';
}