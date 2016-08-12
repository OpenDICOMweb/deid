// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/base.dart';
import 'package:core/dicom.dart';
import '../action.dart';



class ProfileDefinition {
  List<int> keep;
  List<int> tRemove;
  List<int> gRemove;
  bool keepGroup18 = false;
  bool keepGroup20 = false;
  bool keepGroup28 = false;
  bool keepSafePrivate = false;
  bool removePrivateGroups = true;
  bool removeCurves = true;    // Group 50
  bool removeOverlays = true;  // Group 60
  Map<int, Transform> transforms = {};


}

class Transform {
  int tag;
  Action action;



  List

}
class Profile {
  Map<int, Transform> actions = {};

  Dataset call(Dataset ds) {
    actions.forEach((Transform transform) {
      int tag = transform tag;
      Attribute a = ds.lookup(tag);
      a = action(a);
    });

  }
}