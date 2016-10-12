// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dictionary.dart';

//static const EnumeratedValue typeOfPatientID = const ["TEXT", "RFID", "BARCODE"];
class PatientIdentificationModule {

  PatientIdentificationModule();

  static const Map<int, DEType> deList = const {

    kPatientName: DEType.k2,

    kPatientID: DEType.k2,

    // include Table 10-18 Issuer of Patient ID Macro,

    kPatientBirthDate: DEType.k2,
    // kPatientBirthDateInAlternativeCalendar: DEType.k3,

    kPatientSex: DEType.k2,
    kReferencedPatientPhotoSequence: DEType.k3,
    kQualityControlSubject: DEType.k3,
    kReferencedPatientSequence: DEType.k3,
    kPatientBirthTime: DEType.k3,
    kOtherPatientIDs: DEType.k3,
    kOtherPatientIDsSequence: DEType.k3,
    kOtherPatientNames: DEType.k3,
    kEthnicGroup: DEType.k3,
    kPatientComments: DEType.k3,
    kPatientSpeciesDescription: DEType.k1c,
    kPatientSpeciesCodeSequence: DEType.k1c,
    kPatientBreedDescription: DEType.k2c,
    kPatientBreedCodeSequence: DEType.k2c,
    kBreedRegistrationSequence: DEType.k2c,
    kResponsiblePerson: DEType.k2c,
    kResponsiblePersonRole: DEType.k1c,
    kResponsibleOrganization: DEType.k2c,
    kPatientIdentityRemoved: DEType.k3,
    kDeidentificationMethod: DEType.k1c,
    kDeidentificationMethodCodeSequence: DEType.k1c
  };

}

class PatientRelationShips {

    PatientRelationShips();

    // RefererncedStudySequence - table 10-11 SOP Instance Reference Macro Attributes
    // ReferencedVisitSequence - table 10-11
    // ReferencedPatientAliasSequence - table 10-11
}

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
}

class ClinicalTrialStudyModule {

  ClinicalTrialStudyModule();

  static const Map<int, DED> map = const {
    kClinicalTrialTimePointID: DEType.k2,
    kClinicalTrialTimePointDescription: DEType.k3,
    kConsentForClinicalTrialUseSequence: DEType.k3,
  };

  static const Map<int, DED> clinicalTrialUseSequence = const {
    kDistributionType: DEType.k1c,
    kClinicalTrialProtocolID: DEType.k1c,
    kConsentForDistributionFlag: DEType.k1
  };

}

class ClinicalTrialSeriesModule {

  ClinicalTrialSeriesModule();

  static const Map<int, DED> map = const {
    kClinicalTrialCoordinatingCenterName: DEType.k2,
    kClinicalTrialSeriesID: DEType.k3,
    kClinicalTrialSeriesDescription: DEType.k3,
  };

  static const Map<int, DED> clinicalTrialUseSequence = const {
    kDistributionType: DEType.k1c,
    kClinicalTrialProtocolID: DEType.k1c,
    kConsentForDistributionFlag: DEType.k1
  };

}

