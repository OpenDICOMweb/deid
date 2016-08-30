// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.


import 'package:core/dicom.dart';
import 'package:deid/src/deid/action.dart';

//TODO: add the ability to
class CleanPixelData {
  final int tag;
  final String keyword;
  final Action action;

  CleanPixelData(this.tag, this.keyword, this.action);

  static final kAttributeBurnedInAnnotation =
    new CleanPixelData(0x00280301, "Attribute Burned In Annotation", Action.A);

  call(Dataset ds, {
      bool removePixelDataFlag: false,
      bool removeIconPixelDataFlag: false,
      bool removeFloatPixelDataFlag: false,
      bool removeDoubleFloatPixelDataFlag: false
      }) {
    Attribute a = ds.lookup(kAttributeBurnedInAnnotation);
    if ((a != null) && (a.value == "NO")) return true;
    if (removeIconPixelDataFlag) removeIconPixelData(ds);
    if (removeFloatPixelDataFlag) ds.remove(kFloatPixelData);
    if (removeDoubleFloatPixelDataFlag) ds.remove(kDoubleFloatPixelData);
    return false;
  }

  bool removeIconPixelData(ds) {

  }

}

//TODO: doc
///Clean Recognizable Visual Features Options
class CleanRecognizableVisualFeaturesOptions {
  final int tag;
  final String keyword;
  final Action action;

  const CleanRecognizableVisualFeaturesOptions(this.tag, this.keyword, this.action);

  static final kAttributeBurnedInAnnotation =
  new CleanPixelData(0x00280301, "Attribute Burned In Annotation", Action.A);


}