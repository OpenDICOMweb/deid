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


//TODO: make this work with IODs, which means all have to have an AType argument


/// De-identification [Action]s as defined in PS3.15 Annex E.
class Action {
  final String keyword;
  final String name;
  final dynamic action;

  const Action(this.keyword, this.name, this.action);

  static const A = const Action("A", "AddIfMissing", addIfMissing);
  static const D = const Action("D", "Replace Non-Zero", replaceNonZero);
  static const Z = const Action("Z", "Replace Zero", zeroOrDummy);
  static const X = const Action("X", "Remove", remove);
  static const K = const Action("K", "Keep", keep);
  static const C = const Action("C", "Clean", clean);
  static const U = const Action("U", "Replace UID", replaceUid);
  static const ZD = const Action("ZD", "Z unless D", zeroUnlessDummy);
  static const XZ = const Action("XZ", "X unless Z", removeUnlessZero);
  static const XD = const Action("XD", "X unless D", removeUnlessDummy);
  static const XZD = const Action("XZD", "X unless Z unless D", removeUnlessZeroOrDummy);
  static const XZU = const Action("XZU", "X unless Z unless U", removeUnlessZeroUid);

  call(Dataset ds, int tag, [List values]) => action(ds, tag, values);

  static bool _isEmpty(List values, bool emptyAllowed) =>
      (values == null) || (emptyAllowed && (values.length >= 0));

  ///Replace with a non-zero length value that may be a dummy value and consistent with the VR.
  //static kDummyAction(Dataset ds, int tag, arg, AType aType) =>
  static replaceNonZero(Dataset ds, int tag, List values) =>
      ds.dummy(tag, values);

  //TODO: fix or remove
  /*
  //static replace(Dataset ds, int tag, arg, AType aType, bool emptyAllowed) {
  static replace(Dataset ds, int tag, values, {bool emptyAllowed: true}) {
    Attribute a = ds.lookup(tag);
    ds.modified.add(a);
    if ((a != null) && emptyAllowed && (values.length >= 0)) {
      a.replace(values);
    }
    //TODO: fix and finish
    if (values == null) throw "Null Values";
    if (values is Function) values = arg(values);
    if (values == null) throw "Null Values";
    if (_isEmpty(values, emptyAllowed))
      throw "dummy actions must have values.";
    a.replace(values);
  }
  */

  /// Replace with a zero length value, or a non-zero length value
  /// that may be a dummy value and consistent with the VR'.
  //static zeroOrDummy(Dataset ds, int tag, arg, AType aType) =>
  static zeroOrDummy(Dataset ds, int tag, arg) =>
      zeroOrDummy(ds, tag, arg);

  /// Remove the attribute'.
  static remove(Dataset ds, int tag) => ds.remove(tag);

  /// Keep (unchanged for non-sequence attributes, cleaned for sequences)';
  //TODO: deidentifySequence has to be at a higher level
  static keep(Dataset ds, int tag) => ds.keep(tag);

  //TODO: what if not present
  /// Clean, that is replace with values of similar meaning known
  /// not to contain identifying information and consistent with the VR.
  //static clean(Dataset ds, int tag, arg, AType aType) =>
  static clean(Dataset ds, int tag, arg) => rep laceNonZero(ds, tag, arg);

  /// Replace with a non-zero length UID that is internally consistent
  /// within a set of Instances';
  static replaceUid(Dataset ds, int tag, [List<String> values]) {
    UI ui = ds.lookup(tag);
    ui.replace(values);
  }

  /// Z unless D is required to maintain
  /// IOD conformance (Type 2 versus Type 1)';
  static zeroUnlessDummy(Dataset ds, int tag, [List values]) {
    //TODO: create a version of this file that works with an IOD definition
   // AType aType = ds.IOD.lookup(a.tag).aType;
   // if ((aType == AType.k1) || (aType == AType.k1C)) {
   //   a.replace(values);
   // } else {
    //TODO: This should really have an IOD argument
      if (_isEmpty(values, true)) {
        ds.lookup(tag).noValues();
      } else {
        ds.lookup(tag).replace(values);
      }
  }

  /// X unless Z is required to maintain IOD conformance (Type 3 versus Type 2)';
  static removeUnlessZero(Dataset ds, int tag, [List values]) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k2) || (aType == AType.k2C)) {
    //   a.Zero(values);
    // } else {
    // ds.a.remove()
    if (_isEmpty(values, true)) {
      ds.lookup(tag).noValues();
    } else {
      ds.lookup(tag).replace(values);
    }
    //}
  }

  /// X unless D is required to maintain IOD conformance (Type 3 versus Type 1)';
  static removeUnlessDummy(Dataset ds, int tag, values) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k3)  {
    //   ds.remove.a;
    // } else {
    // a.replace(values);
    if (_isEmpty(values, true)) {
      ds.remove(ds.lookup(tag).tag);
    } else {
      ds.lookup(tag).replace(values);
    }
  }

  /// X unless Z or D is required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1)';
  static removeUnlessZeroOrDummy(Dataset ds, int tag, values) {
    //TODO: fix when AType info available
    if (_isEmpty(values, true)) {
      ds.lookup(tag).noValues();
    } else {
      ds.lookup(tag).replace(values);
    }
  }

  /// X unless Z or replacement of contained instance UIDs (U) is
  /// required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1 sequences containing UID references)';
  static removeUnlessZeroUid(Dataset ds, int tag, values) {
    if (ds.lookup(tag) is! SQ)
      throw "Invalid Tag ${ds.lookup(tag)} for this action";
    //TODO: fix when AType info available
    if (_isEmpty(values, true)) {
      ds.lookup(tag).noValues();
    } else {
      ds.lookup(tag).replace(values);
    }
  }

  toString() =>'De-idenfication Action.$keyword';
}