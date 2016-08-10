// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.deid.patient;

import 'package:uuid/uuid_v4.dart';
import 'package:core/dicom.dart';

import 'option.dart';

/// Defines a patient and related attributes
/// Includes some transformation functions
abstract class Patient {
  List<Attribute> attributes;
  bool          isDeidentified;
  String        name;
  String        dob;
  List<String>    pids;

  String get initials => name.first[0] + name.middle[0] + name.last[0];
  Uuid   get uuid => new Uuid();
  String get hash;

  /// Returns a de-identified version of the patient record
  Patient deidentify([List<Option> options]) {

  }
}