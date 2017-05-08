// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

class Action {
  final String name;
  final String code;

  const Action(this.name, this.code);

  String get id => '$code';

  String toString() => 'Action.$id';

  static const K = const Action("Keep", "K");
  //TODO: what does Action.kKeepXXXXXX
  static const KB = const Action("KeepXXXXXX", "KB");
  static const X = const Action("Remove", "X");
  static const R = const Action("Replace", "R");

  static const Map<String, Action> codes = const {
    "Keep": K,
    "KeepXX": KB,
    "Remove": X,
    "Replace": R
  };

  static Action lookup(String code) => codes[code];

}