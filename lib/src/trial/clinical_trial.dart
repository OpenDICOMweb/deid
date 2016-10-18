// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

class ClinicalTrialSubjectModule {

    ClinicalTrialSubjectModule();

    static const Map<int, DED> map = const {
        kClinicalTrialSponsorName: DEType.k1,
        kClinicalTrialProtocolID: DEType.k1,
        kClinicalTrialProtocolName: DEType.k2,
        kClinicalTrialSiteID: DEType.k2,
        kClinicalTrialSiteName: DEType.k2,
        kClinicalTrialSubjectID: DEType.k1c,
        kClinicalTrialSubjectReadingID: DEType.k1c,
        kClinicalTrialProtocolEthicsCommitteeName: DEType.k1c,
        kClinicalTrialProtocolEthicsCommitteeApprovalNumber: DEType.k1c

    };

    static const List<DED> list = const [
      DED.kClinicalTrialSponsorName,
      DED.kClinicalTrialProtocolID,
      DED.kClinicalTrialProtocolName,
      DED.kClinicalTrialSiteID,
      DED.kClinicalTrialSiteName,
      DED.kClinicalTrialSubjectID,
      DED.kClinicalTrialSubjectReadingID,
      DED.kClinicalTrialProtocolEthicsCommitteeName,
      DED.kClinicalTrialProtocolEthicsCommitteeApprovalNumber
    ];
}

class ClinicalTrialStudyModule {

    ClinicalTrialStudyModule();

    static const Map<int, DED> map = const {
        kClinicalTrialTimePointID: DEType.k2,
        kClinicalTrialTimePointDescription: DEType.k3,
        kConsentForClinicalTrialUseSequence: DEType.k3
    };

    static const List<DED> list = const [
        DED.kClinicalTrialTimePointID,
        DED.kClinicalTrialTimePointDescription,
        DED.kConsentForClinicalTrialUseSequence
    ];

    static const Map<int, DED> clinicalTrialUseSequence = const {
        kDistributionType: DEType.k1c,
        kClinicalTrialProtocolID: DEType.k1c,
        kConsentForDistributionFlag: DEType.k1
    };

    static const List<DED> clinicalTrialUseSequenceDEDs = const [
        DED.kDistributionType,
        DED.kClinicalTrialProtocolID,
        DED.kConsentForDistributionFlag
    ];

  List<String> distributionTypes = const [
    "NAMED_PROTOCOL",
    "RESTRICTED_REUSE",
    "PUBLIC_RELEASE"
    // ACR could define more
  ];

  List<String> consentForDistributionFlag = const [
    "NO",
    "YES",
    "WITHDRAWN"
  ];

}

class ClinicalTrialSeriesModule {

  ClinicalTrialSeriesModule();

  static const Map<int, DED> map = const {
    kClinicalTrialCoordinatingCenterName: DEType.k2,
    kClinicalTrialSeriesID: DEType.k3,
    kClinicalTrialSeriesDescription: DEType.k3,
  };

  static const List<DED> list = const [
    DED.kClinicalTrialCoordinatingCenterName,
    DED.kClinicalTrialSeriesID,
    DED.kClinicalTrialSeriesDescription
  ];

}