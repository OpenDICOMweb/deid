// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/core.dart';


// DICOM attributes in De-Identification Profile (and Options)
class CleanStructuredContentOption {
  final String keyword;
  final int tag;
  final VR vr;
  final String action;

  const CleanStructuredContentOption(this.keyword, this.tag, this.vr, this.action);

  static CleanStructuredContentOption lookup(int tag) => map[tag];

  static const kAcquisitionContextSequence =
    const CleanStructuredContentOption("AcquisitionContextSequence", 0x00400555, VR.kSQ, "C");
  static const kContentSequence =
    const CleanStructuredContentOption("ContentSequence", 0x0040a730, VR.kSQ, "C");

static const List<int> keep = const [

  ];

static const List<int> remove = const [
  0x00400555,
  0x0040a730
  ];

static const Map<int, CleanStructuredContentOption> map = const {
  0x00400555: kAcquisitionContextSequence,
  0x0040a730: kContentSequence
  };

static const List<int> tags = const [
  0x00400555,
  0x0040a730
  ];
}
