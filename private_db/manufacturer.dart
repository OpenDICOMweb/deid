// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'creator.dart';
/// The names of [ManufacturerBase]s of DICOM equipment. Used to identify [PrivateGroup]s.
class ManufacturerBase {
  /// An integer identifier for the manufacturer.
  final int index;

  /// A short [String] identifier
  final String id;

  /// The full name of the Manufacturer.
  final String name;

  const ManufacturerBase(this.index, this.id, this.name);

  ManufacturerBase operator [](int index) => _list[index];

  static const kGEMS = const ManufacturerBase(1, "GEMS", "General Electric Medical Systems");
  static const kPhilips = const ManufacturerBase(2, "Philips", "Philips Medical Systems");
  static const kSiemens = const ManufacturerBase(3, "Siemens", "Siemens Medical Solutions");
  static const kToshiba = const ManufacturerBase(4, "Toshiba", "	Toshiba Medical Systems");
  static const kHitachi = const ManufacturerBase(5, "Hitachi", "	Hitachi",);
  static const kRSNA = const ManufacturerBase(6, "RSNA", "	RSNA");
  static const kMIR_ERL = const ManufacturerBase(7, "MIR/ERL", "	MIR/ERL");
  static const kFuji = const ManufacturerBase(8, "Fuji", "Fuji Film");
  static const kHologic = const ManufacturerBase(9, "Hologic", "Hologic");
  static const kUCSF = const ManufacturerBase(10, "UCSF", "UCSF Segmentations");

  static const _map = const <String, ManufacturerBase>{
    "GEMS": kGEMS,
    "Philips": kPhilips,
    "Siemens": kSiemens,
    "Toshiba": kToshiba,
    "Hitachi": kHitachi,
    "RSNA": kRSNA,
    "MIR/ERL": kMIR_ERL,
    "Fuji": kFuji,
    "Hologic": kHologic,
    "UCSF": kUCSF
  };

  static ManufacturerBase lookup(String id) => _map[id];

  static const _list = const <ManufacturerBase>[
    kGEMS, kPhilips, kSiemens, kToshiba, kHitachi, kRSNA, kMIR_ERL, kFuji, kHologic, kUCSF];

}

class Manufacturer {
  ManufacturerBase manufacturer;
  List<PCreator> creators;

  Manufacturer(String manufacturerId, PCreator creator)
      : manufacturer =  ManufacturerBase.lookup(manufacturerId),
        creators = [creator];

  int get index => manufacturer.index;
  String get id => manufacturer.id;
  String get name => manufacturer.name;

  void add(PCreator creator) { creators.add(creator); }
}