// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/dictionary.dart';

// TODO: finish.
// Retain Safe Private Option (a DICOM de-identification aption).
class RetainSafePrivateOption {
  final String keyword;
  final int tag;
  final VR vr;
  final String action;

  const RetainSafePrivateOption(this.keyword, this.tag, this.vr, this.action);

  static RetainSafePrivateOption lookup(int tag) => map[tag];



static const List<int> keep = const [

  ];

static const List<int> remove = const [

  ];

static const Map<int, RetainSafePrivateOption> map = const {

  };

static const List<int> tags = const [

  ];
}
