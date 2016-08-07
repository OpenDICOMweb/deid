// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.deidentification.transform;

import 'package:core/core.dart';



String blank(tag, [int n = 1]) => "".padRight(n, " ");

String personName([Pattern pattern = ""]) {

}

String date(tag, {int year, int month, int day, String sep = "-"}) {
  if ((year == null) && (month == null) && (day == null)) {
    DateTime dt = new DateTime.now();
    return '${dt.year}$sep${dt.month}$sep${dt.day}';
  } else if ((year != null) && (month != null) && (day != null)) {

  }
}

//TODO: finish and test
// move to Dataset
modifyDate(int tag, int year, int month, int day, [int defaultTag = 0x00100101]) {
  List<Date> dates = _values;
}


/// A Protocol is a Map of Tag, Transform pairs that is applied to a Dataset




