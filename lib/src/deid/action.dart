// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';
import 'package:dictionary/dictionary.dart';

/// This library implements DICOM study de-identification.  It conforms to
/// DICOM PS3.15 Appendix E.
///
/// D   - Replace with a non-zero length value that may be a dummy value and consistent
///       with the VR.
/// Z   - Replace with a zero length value, or a non-zero length value that may be a dummy
///       value and consistent with the VR.
/// X   - Remove.
/// K   - Keep (unchanged for non-sequence attributes, cleaned for sequences).
/// C   - Clean, that is update with values of similar meaning known not to contain
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

  const Action(this.index, this.id, this.keyword, this.description, this.action);

  static const Action kInvalid = const Action(1, "", "Invalid",
      "Invalid/Undefined Action", invalid);

  static const Action X = const Action(1, "X", "Remove", "Remove Element", remove);

  static const Action U = const Action(2, "U", "ReplaceUid", "Replace UID value(s)",
      replaceUids);

  static const Action Z = const Action(3, "Z", "ReplaceWithNoValue",
      "Replace with NoValue (or Dummy value(s))", replaceNoValue);

  static const Action XD = const Action(4, "XD", "RemoveUnlessDummy",
      "Remove(X) unless Dummy(D)",
      removeUnlessDummy);

  static const Action XZ = const Action(5, "XZ", "RemoveUnlessNoValue",
      "Remove(X) unless NoValue(Z)",
      removeUnlessZero);

  static const Action XZD = const Action(6, "XZD",  "RemoveUnlessZeroOrDummy",
      "Remove(X) unless Replace with NoValue(Z) unless Replace with Dummy(D)",
      removeUnlessZeroOrDummy);

  static const Action D = const Action(7, "D", "ReplaceWithDummy",
      "Replace with Dummy value(S)",
      replaceWithDummy);

  static const Action ZD = const Action(8, "ZD", "NoValueUnlessDummy",
      "Replace with NoValue(Z) unless Dummy required",
      zeroUnlessDummy);

  static const Action XZU = const Action(9, "XZU", "RemoveUidUnlessNoValueOrReplace",
      "X "
      "unless Z "
      "unless U",
      removeUidUnlessNoValueOrReplace);
  static const Action K = const Action(10, "K", "Keep", "Keep Element", keep);

  //Urgent: figure out what this means
  static const Action KB = const Action(11, "KB", "KeepBe___","Keep Because ????",
      keepBecause);

  static const Action C = const Action(12, "C", "Clean", "Remove PII from value(s)", clean);

  static const Action A = const Action(13, "A", "Add", "Add If Missing", addIfMissing);

  static const Action UN = const Action(14, "UN", "Unknown", "Action Unknown",
      unknownAction);

  call(Dataset ds, int code, [List values]) => action(ds, code, values);

  static bool _isEmpty(List values, bool emptyAllowed) =>
      (values == null) || (emptyAllowed && (values.length >= 0));

  static invalid(Dataset ds, int code, [List values]) =>
      throw new UnsupportedError("Invalid Action");

  static replaceWithDummy(Dataset ds, int code, [List values]) =>
      ds.updateWithDummy(code, values);

  /// Replace with a zero length value, or a non-zero length value
  /// that may be a dummy value and consistent with the VR'.
  //static zeroOrDummy(Dataset ds, int code, arg, AType aType) =>
  static replaceNoValue(Dataset ds, int code, List values) =>
      ds.updateWithNoValue(code, values);

  /// Remove the attribute'.
  static remove(Dataset ds, int code) => ds.remove(code);

  /// Keep (unchanged for non-sequence attributes, cleaned for sequences)';
  //TODO: deidentifySequence has to be at a higher level
  static keep(Dataset ds, int code) => ds.keep(code);

  /// Keep (unchanged for non-sequence attributes, cleaned for sequences)';
  //TODO: deidentifySequence has to be at a higher level
  static keepBecause(Dataset ds, int code) => ds.keep(code);

  //TODO: what if not present
  /// Clean, that is replace with values of similar meaning known
  /// not to contain identifying information and consistent with the VR.
  //static clean(Dataset ds, int code, arg, AType aType) =>
  static bool clean(Dataset ds, int code, List values) =>
      ds.update(code, values) != null;

  /// Replace with a non-zero length UID that is internally consistent
  /// within a set of Instances';
  static bool replaceUids(Dataset ds, int code, [List<String> values]) =>
    ds.updateUids(code, values);


  /// Z unless D is required to maintain
  /// IOD conformance (Type 2 versus Type 1)';
  static zeroUnlessDummy(Dataset ds, int code, [List values]) {
    //TODO: create a version of this file that works with an IOD definition
    // AType aType = ds.IOD.lookup(a.code).aType;
    // if ((aType == AType.k1) || (aType == AType.k1C)) {
    //   a.replace(values);
    // } else {
    //TODO: This should really have an IOD argument
    if (_isEmpty(values, true))
      return ds.noValue(code);
    return ds.update(code, values);
  }

  /// X unless Z is required to maintain IOD conformance (Type 3 versus Type 2)';
  static bool removeUnlessZero(Dataset ds, int code, [List values]) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.code).aType;
    // if ((aType == AType.k2) || (aType == AType.k2C)) {
    //   a.Zero(values);
    // } else {
    // ds.a.remove()
    if (_isEmpty(values, true))
      return ds.noValue(code);
    return ds.update(code, values);
  }

  /// X unless D is required to maintain IOD conformance (Type 3 versus Type 1)';
  static Element removeUnlessDummy(Dataset ds, int code, values) {
    //TODO: make this work with IODs
    // AType aType = ds.IOD.lookup(a.code).aType;
    // if ((aType == AType.k3)  {
    //   ds.remove.a;
    // } else {
    // a.replace(values);
    if (_isEmpty(values, true))
      return ds.remove(code);
    return ds.update(code, values);
  }

  /// X unless Z or D is required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1)';
  static bool removeUnlessZeroOrDummy(Dataset ds, int code, values) {
    //TODO: fix when AType info available
    if (_isEmpty(values, true))
      return ds.noValues(code);
    return ds.lookup(code).replace(values);
  }

  /// X unless Z or replacement of contained instance UIDs (U) is
  /// required to maintain IOD conformance
  /// (Type 3 versus Type 2 versus Type 1 sequences containing UID references)';
  static removeUidUnlessNoValueOrReplace(Dataset ds, int code, values) {
    if (ds.lookup(code) is! SQ) throw "Invalid Tag ${ds.lookup(code)} for this action";
    //TODO: fix when AType info available
    if (_isEmpty(values, true)) return ds.noValue(code);
    return ds.update(code, values);
  }

  static addIfMissing(Dataset ds, int code, values) {
    if (ds.lookup(code) is! SQ) throw "Invalid Tag ${ds.lookup(code)} for this action";
    //TODO: fix when AType info available
    if (_isEmpty(values, true)) return ds.noValue(code);
    return ds.update(code, values);
  }

  toString() =>'De-idenfication Action.$id';

  static const Map<String, Action> map = const {
    //TODO: Turn into Jump table
    "X": X, "Z": Z, "D": D, "U": U, "XZ": XZ, "XD": XZ, "ZD": ZD, "A": A, "K": K, "C": C
  };
}
