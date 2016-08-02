// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.deid.deidentifier;

import 'package:core/attribute.dart';
import 'package:core/dataset_sop.dart';

import 'basic_profile.dart';
import 'deid_class.dart';
import 'deid_tags.dart';
import 'option.dart';

//TODO: handle Options
class DeIdentifier {
  static const defaultOptions = const [Option.none];
  final List<Option> options;
  final List<int> tagsNotPresent = [];


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