// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

import 'package:deid/src/dictionary/basic_profile.dart';
import 'package:deid/src/dictionary/deid_tags.dart';
import 'package:deid/src/dictionary/basic_profile_options.dart';

//TODO: handle Options
//TODO: support Modified Attribute Sequence
//TODO: support Encrypted Attributes Data Set
class DeIdentifier {
  static const String methodIdentifier = "Open DICOMweb DeIdentifier";
  static const String version = "0.3.0";
  static const defaultOptions = const [BasicProfileOptions.kNone];
  final List<BasicProfileOptions> options;
  final List<int> tagsNotPresent = [];

  static String get method => '$methodIdentifier($version)';

  DeIdentifier([this.options = defaultOptions]);

  Dataset call(Dataset ds) {
    var map = BasicProfile.map;
    for(int tag in deIdTags) {
      Element a = ds.lookup(tag);
      if (a != null) {
        if (a.vr is SQ) {
          deIdentifySequence(a);
        } else {
          var profile = BasicProfile.lookup(tag);
       //**   profile.action(ds, a, []);
        }
      } else {
        tagsNotPresent.add(tag);
      }
    }
    return ds;
  }

  deIdentifySequence(SQ a) {
    for(Item item in a.items)
        call(item);
  }

}