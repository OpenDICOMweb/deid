// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

class DeIdentifiedStudy {
  Study study;

  /// De-Identify a DICOM Study
  DeIdentifiedStudy(this.study) {
    study.uid = new UuidUid();

    for (Series series in study.series.values) {
      series.uid = new UuidUid();
      for (Instance instance in series.instances.values)
        instance.uid = new UuidUid();
    }
  }
}