// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.


import 'package:core/new_dicom.dart';
import 'package:deid/src/deid/action.dart';

//TODO: add the ability to
class CleanPixelData {
  final int tag;
  final String keyword;
  final Action action;

  const CleanPixelData(this.tag, this.keyword, this.action);

  static const kAttributeBurnedInAnnotation =
    const CleanPixelData(0x00280301, "Attribute Burned In Annotation", Action.add);

  call(Dataset ds, {
      bool removePixelData: false,
      bool removeIconPixelData: false,
      bool removeFloatPixelData: false,
      bool removeDoubleFloatPixelData: false
      }) {
    Attribute a = ds.lookup(kAttributeBurnedInAnnotation);
    if ((a != null) && (a.value == "NO")) return true;
    if (removeIconPixelData) removeIconPixelData(ds);
    if (removeFloatPixelData) ds.remove(kFloatPixelData);
    if (removeDoubleFloatPixelData) ds.remove(kDoubleFloadPixelData);
    return false;
  }


  static lookup(int tag) => map[tag];

  static const Map<int, String> map = const {
    0x00280301: kAttributeBurnedInAnnotation
  };

  static const List<int> keys = const [
    0x00280301
  ];

  static const List<String> values = const [
    kAttributeBurnedInAnnotation
  ];

}

"Clean Recognizable Visual Features Options"

class CleanRecognizableVisualFeaturesOptions {
  final int tag;
  final String keyword;
  final Action action;

  const CleanRecognizableVisualFeaturesOptions(this.tag, this.keyword, this.action);

  static const kAttributeBurnedInAnnotation =
  const CleanPixelData(0x00280301, "Attribute Burned In Annotation", Action.add);

  static lookup(int tag) => map[tag];

  static const Map<int, String> map = const {
    0x00280301: kAttributeBurnedInAnnotation
  };

  static const List<int> keys = const [
    0x00280301
  ];

  static const List<String> values = const [
    kAttributeBurnedInAnnotation
  ];

}