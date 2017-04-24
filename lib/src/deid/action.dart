// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

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

const List<String> defaultDummyValue = const [ "Open DICOMweb De-Identifier"];

/// De-identification [Action]s as defined in PS3.15 Annex E.
class Action {
  final int index;
  final String id;
  final String keyword;
  final String description;
  final dynamic action;

  const Action(this.index, this.id, this.keyword, this.description, this
      .action);

  static const kInvalid = const Action(1, "", "Invalid",
      "Invalid/Undefined Action", invalid);

  static const X = const Action(1, "X", "Remove", "Remove Element", remove);

  static const U = const Action(2, "U", "ReplaceUid", "Replace UID value(s)",
      replaceUids);

  static const Z = const Action(3, "Z", "ReplaceWithNoValue",
      "Replace with NoValue (or Dummy value(s))", replaceNoValue);

  static const XD = const Action(4, "XD", "RemoveUnlessDummy",
      "Remove(X) unless Dummy(D)",
      removeUnlessDummy);

  static const XZ = const Action(5, "XZ", "RemoveUnlessNoValue",
      "Remove(X) unless NoValue(Z)",
      removeUnlessZero);

  static const XZD = const Action(6, "XZD",  "RemoveUnlessZeroOrDummy",
      "Remove(X) unless Replace with NoValue(Z) unless Replace with Dummy(D)",
      removeUnlessZeroOrDummy);

  static const D = const Action(7, "D", "ReplaceWithDummy",
      "Replace with Dummy value(S)",
      replaceWithDummy);

  static const ZD = const Action(8, "ZD", "NoValueUnlessDummy",
      "Replace with NoValue(Z) unless Dummy required",
      zeroUnlessDummy);

  static const XZU = const Action(9, "XZU", "RemoveUidUnlessNoValueOrReplace",
      "X "
      "unless Z "
      "unless U",
      RemoveUidUnlessNoValueOrReplace);
  static const K = const Action(10, "K", "Keep", "Keep Element", keep);

  //Urgent: figure out what this means
  static const KB = const Action(11, "KB", "KeepBe___","Keep Because ????",
      keepBecause);

  static const C = const Action(12, "C", "Clean",
      "Remove PII from value(s)", clean);

  static const A = const Action(13, "A", "Add", "Add If Missing", addIfMissing);

  static const UN = const Action(14, "UN", "Unknown", "Action Unknown",
      unknownAction);

  call(Dataset ds, int tag, [List values]) => action(ds, tag, values);

  static bool _isEmpty(List values, bool emptyAllowed) =>
      (values == null) || (emptyAllowed && (values.length >= 0));

  static replaceWithDummy(Dataset ds, int tag, [List values]) =>
      ds.replaceWithDummy(tag, values);

  /// Replace with a zero length value, or a non-zero length value
  /// that may be a dummy value and consistent with the VR'.
  //static zeroOrDummy(Dataset ds, int tag, arg, AType aType) =>
  static replaceNoValue(Dataset ds, int tag, List values) =>
      ds.replaceWithNoValue(tag, values);

  /// Remove the attribute'.
  static remove(Dataset ds, int tag) => ds.remove(tag);

  /// Keep (unchanged for non-sequence attributes, cleaned for sequences)';
  //TODO: deidentifySequence has to be at a higher level
  static keep(Dataset ds, int tag) => ds.keep(tag);

  //TODO: what if not present
  /// Clean, that is replace with values of similar meaning known
  /// not to contain identifying information and consistent with the VR.
  //static clean(Dataset ds, int tag, arg, AType aType) =>
  static bool clean(Dataset ds, int tag, List values) =>
      ds.cleanValues(tag, values);

  /// Replace with a non-zero length UID that is internally consistent
  /// within a set of Instances';
  static bool replaceUids(Dataset ds, int tag, [List<String> values]) =>
    ds.replaceUids(tag, values);


  /// Z unless D is required to maintain
  /// IOD conformance (Type 2 versus Type 1)';
  static zeroUnlessDummy(Dataset ds, int tag, [List values]) {
    //TODO: create a version of this file that works with an IOD definition
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k1) || (aType == AType.k1C)) {
    //   a.replace(values);
    // } else {
    //TODO: This should really have an IOD argument
    if (_isEmpty(values, true))
      return ds.noValues(tag);
    return ds.update(tag, values);
  }

  /// X unless Z is required to maintain IOD conformance (Type 3 versus Type 2)';
  static bool removeUnlessZero(Dataset ds, int tag, [List values]) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k2) || (aType == AType.k2C)) {
    //   a.Zero(values);
    // } else {
    // ds.a.remove()
    if (_isEmpty(values, true))
      return ds.noValue(tag);
    return ds.replace(tag, values);
  }

  /// X unless D is required to maintain IOD conformance (Type 3 versus Type 1)';
  static bool removeUnlessDummy(Dataset ds, int tag, values) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.tag).aType;
    // if ((aType == AType.k3)  {
    //   ds.remove.a;
    // } else {
    // a.replace(values);
    if (_isEmpty(values, true))
      return ds.remove(tag);
    return ds.replace(tag, values);
  }

  /// X unless Z or D is required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1)';
  static bool removeUnlessZeroOrDummy(Dataset ds, int tag, values) {
    //TODO: fix when AType info available
    if (_isEmpty(values, true))
      return ds.noValues(tag);
    return ds.lookup(tag).replace(values);
  }

  /// X unless Z or replacement of contained instance UIDs (U) is
  /// required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1 sequences containing UID references)';
  static RemoveUidUnlessNoValueOrReplace(Dataset ds, int tag, values) {
    if (ds.lookup(tag) is! SQ) throw "Invalid Tag ${ds.lookup(tag)} for this action";
    //TODO: fix when AType info available
    if (_isEmpty(values, true)) return ds.noValues(tag);
    return ds.replace(tag, values);
  }

  toString() =>'De-idenfication Action.$id';

  static const Map<String, Action> map = const {
    //TODO: Turn into Jump table
    "X": X, "Z": Z, "D": D, "U": U, "XZ": XZ, "XD": XZ, "ZD": ZD, "A": A, "K": K, "C": C
  };
}