// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'dart:typed_data';

import 'package:core/dicom.dart';


class PrivateDataCharacteristics {
  final String keyword;
  final int code;
  final String name;
  final VR vr;
  final VM vm;
  final DEType at;
  final bool isRetired;

  const PrivateDataCharacteristics(this.keyword, this.code, this.name,
                                   this.vr, this.vm, this.at, this.isRetired);

  /// Characteristics of Private Data Elements within the current SOP Instance
  static const kPrivateDataElementCharacteristicsSequence = const PrivateDataCharacteristics(
      "PrivateDataElementCharacteristicsSequence",
      0x0080300,
      "Private​Data​Element​Characteristics​Sequence",
      VR.kSQ,
      VM.k1,
      DEType.k3,
      false);

  /// Odd group number within which the Private Data Element block is reserved.
  static const kPrivateGroupReference = const PrivateDataCharacteristics(
      "PrivateGroupReference",
      0x00080301,
      "Private Group Reference",
      VR.kUS,
      VM.k1,
      DEType.k1,
      false);

  ///The value of the Private Creator Data Element value used to reserve the block of
  ///Private Data Elements whose characteristics are described in this Item.
  ///
  /// Note:  Private blocks are identified by their Private Creator Data Element value, rather
  /// than their numeric block number, since instances may be modified and numeric block
  /// numbers reassigned but the Private Creator Data Element value, which is required
  /// to be unique within a Group of Private Data Elements, will be preserved.
  static const kPrivateCreatorReference = const PrivateDataCharacteristics(
      "PrivateCreatorReference",
      0x00080302,
      "Private Creator Reference",
      VR.kLO,
      VM.k1,
      DEType.k1,
      false);

  /// Specifies whether some or all of the Private Data Elements in the block are safe from
  /// identity leakage as defined by PS3.15 Section E.3.10 Retain Safe Private Option.
  ///
  ///   Enumerated Values:
  ///       SAFE: no data elements within the block contain identifying information
  ///       UNSAFE: all data elements within the block may contain identifying information
  ///       MIXED: some data elements within the block may contain identifying information
  static const kBlockIdentifyingInformationStatus = const PrivateDataCharacteristics(
      "BlockIdentifyingInformationStatus",
      0x00080303,
      "Block Identifying Information Status",
      VR.kCS,
      VM.k1,
      DEType.k1,
      false);

  ///  List of Private Data Elements in block that do not contain identifying
  ///  information (are safe from identity leakage).
  ///
  /// Elements are identified by the lowest 8-bits of the attribute tag
  /// (i.e. with a value from 0000H to 00FFH) within the block, stored
  /// as an unsigned short integer. Multiple values shall be in increasing
  /// order and a given value shall be listed at most once.
  ///
  /// Required if Block Identifying Information Status (0008,0303) equals MIXED.
  static const kNonidentifyingPrivateElements = const PrivateDataCharacteristics(
      "NonidentifyingPrivateElements",
      0x00080304,
      "Nonidentifying Private Elements",
      VR.kUS,
      VM.k1_n,
      DEType.k1c,
      false);

  /// Actions to be performed on element within the block that are not
  /// safe from identify leakage.
  static const kDeidentificationActionSequence = const PrivateDataCharacteristics(
      "DeidentificationActionSequence",
      0x00080305,
      "Deidentification Action Sequence",
      VR.kSQ,
      VM.k1,
      DEType.k3,
      false);

  /// List of Private Data Elements in block that may contain identifying
  /// information (are unsafe from identity leakage).
  ///
  /// Elements are identified by the lowest 8-bits of the attribute tag (i.e. with
  /// a value from 0000H to 00FFH) within the block, stored as an unsigned short
  /// integer. Multiple values shall be in increasing order and a given value
  /// shall be listed at most once.
  static const kIdentifyingPrivateElements = const PrivateDataCharacteristics(
      "IdentifyingPrivateElements",
      0x00080306,
      "Identifying Private Elements",
      VR.kUS,
      VM.k1_n,
      DEType.k1,
      false);

  /// Recommended action to be performed during de-identification on elements
  /// listed in Identifying Private Elements (0008,0306) within this Item.
  ///
  /// Note: A specific type of action is suggested in order to minimize the
  /// impact of de-identification on the behavior of recipients that use
  /// the Private Data Elements.
  ///
  /// Enumerated Values:
  ///    D: replace with a non-zero length value that may be a dummy value
  ///    and consistent with the VR.
  ///    Z: replace with a zero length value, or a non-zero length value that
  ///    may be a dummy value and consistent with the VR.
  ///    X: remove.
  ///    U: replace with a non-zero length UID that is internally consistent
  ///    within a set of Instance.
  ///
  /// Notes:
  ///     1. No C (clean) action is specified, since replacement with values
  ///     of similar meaning known not to contain identifying information and
  ///     consistent with the VR requires an understanding of the meaning of
  ///     the value of the element. Whether or not to clean rather than remove
  ///     or replace values is at thediscretion of the implementer.
  ///
  ///    2. No suggested dummy value is provided, since the encoding of the
  ///    value would depend on the VR of the data element.
  ///
  ///    3. Further explanation of these actions can be found in PS3.15,
  ///    Section E.3.1 Clean Pixel Data Option.
  static const kDeidentificationAction = const PrivateDataCharacteristics(
      "DeidentificationAction",
      0x00080307,
      "Deidentification Action",
      VR.kCS,
      VM.k1,
      DEType.k1,
      false);

  static SQ get(Dataset ds) =>
      ds.lookup(kPrivateDataElementCharacteristicsSequence.code);

//TODO: finish, Test
  //TODO: should the Private Data Charistic Sequence be removed?
  static void process(Dataset ds, bool keepSafe) {
    SQ sq = ds.lookup(kPrivateDataElementCharacteristicsSequence.code);
    for (Item item in sq.items) {
      int pGroup = item[kPrivateGroupReference].value;
      int pSetBase = (pGroup << 16);
      String creatorToken = item[kPrivateCreatorReference].value;
      int creator = findCreator(ds, pSetBase, creatorToken);
      int pdBase = privateGroupBase(creator);
      String status = item[kBlockIdentifyingInformationStatus].value;
      if ((keepSafe == false) || (status == "UNSAFE")) {
        ds.removePrivateGroup(creatorToken);
      } else if ((status == "SAFE") && (keepSafe == true)) {
        continue;
      } else if (status == "MIXED") {
        //List<int> nonIdentifying = item[kNonidentifyingPrivateElements].value;
        SQ actionSeq = item[kDeidentificationActionSequence];
        if (actionSeq == null) continue;
        for (Item item in sq.items) {
          Uint8List pdOffsets = item[kIdentifyingPrivateElements].values;
          List<String> actions = item[kDeidentificationActionSequence].values;
          for (int i = 0; i < pdOffsets.length; i++) {
            int tag = pdBase + pdOffsets[i];
            switch (actions[i]) {
              case "D":
                ds[tag].replace([]);
                continue;
              case "Z":
                ds[tag].noValues();
                continue;
              case "X":
                ds.remove(tag);
                continue;
              case "U":
                ds.replaceUid(tag);
                continue;
            }
          }
        }
      }
    }
  }

  static int findCreator(Dataset ds, int pSetBase, String token) {
    int min = pSetBase + 0x0010;
    int max = pSetBase + 0x00FF;
    for (int i = min; i <= max; i++)
      if ((ds[i] != null) && (ds[i].value == token))
        return i;
    return null;
  }

}







