// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

class ClinicalTrialSubjectModule {

    ClinicalTrialSubjectModule();

    static const Map<int, Element> map = const {
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

    static const List<Element> list = const [
      Element.kClinicalTrialSponsorName,
      Element.kClinicalTrialProtocolID,
      Element.kClinicalTrialProtocolName,
      Element.kClinicalTrialSiteID,
      Element.kClinicalTrialSiteName,
      Element.kClinicalTrialSubjectID,
      Element.kClinicalTrialSubjectReadingID,
      Element.kClinicalTrialProtocolEthicsCommitteeName,
      Element.kClinicalTrialProtocolEthicsCommitteeApprovalNumber
    ];
}

class ClinicalTrialStudyModule {

    ClinicalTrialStudyModule();

    static const Map<int, Element> map = const {
        kClinicalTrialTimePointID: EType.k2,
        kClinicalTrialTimePointDescription: EType.k3,
        kConsentForClinicalTrialUseSequence: EType.k3
    };

    static const List<Element> list = const [
        Element.kClinicalTrialTimePointID,
        Element.kClinicalTrialTimePointDescription,
        Element.kConsentForClinicalTrialUseSequence
    ];

    static const Map<int, Element> clinicalTrialUseSequence = const {
        kDistributionType: EType.k1c,
        kClinicalTrialProtocolID: EType.k1c,
        kConsentForDistributionFlag: EType.k1
    };

    static const List<Element> clinicalTrialUseSequenceElements = const [
        Element.kDistributionType,
        Element.kClinicalTrialProtocolID,
        Element.kConsentForDistributionFlag
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

  static const Map<int, Element> map = const {
    kClinicalTrialCoordinatingCenterName: EType.k2,
    kClinicalTrialSeriesID: EType.k3,
    kClinicalTrialSeriesDescription: EType.k3,
  };

  static const List<Element> list = const [
    Element.kClinicalTrialCoordinatingCenterName,
    Element.kClinicalTrialSeriesID,
    Element.kClinicalTrialSeriesDescription
  ];

}