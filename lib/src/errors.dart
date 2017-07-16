// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

import 'package:deid/deid.dart';

class InvalidDeIdentificationActionError extends Error {
  final Action action;
  final String msg;

  InvalidDeIdentificationActionError(this.action, [this.msg]);

  @override
  String toString() => 'runtimeType: $msg';
}