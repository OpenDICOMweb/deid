// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.deidentification.patient_map;

import 'dart:convert';

import 'trial.dart';

class PatientMap {
  final Trial trial;
  final Map<int, int> _map;

  PatientMap(this.trial, this._map);

  int lookup(int ptid) => _map[ptid];

  static PatientMap load(String trial, String patientMap) {
    Trial t = JSON.decode(trial);
    Map<int, int> map = JSON.decode(patientMap);
    return new PatientMap(t, map);
  }

}