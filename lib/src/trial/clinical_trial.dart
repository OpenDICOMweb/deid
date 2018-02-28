// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.


import 'package:core/core.dart';

class ClinicalTrialSubjectModule {

    ClinicalTrialSubjectModule();

    static const Map<int, EType> map = const <int, EType>{
        kClinicalTrialSponsorName: EType.k1,
        kClinicalTrialProtocolID: EType.k1,
        kClinicalTrialProtocolName: EType.k2,
        kClinicalTrialSiteID: EType.k2,
        kClinicalTrialSiteName: EType.k2,
        kClinicalTrialSubjectID: EType.k1c,
        kClinicalTrialSubjectReadingID: EType.k1c,
        kClinicalTrialProtocolEthicsCommitteeName: EType.k1c,
        kClinicalTrialProtocolEthicsCommitteeApprovalNumber: EType.k1c

    };

    static const List<PTag> list = const <PTag>[
      PTag.kClinicalTrialSponsorName,
      PTag.kClinicalTrialProtocolID,
      PTag.kClinicalTrialProtocolName,
      PTag.kClinicalTrialSiteID,
      PTag.kClinicalTrialSiteName,
      PTag.kClinicalTrialSubjectID,
      PTag.kClinicalTrialSubjectReadingID,
      PTag.kClinicalTrialProtocolEthicsCommitteeName,
      PTag.kClinicalTrialProtocolEthicsCommitteeApprovalNumber
    ];
}

class ClinicalTrialStudyModule {

    ClinicalTrialStudyModule();

    static const Map<int, EType> map = const <int, EType>{
        kClinicalTrialTimePointID: EType.k2,
        kClinicalTrialTimePointDescription: EType.k3,
        kConsentForClinicalTrialUseSequence: EType.k3
    };

    static const List<PTag> list = const <PTag>[
        PTag.kClinicalTrialTimePointID,
        PTag.kClinicalTrialTimePointDescription,
        PTag.kConsentForClinicalTrialUseSequence
    ];

    static const Map<int, EType> clinicalTrialUseSequence = const <int, EType>{
        kDistributionType: EType.k1c,
        kClinicalTrialProtocolID: EType.k1c,
        kConsentForDistributionFlag: EType.k1
    };

    static const List<PTag> clinicalTrialUseSequencePTags = const <PTag>[
        PTag.kDistributionType,
        PTag.kClinicalTrialProtocolID,
        PTag.kConsentForDistributionFlag
    ];

  List<String> distributionTypes = const [
    'NAMED_PROTOCOL',
    'RESTRICTED_REUSE',
    'PUBLIC_RELEASE'
    // ACR could define more
  ];

  List<String> consentForDistributionFlag = const [
    'NO',
    'YES',
    'WITHDRAWN'
  ];

}

class ClinicalTrialSeriesModule {

  ClinicalTrialSeriesModule();

  static const Map<int, EType> map = const {
    kClinicalTrialCoordinatingCenterName: EType.k2,
    kClinicalTrialSeriesID: EType.k3,
    kClinicalTrialSeriesDescription: EType.k3,
  };

  static const List<PTag> list = const <PTag>[
    PTag.kClinicalTrialCoordinatingCenterName,
    PTag.kClinicalTrialSeriesID,
    PTag.kClinicalTrialSeriesDescription
  ];

}
