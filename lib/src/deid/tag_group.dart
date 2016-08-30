// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

/// A [class] used to manage de-identifying standard DICOM groups.
class TagGroup {
  final String name;
  final int number;
  final bool isKeeper;
  final int min;
  final int max;

  const TagGroup(this.name, int number, this.isKeeper)
      : number = number,
        min = number << 16,
        max = (number << 16) + 0xFFFF;

  TagGroup operator[](int tag) =>
      validGroups.firstWhere((group) => group == (tag >> 16));

  bool contains(int tag) => (min <= tag) && (tag <= max);

  bool inTagGroup(int tag) => validGroups.contains(tag >> 16);

  static const k18 = const TagGroup("Group18", 0X0018, true);
  static const k20 = const TagGroup("Group18", 0X0020, true);
  static const k28 = const TagGroup("Group18", 0X0028, true);
  static const k50 = const TagGroup("Group18", 0X0050, false);
  static const k60 = const TagGroup("Group18", 0X0060, false);
  static const curves = k50;
  static const overlays = k60;

  static const validGroups = const [0x0018, 0x0020, 0x0028, 0x0050, 0x0060];

  static const List<TagGroup> groups = const [k18, k20, k28, k50, k60];

  static const List<TagGroup> defaultKeepGroups = const [k18, k20, k28];

  static const List<TagGroup> defaultRemoveGroups = const [k50, k60];

  static bool inOne(int tag) {
    for (TagGroup group in groups)
      if (group.contains(tag)) return true;
    return false;
  }
}

