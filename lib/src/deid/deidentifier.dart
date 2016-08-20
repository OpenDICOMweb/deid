// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

import 'basic_profile.dart';
import 'deid_tags.dart';
import 'option.dart';

//TODO: handle Options
//TODO: support Modified Attribute Sequence
//TODO: support Encrypted Attributes Data Set
class DeIdentifier {
  static const String methodIdentifier = "Open DICOMweb DeIdentifier";
  static const String version = "0.3.0";
  static const defaultOptions = const [Option.kNone];
  final List<Option> options;
  final List<int> tagsNotPresent = [];

  static String get method => '$methodIdentifier($version)';

  DeIdentifier([this.options = defaultOptions]);

  call(Dataset ds) {
    for(int tag in deIdTags) {
      Attribute a = ds.lookup(tag);
      if (a != null) {
        if (a.vr is SQ) {
          deIdentifySequence(a);
        } else {
          var profile = BasicProfile.lookup(tag);
          profile.action(ds, a, []);
        }
      } else {
        tagsNotPresent.add(tag);
      }
    }
  }

  deIdentifySequence(SQ a) {
    for(Item item in a.items)
        call(item);
  }

}