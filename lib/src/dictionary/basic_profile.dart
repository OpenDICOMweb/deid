// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:dictionary/dictionary.dart';

import 'basic_profile_options.dart';

/// Basic De-Identification Profile.
class BasicProfile {
  final Tag tag;
  final String action;

  const BasicProfile(this.tag, this.action);

  static final List<BasicProfileOptions> options =  <BasicProfileOptions>[
    BasicProfileOptions.kCleanDescriptors,
    BasicProfileOptions.kCleanGraphics,
    BasicProfileOptions.kCleanPixelData,
    //FIX
    //BasicProfileOptions.kCleanRecognizableVisualFeatures,
    BasicProfileOptions.kCleanStructuredContent,
    BasicProfileOptions.kRetainDeviceIdentity,
    BasicProfileOptions.kRetainFullDates,
    BasicProfileOptions.kRetainModifiedDates,
    BasicProfileOptions.kRetainPatientCharacteristics,
    BasicProfileOptions.kRetainSafePrivate,
    BasicProfileOptions.kRetainUids
  ];

  /*
  List<int> keepTags(option) {
    List kList = [];
    for(int tag in keep)
        kList.add(tag);
    for(int tag in option.keep) {
      if (keep[tag] != null)
        keep[tag] =
    }
  }
  */

  @override
  String toString() => 'Basic Profile: $tag';

  static BasicProfile lookup(int tag) => map[tag];

  static const BasicProfile kAffectedSOPInstanceUID =
    const BasicProfile(PTag.kAffectedSOPInstanceUID, "X");
  static const BasicProfile kRequestedSOPInstanceUID =
    const BasicProfile(PTag.kRequestedSOPInstanceUID,  "U");
  static const BasicProfile kMediaStorageSOPInstanceUID =
    const BasicProfile(PTag.kMediaStorageSOPInstanceUID,  "U");
  static const BasicProfile kReferencedSOPInstanceUIDinFile =
    const BasicProfile(PTag.kReferencedSOPInstanceUIDInFile,  "U");
  static const BasicProfile kInstanceCreatorUID =
    const BasicProfile(PTag.kInstanceCreatorUID,  "U");
  static const BasicProfile kSOPInstanceUID =
    const BasicProfile(PTag.kSOPInstanceUID,  "U");
  static const BasicProfile kStudyDate =
    const BasicProfile(PTag.kStudyDate,  "Z");
  static const BasicProfile kSeriesDate =
    const BasicProfile(PTag.kSeriesDate,  "XD");
  static const BasicProfile kAcquisitionDate =
    const BasicProfile(PTag.kAcquisitionDate,  "XZ");
  static const BasicProfile kContentDate =
    const BasicProfile(PTag.kContentDate,  "ZD");
  static const BasicProfile kOverlayDate =
    const BasicProfile(PTag.kOverlayDate,  "X");
  static const BasicProfile kCurveDate =
    const BasicProfile(PTag.kCurveDate,  "X");
  static const BasicProfile kAcquisitionDateTime =
    const BasicProfile(PTag.kAcquisitionDateTime,  "XD");
  static const BasicProfile kStudyTime =
    const BasicProfile(PTag.kStudyTime,  "Z");
  static const BasicProfile kSeriesTime =
    const BasicProfile(PTag.kSeriesTime,  "XD");
  static const BasicProfile kAcquisitionTime =
    const BasicProfile(PTag.kAcquisitionTime,  "XZ");
  static const BasicProfile kContentTime =
    const BasicProfile(PTag.kContentTime,  "ZD");
  static const BasicProfile kOverlayTime =
    const BasicProfile(PTag.kOverlayTime,  "X");
  static const BasicProfile kCurveTime =
    const BasicProfile(PTag.kCurveTime,  "X");
  static const BasicProfile kAccessionNumber =
    const BasicProfile(PTag.kAccessionNumber,  "Z");
  static const BasicProfile kFailedSOPInstanceUIDList =
    const BasicProfile(PTag.kFailedSOPInstanceUIDList,  "U");
  static const BasicProfile kInstitutionName =
    const BasicProfile(PTag.kInstitutionName,  "XZD");
  static const BasicProfile kInstitutionAddress =
    const BasicProfile(PTag.kInstitutionAddress,  "X");
  static const BasicProfile kInstitutionCodeSequence =
    const BasicProfile(PTag.kInstitutionCodeSequence,  "XZD");
  static const BasicProfile kReferringPhysiciansName =
    const BasicProfile(PTag.kReferringPhysicianName,  "Z");
  static const BasicProfile kReferringPhysiciansAddress =
    const BasicProfile(PTag.kReferringPhysicianAddress,  "X");
  static const BasicProfile kReferringPhysiciansTelephoneNumbers =
    const BasicProfile(PTag.kReferringPhysicianTelephoneNumbers,  "X");
  static const BasicProfile kReferringPhysiciansIdentificationSequence =
    const BasicProfile(PTag.kReferringPhysicianIdentificationSequence,  "X");
  static const BasicProfile kContextGroupExtensionCreatorUID =
    const BasicProfile(PTag.kContextGroupExtensionCreatorUID,  "U");
  static const BasicProfile kTimezoneOffsetFromUTC =
    const BasicProfile(PTag.kTimezoneOffsetFromUTC,  "X");
  static const BasicProfile kStationName =
    const BasicProfile(PTag.kStationName,  "XZD");
  static const BasicProfile kStudyDescription =
    const BasicProfile(PTag.kStudyDescription,  "X");
  static const BasicProfile kSeriesDescription =
    const BasicProfile(PTag.kSeriesDescription,  "X");
  static const BasicProfile kInstitutionalDepartmentName =
    const BasicProfile(PTag.kInstitutionalDepartmentName,  "X");
  static const BasicProfile kPhysicianOfRecord =
    const BasicProfile(PTag.kPhysiciansOfRecord,  "X");
  static const BasicProfile kPhysician0xsofRecordIdentificationSequence =
    const BasicProfile(PTag.kPhysiciansOfRecordIdentificationSequence,  "X");
  static const BasicProfile kPerformingPhysiciansName =
    const BasicProfile(PTag.kPerformingPhysicianName,  "X");
  static const BasicProfile kPerformingPhysicianIdentificationSequence =
    const BasicProfile(PTag.kPerformingPhysicianIdentificationSequence,  "X");
  static const BasicProfile kNameofPhysician0xsReadingStudy =
    const BasicProfile(PTag.kNameOfPhysiciansReadingStudy,  "X");
  static const BasicProfile kPhysician0xsReadingStudyIdentificationSequence =
    const BasicProfile(PTag.kPhysiciansReadingStudyIdentificationSequence,  "X");
  static const BasicProfile kOperatorsName =
    const BasicProfile(PTag.kOperatorsName,  "XZD");
  static const BasicProfile kOperatorsIdentificationSequence =
    const BasicProfile(PTag.kOperatorIdentificationSequence,  "XD");
  static const BasicProfile kAdmittingDiagnosesDescription =
    const BasicProfile(PTag.kAdmittingDiagnosesDescription,  "X");
  static const BasicProfile kAdmittingDiagnosesCodeSequence =
    const BasicProfile(PTag.kAdmittingDiagnosesCodeSequence,  "X");
  static const BasicProfile kReferencedStudySequence =
    const BasicProfile(PTag.kReferencedStudySequence,  "XZ");
  static const BasicProfile kReferencedPerformedProcedureStepSequence =
    const BasicProfile(PTag.kReferencedPerformedProcedureStepSequence,  "XZD");
  static const BasicProfile kReferencedPatientSequence =
    const BasicProfile(PTag.kReferencedPatientSequence,  "X");
  static const BasicProfile kReferencedImageSequence =
    const BasicProfile(PTag.kReferencedImageSequence,  "XZU");
  static const BasicProfile kReferencedSOPInstanceUID =
    const BasicProfile(PTag.kReferencedSOPInstanceUID,  "U");
  static const BasicProfile kTransactionUID =
    const BasicProfile(PTag.kTransactionUID,  "U");
  static const BasicProfile kDerivationDescription =
    const BasicProfile(PTag.kDerivationDescription,  "X");
  static const BasicProfile kSourceImageSequence =
    const BasicProfile(PTag.kSourceImageSequence,  "XZU");
  static const BasicProfile kIrradiationEventUID =
    const BasicProfile(PTag.kIrradiationEventUID,  "U");
  static const BasicProfile kIdentifyingComments =
    const BasicProfile(PTag.kIdentifyingComments,  "X");
  static const BasicProfile kCreatorVersionUID =
    const BasicProfile(PTag.kCreatorVersionUID,  "U");
  static const BasicProfile kPatientsName =
    const BasicProfile(PTag.kPatientName,  "Z");
  static const BasicProfile kPatientID =
    const BasicProfile(PTag.kPatientID,  "Z");
  static const BasicProfile kIssuerofPatientID =
    const BasicProfile(PTag.kIssuerOfPatientID,  "X");
  static const BasicProfile kPatientsBirthDate =
    const BasicProfile(PTag.kPatientBirthDate,  "Z");
  static const BasicProfile kPatientsBirthTime =
    const BasicProfile(PTag.kPatientBirthTime,  "X");
  static const BasicProfile kPatientsSex =
    const BasicProfile(PTag.kPatientSex,  "Z");
  static const BasicProfile kPatientsInsurancePlanCodeSequence =
    const BasicProfile(PTag.kPatientInsurancePlanCodeSequence,  "X");
  static const BasicProfile kPatientsPrimaryLanguageCodeSequence =
    const BasicProfile(PTag.kPatientPrimaryLanguageCodeSequence,  "X");
  static const BasicProfile kPatientsPrimaryLanguageModifierCodeSequence =
    const BasicProfile(PTag.kPatientPrimaryLanguageModifierCodeSequence,  "X");
  static const BasicProfile kOtherPatientIDs =
    const BasicProfile(PTag.kOtherPatientIDs,  "X");
  static const BasicProfile kOtherPatientNames =
    const BasicProfile(PTag.kOtherPatientNames,  "X");
  static const BasicProfile kOtherPatientIDsSequence =
    const BasicProfile(PTag.kOtherPatientIDsSequence,  "X");
  static const BasicProfile kPatientsBirthName =
    const BasicProfile(PTag.kPatientBirthName,  "X");
  static const BasicProfile kPatientAge =
    const BasicProfile(PTag.kPatientAge,  "X");
  static const BasicProfile kPatientSize =
    const BasicProfile(PTag.kPatientSize,  "X");
  static const BasicProfile kPatientWeight =
    const BasicProfile(PTag.kPatientWeight,  "X");
  static const BasicProfile kPatientAddress =
    const BasicProfile(PTag.kPatientAddress,  "X");
  static const BasicProfile kInsurancePlanIdentification =
    const BasicProfile(PTag.kInsurancePlanIdentification,  "X");
  static const BasicProfile kPatientMotherBirthName =
    const BasicProfile(PTag.kPatientMotherBirthName,  "X");
  static const BasicProfile kMilitaryRank =
    const BasicProfile(PTag.kMilitaryRank,  "X");
  static const BasicProfile kBranchOfService =
    const BasicProfile(PTag.kBranchOfService,  "X");
  static const BasicProfile kMedicalRecordLocator =
    const BasicProfile(PTag.kMedicalRecordLocator,  "X");
  static const BasicProfile kMedicalAlerts =
    const BasicProfile(PTag.kMedicalAlerts,  "X");
  static const BasicProfile kAllergies =
    const BasicProfile(PTag.kAllergies,  "X");
  static const BasicProfile kCountryOfResidence =
    const BasicProfile(PTag.kCountryOfResidence,  "X");
  static const BasicProfile kRegionOfResidence =
    const BasicProfile(PTag.kRegionOfResidence,  "X");
  static const BasicProfile kPatientTelephoneNumbers =
    const BasicProfile(PTag.kPatientTelephoneNumbers,  "X");
  static const BasicProfile kEthnicGroup =
    const BasicProfile(PTag.kEthnicGroup,  "X");
  static const BasicProfile kOccupation =
    const BasicProfile(PTag.kOccupation,  "X");
  static const BasicProfile kSmokingStatus =
    const BasicProfile(PTag.kSmokingStatus,  "X");
  static const BasicProfile kAdditionalPatientHistory =
    const BasicProfile(PTag.kAdditionalPatientHistory,  "X");
  static const BasicProfile kPregnancyStatus =
    const BasicProfile(PTag.kPregnancyStatus,  "X");
  static const BasicProfile kLastMenstrualDate =
    const BasicProfile(PTag.kLastMenstrualDate,  "X");
  static const BasicProfile kPatientReligiousPreference =
    const BasicProfile(PTag.kPatientReligiousPreference,  "X");
  static const BasicProfile kPatientSexNeutered =
    const BasicProfile(PTag.kPatientSexNeutered,  "XZ");
  static const BasicProfile kResponsiblePerson =
    const BasicProfile(PTag.kResponsiblePerson,  "X");
  static const BasicProfile kResponsibleOrganization =
    const BasicProfile(PTag.kResponsibleOrganization,  "X");
  static const BasicProfile kPatientComments =
    const BasicProfile(PTag.kPatientComments,  "X");
  static const BasicProfile kContrastBolusAgent =
    const BasicProfile(PTag.kContrastBolusAgent,  "ZD");
  static const BasicProfile kDeviceSerialNumber =
    const BasicProfile(PTag.kDeviceSerialNumber,  "XZD");
  static const BasicProfile kDeviceUID =
    const BasicProfile(PTag.kDeviceUID,  "U");
  static const BasicProfile kPlateID =
    const BasicProfile(PTag.kPlateID,  "X");
  static const BasicProfile kGeneratorID =
    const BasicProfile(PTag.kGeneratorID,  "X");
  static const BasicProfile kCassetteID =
    const BasicProfile(PTag.kCassetteID,  "X");
  static const BasicProfile kGantryID =
    const BasicProfile(PTag.kGantryID,  "X");
  static const BasicProfile kProtocolName =
    const BasicProfile(PTag.kProtocolName,  "XD");
  static const BasicProfile kAcquisitionDeviceProcessingDescription =
    const BasicProfile(PTag.kAcquisitionDeviceProcessingDescription,  "XD");
  static const BasicProfile kAcquisitionComments =
    const BasicProfile(PTag.kAcquisitionComments,  "X");
  static const BasicProfile kDetectorID =
    const BasicProfile(PTag.kDetectorID,  "XD");
  static const BasicProfile kAcquisitionProtocolDescription =
    const BasicProfile(PTag.kAcquisitionProtocolDescription,  "X");
  static const BasicProfile kContributionDescription =
    const BasicProfile(PTag.kContributionDescription,  "X");
  static const BasicProfile kStudyInstanceUID =
    const BasicProfile(PTag.kStudyInstanceUID,  "U");
  static const BasicProfile kSeriesInstanceUID =
    const BasicProfile(PTag.kSeriesInstanceUID,  "U");
  static const BasicProfile kStudyID =
    const BasicProfile(PTag.kStudyID,  "Z");
  static const BasicProfile kFrameOfReferenceUID =
    const BasicProfile(PTag.kFrameOfReferenceUID,  "U");
  static const BasicProfile kSynchronizationFrameOfReferenceUID =
    const BasicProfile(PTag.kSynchronizationFrameOfReferenceUID,  "U");
  static const BasicProfile kModifyingDeviceID =
    const BasicProfile(PTag.kModifyingDeviceID,  "X");
  static const BasicProfile kModifyingDeviceManufacturer =
    const BasicProfile(PTag.kModifyingDeviceManufacturer,  "X");
  static const BasicProfile kModifiedImageDescription =
    const BasicProfile(PTag.kModifiedImageDescription,  "X");
  static const BasicProfile kImageComments =
    const BasicProfile(PTag.kImageComments,  "X");
  static const BasicProfile kFrameComments =
    const BasicProfile(PTag.kFrameComments,  "X");
  static const BasicProfile kConcatenationUID =
    const BasicProfile(PTag.kConcatenationUID,  "U");
  static const BasicProfile kDimensionOrganizationUID =
    const BasicProfile(PTag.kDimensionOrganizationUID,  "U");
  static const BasicProfile kPaletteColorLookupTableUID =
    const BasicProfile(PTag.kPaletteColorLookupTableUID,  "U");
  static const BasicProfile kLargePaletteColorLookupTableUID =
    const BasicProfile(PTag.kLargePaletteColorLookupTableUID,  "U");
  static const BasicProfile kImagePresentationComments =
    const BasicProfile(PTag.kImagePresentationComments,  "X");
  static const BasicProfile kStudyIDIssuer =
    const BasicProfile(PTag.kStudyIDIssuer,  "X");
  static const BasicProfile kScheduledStudyLocation =
    const BasicProfile(PTag.kScheduledStudyLocation,  "X");
  static const BasicProfile kScheduledStudyLocationAETitle =
    const BasicProfile(PTag.kScheduledStudyLocationAETitle,  "X");
  static const BasicProfile kReasonForStudy =
    const BasicProfile(PTag.kReasonForStudy,  "X");
  static const BasicProfile kRequestingPhysician =
    const BasicProfile(PTag.kRequestingPhysician,  "X");
  static const BasicProfile kRequestingService =
    const BasicProfile(PTag.kRequestingService,  "X");
  static const BasicProfile kRequestedProcedureDescription =
    const BasicProfile(PTag.kRequestedProcedureDescription,  "XZ");
  static const BasicProfile kRequestedContrastAgent =
    const BasicProfile(PTag.kRequestedContrastAgent,  "X");
  static const BasicProfile kStudyComments =
    const BasicProfile(PTag.kStudyComments,  "X");
  static const BasicProfile kReferencedPatientAliasSequence =
    const BasicProfile(PTag.kReferencedPatientAliasSequence,  "X");
  static const BasicProfile kAdmissionID =
    const BasicProfile(PTag.kAdmissionID,  "X");
  static const BasicProfile kIssuerOfAdmissionID =
    const BasicProfile(PTag.kIssuerOfAdmissionID,  "X");
  static const BasicProfile kScheduledPatientInstitutionResidence =
    const BasicProfile(PTag.kScheduledPatientInstitutionResidence,  "X");
  static const BasicProfile kAdmittingDate =
    const BasicProfile(PTag.kAdmittingDate,  "X");
  static const BasicProfile kAdmittingTime =
    const BasicProfile(PTag.kAdmittingTime,  "X");
  static const BasicProfile kDischargeDiagnosisDescription =
    const BasicProfile(PTag.kDischargeDiagnosisDescription,  "X");
  static const BasicProfile kSpecialNeeds =
    const BasicProfile(PTag.kSpecialNeeds,  "X");
  static const BasicProfile kServiceEpisodeID =
    const BasicProfile(PTag.kServiceEpisodeID,  "X");
  static const BasicProfile kIssuerOfServiceEpisodeID =
    const BasicProfile(PTag.kIssuerOfServiceEpisodeID,  "X");
  static const BasicProfile kServiceEpisodeDescription =
    const BasicProfile(PTag.kServiceEpisodeDescription,  "X");
  static const BasicProfile kCurrentPatientLocation =
    const BasicProfile(PTag.kCurrentPatientLocation,  "X");
  static const BasicProfile kPatientInstitutionResidence =
    const BasicProfile(PTag.kPatientInstitutionResidence,  "X");
  static const BasicProfile kPatientState =
    const BasicProfile(PTag.kPatientState,  "X");
  static const BasicProfile kVisitComments =
    const BasicProfile(PTag.kVisitComments,  "X");
  static const BasicProfile kScheduledStationAETitle =
    const BasicProfile(PTag.kScheduledStationAETitle,  "X");
  static const BasicProfile kScheduledProcedureStepStartDate =
    const BasicProfile(PTag.kScheduledProcedureStepStartDate,  "X");
  static const BasicProfile kScheduledProcedureStepStartTime =
    const BasicProfile(PTag.kScheduledProcedureStepStartTime,  "X");
  static const BasicProfile kScheduledProcedureStepEndDate =
    const BasicProfile(PTag.kScheduledProcedureStepEndDate,  "X");
  static const BasicProfile kScheduledProcedureStepEndTime =
    const BasicProfile(PTag.kScheduledProcedureStepEndTime,  "X");
  static const BasicProfile kScheduledPerformingPhysicianName =
    const BasicProfile(PTag.kScheduledPerformingPhysicianName,  "X");
  static const BasicProfile kScheduledProcedureStepDescription =
    const BasicProfile(PTag.kScheduledProcedureStepDescription,  "X");
  static const BasicProfile kScheduledPerformingPhysicianIdentificationSequence =
    const BasicProfile(PTag.kScheduledPerformingPhysicianIdentificationSequence,  "X");
  static const BasicProfile kScheduledStationName =
    const BasicProfile(PTag.kScheduledStationName,  "X");
  static const BasicProfile kScheduledProcedureStepLocation =
    const BasicProfile(PTag.kScheduledProcedureStepLocation,  "X");
  static const BasicProfile kPreMedication =
    const BasicProfile(PTag.kPreMedication,  "X");
  static const BasicProfile kPerformedStationAETitle =
    const BasicProfile(PTag.kPerformedStationAETitle,  "X");
  static const BasicProfile kPerformedStationName =
    const BasicProfile(PTag.kPerformedStationName,  "X");
  static const BasicProfile kPerformedLocation =
    const BasicProfile(PTag.kPerformedLocation,  "X");
  static const BasicProfile kPerformedProcedureStepStartDate =
    const BasicProfile(PTag.kPerformedProcedureStepStartDate,  "X");
  static const BasicProfile kPerformedProcedureStepStartTime =
    const BasicProfile(PTag.kPerformedProcedureStepStartTime,  "X");
  static const BasicProfile kPerformedProcedureStepEndDate =
    const BasicProfile(PTag.kPerformedProcedureStepEndDate,  "X");
  static const BasicProfile kPerformedProcedureStepEndTime =
    const BasicProfile(PTag.kPerformedProcedureStepEndTime,  "X");
  static const BasicProfile kPerformedProcedureStepID =
    const BasicProfile(PTag.kPerformedProcedureStepID,  "X");
  static const BasicProfile kPerformedProcedureStepDescription =
    const BasicProfile(PTag.kPerformedProcedureStepDescription,  "X");
  static const BasicProfile kRequestAttributesSequence =
    const BasicProfile(PTag.kRequestAttributesSequence,  "X");
  static const BasicProfile kCommentsOnThePerformedProcedureStep =
    const BasicProfile(PTag.kCommentsOnThePerformedProcedureStep,  "X");
  static const BasicProfile kAcquisitionContextSequence =
    const BasicProfile(PTag.kAcquisitionContextSequence,  "X");
  static const BasicProfile kRequestedProcedureID =
    const BasicProfile(PTag.kRequestedProcedureID,  "X");
  static const BasicProfile kPatientTransportArrangements =
    const BasicProfile(PTag.kPatientTransportArrangements,  "X");
  static const BasicProfile kRequestedProcedureLocation =
    const BasicProfile(PTag.kRequestedProcedureLocation,  "X");
  static const BasicProfile kNamesOfIntendedRecipientsOfResults =
    const BasicProfile(PTag.kNamesOfIntendedRecipientsOfResults,  "X");
  static const BasicProfile kIntendedRecipientsOfResultsIdentificationSequence =
    const BasicProfile(PTag.kIntendedRecipientsOfResultsIdentificationSequence,  "X");
  static const BasicProfile kPersonIdentificationCodeSequence =
    const BasicProfile(PTag.kPersonIdentificationCodeSequence,  "D");
  static const BasicProfile kPersonAddress =
    const BasicProfile(PTag.kPersonAddress,  "X");
  static const BasicProfile kPersonTelephoneNumbers =
    const BasicProfile(PTag.kPersonTelephoneNumbers,  "X");
  static const BasicProfile kRequestedProcedureComments =
    const BasicProfile(PTag.kRequestedProcedureComments,  "X");
  static const BasicProfile kReasonForTheImagingServiceRequest =
    const BasicProfile(PTag.kReasonForTheImagingServiceRequest,  "X");
  static const BasicProfile kOrderEnteredBy =
    const BasicProfile(PTag.kOrderEnteredBy,  "X");
  static const BasicProfile kOrderEntererLocation =
    const BasicProfile(PTag.kOrderEntererLocation,  "X");
  static const BasicProfile kOrderCallbackPhoneNumber =
    const BasicProfile(PTag.kOrderCallbackPhoneNumber,  "X");
  static const BasicProfile kPlacerOrderNumberImagingServiceRequest =
    const BasicProfile(PTag.kPlacerOrderNumberImagingServiceRequest,  "Z");
  static const BasicProfile kFillerOrderNumberImagingServiceRequest =
    const BasicProfile(PTag.kFillerOrderNumberImagingServiceRequest,  "Z");
  static const BasicProfile kImagingServiceRequestComments =
    const BasicProfile(PTag.kImagingServiceRequestComments,  "X");
  static const BasicProfile kConfidentialityConstraintonPatientDataDescription =
    const BasicProfile(PTag.kConfidentialityConstraintOnPatientDataDescription,  "X");
  static const BasicProfile kReferencedGeneralPurposeScheduledProcedureStepTransactionUID =
    const BasicProfile(PTag.kReferencedGeneralPurposeScheduledProcedureStepTransactionUID,  "U");
  static const BasicProfile kScheduledStationNameCodeSequence =
    const BasicProfile(PTag.kScheduledStationNameCodeSequence,  "X");
  static const BasicProfile kScheduledStationGeographicLocationCodeSequence =
    const BasicProfile(PTag.kScheduledStationGeographicLocationCodeSequence,  "X");
  static const BasicProfile kPerformedStationNameCodeSequence =
    const BasicProfile(PTag.kPerformedStationNameCodeSequence,  "X");
  static const BasicProfile kPerformedStationGeographicLocationCodeSequence =
    const BasicProfile(PTag.kPerformedStationGeographicLocationCodeSequence,  "X");
  static const BasicProfile kScheduledHumanPerformersSequence =
    const BasicProfile(PTag.kScheduledHumanPerformersSequence,  "X");
  static const BasicProfile kActualHumanPerformersSequence =
    const BasicProfile(PTag.kActualHumanPerformersSequence,  "X");
  static const BasicProfile kHumanPerformersOrganization =
    const BasicProfile(PTag.kHumanPerformerOrganization,  "X");
  static const BasicProfile kHumanPerformerName =
    const BasicProfile(PTag.kHumanPerformerName,  "X");
  static const BasicProfile kVerifyingOrganization =
    const BasicProfile(PTag.kVerifyingOrganization,  "X");
  static const BasicProfile kVerifyingObserverSequence =
    const BasicProfile(PTag.kVerifyingObserverSequence,  "D");
  static const BasicProfile kVerifyingObserverName =
    const BasicProfile(PTag.kVerifyingObserverName,  "D");
  static const BasicProfile kAuthorObserverSequence =
    const BasicProfile(PTag.kAuthorObserverSequence,  "X");
  static const BasicProfile kParticipantSequence =
    const BasicProfile(PTag.kParticipantSequence,  "X");
  static const BasicProfile kCustodialOrganizationSequence =
    const BasicProfile(PTag.kCustodialOrganizationSequence,  "X");
  static const BasicProfile kVerifyingObserverIdentificationCodeSequence =
    const BasicProfile(PTag.kVerifyingObserverIdentificationCodeSequence,  "Z");
  static const BasicProfile kPersonName =
    const BasicProfile(PTag.kPersonName,  "D");
  static const BasicProfile kUID =
    const BasicProfile(PTag.kUID,  "U");
  static const BasicProfile kContentSequence =
    const BasicProfile(PTag.kContentSequence,  "X");
  static const BasicProfile kTemplateExtensionOrganizationUID =
    const BasicProfile(PTag.kTemplateExtensionOrganizationUID,  "U");
  static const BasicProfile kTemplateExtensionCreatorUID =
    const BasicProfile(PTag.kTemplateExtensionCreatorUID,  "U");
  static const BasicProfile kGraphicAnnotationSequence =
    const BasicProfile(PTag.kGraphicAnnotationSequence,  "D");
  static const BasicProfile kContentCreatorName =
    const BasicProfile(PTag.kContentCreatorName,  "Z");
  static const BasicProfile kContentCreatorIdentificationCodeSequence =
    const BasicProfile(PTag.kContentCreatorIdentificationCodeSequence,  "X");
  static const BasicProfile kFiducialUID =
    const BasicProfile(PTag.kFiducialUID,  "U");
  static const BasicProfile kStorageMediaFileSetUID =
    const BasicProfile(PTag.kStorageMediaFileSetUID,  "U");
  static const BasicProfile kIconImageSequence =
    const BasicProfile(PTag.kIconImageSequence,  "X");
  static const BasicProfile kTopicTitle =
    const BasicProfile(PTag.kTopicTitle,  "X");
  static const BasicProfile kTopicSubject =
    const BasicProfile(PTag.kTopicSubject,  "X");
  static const BasicProfile kTopicAuthor =
    const BasicProfile(PTag.kTopicAuthor,  "X");
  static const BasicProfile kTopicKeywords =
    const BasicProfile(PTag.kTopicKeywords,  "X");
  static const BasicProfile kDigitalSignatureUID =
    const BasicProfile(PTag.kDigitalSignatureUID,  "X");
  static const BasicProfile kReferencedDigitalSignatureSequence =
    const BasicProfile(PTag.kReferencedDigitalSignatureSequence,  "X");
  static const BasicProfile kReferencedSOPInstanceMACSequence =
    const BasicProfile(PTag.kReferencedSOPInstanceMACSequence,  "X");
  static const BasicProfile kMAC =
    const BasicProfile(PTag.kMAC,  "X");
  static const BasicProfile kModifiedAttributesSequence =
    const BasicProfile(PTag.kModifiedAttributesSequence,  "X");
  static const BasicProfile kOriginalAttributesSequence =
    const BasicProfile(PTag.kOriginalAttributesSequence,  "X");
  static const BasicProfile kTextString =
    const BasicProfile(PTag.kTextString,  "X");
  static const BasicProfile kReferencedFrameOfReferenceUID =
    const BasicProfile(PTag.kReferencedFrameOfReferenceUID,  "U");
  static const BasicProfile kRelatedFrameOfReferenceUID =
    const BasicProfile(PTag.kRelatedFrameOfReferenceUID,  "U");
  static const BasicProfile kDoseReferenceUID =
    const BasicProfile(PTag.kDoseReferenceUID,  "U");
  static const BasicProfile kReviewerName =
    const BasicProfile(PTag.kReviewerName,  "XZ");
  static const BasicProfile kArbitrary =
    const BasicProfile(PTag.kArbitrary,  "X");
  static const BasicProfile kTextComments =
    const BasicProfile(PTag.kTextComments,  "X");
  static const BasicProfile kResultsIDIssuer =
    const BasicProfile(PTag.kResultsIDIssuer,  "X");
  static const BasicProfile kInterpretationRecorder =
    const BasicProfile(PTag.kInterpretationRecorder,  "X");
  static const BasicProfile kInterpretationTranscriber =
    const BasicProfile(PTag.kInterpretationTranscriber,  "X");
  static const BasicProfile kInterpretationText =
    const BasicProfile(PTag.kInterpretationText,  "X");
  static const BasicProfile kInterpretationAuthor =
    const BasicProfile(PTag.kInterpretationAuthor,  "X");
  static const BasicProfile kInterpretationApproverSequence =
    const BasicProfile(PTag.kInterpretationApproverSequence,  "X");
  static const BasicProfile kPhysicianApprovingInterpretation =
    const BasicProfile(PTag.kPhysicianApprovingInterpretation,  "X");
  static const BasicProfile kInterpretationDiagnosisDescription =
    const BasicProfile(PTag.kInterpretationDiagnosisDescription,  "X");
  static const BasicProfile kResultsDistributionListSequence =
    const BasicProfile(PTag.kResultsDistributionListSequence,  "X");
  static const BasicProfile kDistributionName =
    const BasicProfile(PTag.kDistributionName,  "X");
  static const BasicProfile kDistributionAddress =
    const BasicProfile(PTag.kDistributionAddress,  "X");
  static const BasicProfile kInterpretationIDIssuer =
    const BasicProfile(PTag.kInterpretationIDIssuer,  "X");
  static const BasicProfile kImpressions =
    const BasicProfile(PTag.kImpressions,  "X");
  static const BasicProfile kResultsComments =
    const BasicProfile(PTag.kResultsComments,  "X");
  static const BasicProfile kDigitalSignaturesSequence =
    const BasicProfile(PTag.kDigitalSignaturesSequence,  "X");
  static const BasicProfile kDataSetTrailingPadding =
    const BasicProfile(PTag.kDataSetTrailingPadding,  "X");

  static const List<int> keep = const <int>[];

static const List<int> remove = const [
  0x00001000, 0x00080024, 0x00080025, 0x00080034,
  0x00080035,
  0x00080081,
  0x00080092,
  0x00080094,
  0x00080096,
  0x00080201,
  0x00081030,
  0x0008103e,
  0x00081040,
  0x00081048,
  0x00081049,
  0x00081050,
  0x00081052,
  0x00081060,
  0x00081062,
  0x00081080,
  0x00081084,
  0x00081120,
  0x00082111,
  0x00084000,
  0x00100021,
  0x00100032,
  0x00100050,
  0x00100101,
  0x00100102,
  0x00101000,
  0x00101001,
  0x00101002,
  0x00101005,
  0x00101010,
  0x00101020,
  0x00101030,
  0x00101040,
  0x00101050,
  0x00101060,
  0x00101080,
  0x00101081,
  0x00101090,
  0x00102000,
  0x00102110,
  0x00102150,
  0x00102152,
  0x00102154,
  0x00102160,
  0x00102180,
  0x001021a0,
  0x001021b0,
  0x001021c0,
  0x001021d0,
  0x001021f0,
  0x00102297,
  0x00102299,
  0x00104000,
  0x00181004,
  0x00181005,
  0x00181007,
  0x00181008,
  0x00184000,
  0x00189424,
  0x0018a003,
  0x00203401,
  0x00203404,
  0x00203406,
  0x00204000,
  0x00209158,
  0x00284000,
  0x00320012,
  0x00321020,
  0x00321021,
  0x00321030,
  0x00321032,
  0x00321033,
  0x00321070,
  0x00324000,
  0x00380004,
  0x00380010,
  0x00380011,
  0x0038001e,
  0x00380020,
  0x00380021,
  0x00380040,
  0x00380050,
  0x00380060,
  0x00380061,
  0x00380062,
  0x00380300,
  0x00380400,
  0x00380500,
  0x00384000,
  0x00400001,
  0x00400002,
  0x00400003,
  0x00400004,
  0x00400005,
  0x00400006,
  0x00400007,
  0x0040000b,
  0x00400010,
  0x00400011,
  0x00400012,
  0x00400241,
  0x00400242,
  0x00400243,
  0x00400244,
  0x00400245,
  0x00400250,
  0x00400251,
  0x00400253,
  0x00400254,
  0x00400275,
  0x00400280,
  0x00400555,
  0x00401001,
  0x00401004,
  0x00401005,
  0x00401010,
  0x00401011,
  0x00401102,
  0x00401103,
  0x00401400,
  0x00402001,
  0x00402008,
  0x00402009,
  0x00402010,
  0x00402400,
  0x00403001,
  0x00404025,
  0x00404027,
  0x00404028,
  0x00404030,
  0x00404034,
  0x00404035,
  0x00404036,
  0x00404037,
  0x0040a027,
  0x0040a078,
  0x0040a07a,
  0x0040a07c,
  0x0040a730,
  0x00700086,
  0x00880200,
  0x00880904,
  0x00880906,
  0x00880910,
  0x00880912,
  0x04000100,
  0x04000402,
  0x04000403,
  0x04000404,
  0x04000550,
  0x04000561,
  0x20300020,
  0x40000010,
  0x40004000,
  0x40080042,
  0x40080102,
  0x4008010a,
  0x4008010b,
  0x4008010c,
  0x40080111,
  0x40080114,
  0x40080115,
  0x40080118,
  0x40080119,
  0x4008011a,
  0x40080202,
  0x40080300,
  0x40084000,
  0xfffafffa,
  0xfffcfffc
  ];

static const Map<int, BasicProfile> map = const <int, BasicProfile>{
  0x00001000: kAffectedSOPInstanceUID,
  0x00001001: kRequestedSOPInstanceUID,
  0x00020003: kMediaStorageSOPInstanceUID,
  0x00041511: kReferencedSOPInstanceUIDinFile,
  0x00080014: kInstanceCreatorUID,
  0x00080018: kSOPInstanceUID,
  0x00080020: kStudyDate,
  0x00080021: kSeriesDate,
  0x00080022: kAcquisitionDate,
  0x00080023: kContentDate,
  0x00080024: kOverlayDate,
  0x00080025: kCurveDate,
  0x0008002a: kAcquisitionDateTime,
  0x00080030: kStudyTime,
  0x00080031: kSeriesTime,
  0x00080032: kAcquisitionTime,
  0x00080033: kContentTime,
  0x00080034: kOverlayTime,
  0x00080035: kCurveTime,
  0x00080050: kAccessionNumber,
  0x00080058: kFailedSOPInstanceUIDList,
  0x00080080: kInstitutionName,
  0x00080081: kInstitutionAddress,
  0x00080082: kInstitutionCodeSequence,
  0x00080090: kReferringPhysiciansName,
  0x00080092: kReferringPhysiciansAddress,
  0x00080094: kReferringPhysiciansTelephoneNumbers,
  0x00080096: kReferringPhysiciansIdentificationSequence,
  0x0008010d: kContextGroupExtensionCreatorUID,
  0x00080201: kTimezoneOffsetFromUTC,
  0x00081010: kStationName,
  0x00081030: kStudyDescription,
  0x0008103e: kSeriesDescription,
  0x00081040: kInstitutionalDepartmentName,
  0x00081048: kPhysicianOfRecord,
  0x00081049: kPhysician0xsofRecordIdentificationSequence,
  0x00081050: kPerformingPhysiciansName,
  0x00081052: kPerformingPhysicianIdentificationSequence,
  0x00081060: kNameofPhysician0xsReadingStudy,
  0x00081062: kPhysician0xsReadingStudyIdentificationSequence,
  0x00081070: kOperatorsName,
  0x00081072: kOperatorsIdentificationSequence,
  0x00081080: kAdmittingDiagnosesDescription,
  0x00081084: kAdmittingDiagnosesCodeSequence,
  0x00081110: kReferencedStudySequence,
  0x00081111: kReferencedPerformedProcedureStepSequence,
  0x00081120: kReferencedPatientSequence,
  0x00081140: kReferencedImageSequence,
  0x00081155: kReferencedSOPInstanceUID,
  0x00081195: kTransactionUID,
  0x00082111: kDerivationDescription,
  0x00082112: kSourceImageSequence,
  0x00083010: kIrradiationEventUID,
  0x00084000: kIdentifyingComments,
  0x00089123: kCreatorVersionUID,
  0x00100010: kPatientsName,
  0x00100020: kPatientID,
  0x00100021: kIssuerofPatientID,
  0x00100030: kPatientsBirthDate,
  0x00100032: kPatientsBirthTime,
  0x00100040: kPatientsSex,
  0x00100050: kPatientsInsurancePlanCodeSequence,
  0x00100101: kPatientsPrimaryLanguageCodeSequence,
  0x00100102: kPatientsPrimaryLanguageModifierCodeSequence,
  0x00101000: kOtherPatientIDs,
  0x00101001: kOtherPatientNames,
  0x00101002: kOtherPatientIDsSequence,
  0x00101005: kPatientsBirthName,
  0x00101010: kPatientAge,
  0x00101020: kPatientSize,
  0x00101030: kPatientWeight,
  0x00101040: kPatientAddress,
  0x00101050: kInsurancePlanIdentification,
  0x00101060: kPatientMotherBirthName,
  0x00101080: kMilitaryRank,
  0x00101081: kBranchOfService,
  0x00101090: kMedicalRecordLocator,
  0x00102000: kMedicalAlerts,
  0x00102110: kAllergies,
  0x00102150: kCountryOfResidence,
  0x00102152: kRegionOfResidence,
  0x00102154: kPatientTelephoneNumbers,
  0x00102160: kEthnicGroup,
  0x00102180: kOccupation,
  0x001021a0: kSmokingStatus,
  0x001021b0: kAdditionalPatientHistory,
  0x001021c0: kPregnancyStatus,
  0x001021d0: kLastMenstrualDate,
  0x001021f0: kPatientReligiousPreference,
  0x00102203: kPatientSexNeutered,
  0x00102297: kResponsiblePerson,
  0x00102299: kResponsibleOrganization,
  0x00104000: kPatientComments,
  0x00180010: kContrastBolusAgent,
  0x00181000: kDeviceSerialNumber,
  0x00181002: kDeviceUID,
  0x00181004: kPlateID,
  0x00181005: kGeneratorID,
  0x00181007: kCassetteID,
  0x00181008: kGantryID,
  0x00181030: kProtocolName,
  0x00181400: kAcquisitionDeviceProcessingDescription,
  0x00184000: kAcquisitionComments,
  0x0018700a: kDetectorID,
  0x00189424: kAcquisitionProtocolDescription,
  0x0018a003: kContributionDescription,
  0x0020000d: kStudyInstanceUID,
  0x0020000e: kSeriesInstanceUID,
  0x00200010: kStudyID,
  0x00200052: kFrameOfReferenceUID,
  0x00200200: kSynchronizationFrameOfReferenceUID,
  0x00203401: kModifyingDeviceID,
  0x00203404: kModifyingDeviceManufacturer,
  0x00203406: kModifiedImageDescription,
  0x00204000: kImageComments,
  0x00209158: kFrameComments,
  0x00209161: kConcatenationUID,
  0x00209164: kDimensionOrganizationUID,
  0x00281199: kPaletteColorLookupTableUID,
  0x00281214: kLargePaletteColorLookupTableUID,
  0x00284000: kImagePresentationComments,
  0x00320012: kStudyIDIssuer,
  0x00321020: kScheduledStudyLocation,
  0x00321021: kScheduledStudyLocationAETitle,
  0x00321030: kReasonForStudy,
  0x00321032: kRequestingPhysician,
  0x00321033: kRequestingService,
  0x00321060: kRequestedProcedureDescription,
  0x00321070: kRequestedContrastAgent,
  0x00324000: kStudyComments,
  0x00380004: kReferencedPatientAliasSequence,
  0x00380010: kAdmissionID,
  0x00380011: kIssuerOfAdmissionID,
  0x0038001e: kScheduledPatientInstitutionResidence,
  0x00380020: kAdmittingDate,
  0x00380021: kAdmittingTime,
  0x00380040: kDischargeDiagnosisDescription,
  0x00380050: kSpecialNeeds,
  0x00380060: kServiceEpisodeID,
  0x00380061: kIssuerOfServiceEpisodeID,
  0x00380062: kServiceEpisodeDescription,
  0x00380300: kCurrentPatientLocation,
  0x00380400: kPatientInstitutionResidence,
  0x00380500: kPatientState,
  0x00384000: kVisitComments,
  0x00400001: kScheduledStationAETitle,
  0x00400002: kScheduledProcedureStepStartDate,
  0x00400003: kScheduledProcedureStepStartTime,
  0x00400004: kScheduledProcedureStepEndDate,
  0x00400005: kScheduledProcedureStepEndTime,
  0x00400006: kScheduledPerformingPhysicianName,
  0x00400007: kScheduledProcedureStepDescription,
  0x0040000b: kScheduledPerformingPhysicianIdentificationSequence,
  0x00400010: kScheduledStationName,
  0x00400011: kScheduledProcedureStepLocation,
  0x00400012: kPreMedication,
  0x00400241: kPerformedStationAETitle,
  0x00400242: kPerformedStationName,
  0x00400243: kPerformedLocation,
  0x00400244: kPerformedProcedureStepStartDate,
  0x00400245: kPerformedProcedureStepStartTime,
  0x00400250: kPerformedProcedureStepEndDate,
  0x00400251: kPerformedProcedureStepEndTime,
  0x00400253: kPerformedProcedureStepID,
  0x00400254: kPerformedProcedureStepDescription,
  0x00400275: kRequestAttributesSequence,
  0x00400280: kCommentsOnThePerformedProcedureStep,
  0x00400555: kAcquisitionContextSequence,
  0x00401001: kRequestedProcedureID,
  0x00401004: kPatientTransportArrangements,
  0x00401005: kRequestedProcedureLocation,
  0x00401010: kNamesOfIntendedRecipientsOfResults,
  0x00401011: kIntendedRecipientsOfResultsIdentificationSequence,
  0x00401101: kPersonIdentificationCodeSequence,
  0x00401102: kPersonAddress,
  0x00401103: kPersonTelephoneNumbers,
  0x00401400: kRequestedProcedureComments,
  0x00402001: kReasonForTheImagingServiceRequest,
  0x00402008: kOrderEnteredBy,
  0x00402009: kOrderEntererLocation,
  0x00402010: kOrderCallbackPhoneNumber,
  0x00402016: kPlacerOrderNumberImagingServiceRequest,
  0x00402017: kFillerOrderNumberImagingServiceRequest,
  0x00402400: kImagingServiceRequestComments,
  0x00403001: kConfidentialityConstraintonPatientDataDescription,
  0x00404023: kReferencedGeneralPurposeScheduledProcedureStepTransactionUID,
  0x00404025: kScheduledStationNameCodeSequence,
  0x00404027: kScheduledStationGeographicLocationCodeSequence,
  0x00404028: kPerformedStationNameCodeSequence,
  0x00404030: kPerformedStationGeographicLocationCodeSequence,
  0x00404034: kScheduledHumanPerformersSequence,
  0x00404035: kActualHumanPerformersSequence,
  0x00404036: kHumanPerformersOrganization,
  0x00404037: kHumanPerformerName,
  0x0040a027: kVerifyingOrganization,
  0x0040a073: kVerifyingObserverSequence,
  0x0040a075: kVerifyingObserverName,
  0x0040a078: kAuthorObserverSequence,
  0x0040a07a: kParticipantSequence,
  0x0040a07c: kCustodialOrganizationSequence,
  0x0040a088: kVerifyingObserverIdentificationCodeSequence,
  0x0040a123: kPersonName,
  0x0040a124: kUID,
  0x0040a730: kContentSequence,
  0x0040db0c: kTemplateExtensionOrganizationUID,
  0x0040db0d: kTemplateExtensionCreatorUID,
  0x00700001: kGraphicAnnotationSequence,
  0x00700084: kContentCreatorName,
  0x00700086: kContentCreatorIdentificationCodeSequence,
  0x0070031a: kFiducialUID,
  0x00880140: kStorageMediaFileSetUID,
  0x00880200: kIconImageSequence,
  0x00880904: kTopicTitle,
  0x00880906: kTopicSubject,
  0x00880910: kTopicAuthor,
  0x00880912: kTopicKeywords,
  0x04000100: kDigitalSignatureUID,
  0x04000402: kReferencedDigitalSignatureSequence,
  0x04000403: kReferencedSOPInstanceMACSequence,
  0x04000404: kMAC,
  0x04000550: kModifiedAttributesSequence,
  0x04000561: kOriginalAttributesSequence,
  0x20300020: kTextString,
  0x30060024: kReferencedFrameOfReferenceUID,
  0x300600c2: kRelatedFrameOfReferenceUID,
  0x300a0013: kDoseReferenceUID,
  0x300e0008: kReviewerName,
  0x40000010: kArbitrary,
  0x40004000: kTextComments,
  0x40080042: kResultsIDIssuer,
  0x40080102: kInterpretationRecorder,
  0x4008010a: kInterpretationTranscriber,
  0x4008010b: kInterpretationText,
  0x4008010c: kInterpretationAuthor,
  0x40080111: kInterpretationApproverSequence,
  0x40080114: kPhysicianApprovingInterpretation,
  0x40080115: kInterpretationDiagnosisDescription,
  0x40080118: kResultsDistributionListSequence,
  0x40080119: kDistributionName,
  0x4008011a: kDistributionAddress,
  0x40080202: kInterpretationIDIssuer,
  0x40080300: kImpressions,
  0x40084000: kResultsComments,
  0xfffafffa: kDigitalSignaturesSequence,
  0xfffcfffc: kDataSetTrailingPadding
  };

static const List<int> tags = const [
  0x00001000,
  0x00001001,
  0x00020003,
  0x00041511,
  0x00080014,
  0x00080018,
  0x00080020,
  0x00080021,
  0x00080022,
  0x00080023,
  0x00080024,
  0x00080025,
  0x0008002a,
  0x00080030,
  0x00080031,
  0x00080032,
  0x00080033,
  0x00080034,
  0x00080035,
  0x00080050,
  0x00080058,
  0x00080080,
  0x00080081,
  0x00080082,
  0x00080090,
  0x00080092,
  0x00080094,
  0x00080096,
  0x0008010d,
  0x00080201,
  0x00081010,
  0x00081030,
  0x0008103e,
  0x00081040,
  0x00081048,
  0x00081049,
  0x00081050,
  0x00081052,
  0x00081060,
  0x00081062,
  0x00081070,
  0x00081072,
  0x00081080,
  0x00081084,
  0x00081110,
  0x00081111,
  0x00081120,
  0x00081140,
  0x00081155,
  0x00081195,
  0x00082111,
  0x00082112,
  0x00083010,
  0x00084000,
  0x00089123,
  0x00100010,
  0x00100020,
  0x00100021,
  0x00100030,
  0x00100032,
  0x00100040,
  0x00100050,
  0x00100101,
  0x00100102,
  0x00101000,
  0x00101001,
  0x00101002,
  0x00101005,
  0x00101010,
  0x00101020,
  0x00101030,
  0x00101040,
  0x00101050,
  0x00101060,
  0x00101080,
  0x00101081,
  0x00101090,
  0x00102000,
  0x00102110,
  0x00102150,
  0x00102152,
  0x00102154,
  0x00102160,
  0x00102180,
  0x001021a0,
  0x001021b0,
  0x001021c0,
  0x001021d0,
  0x001021f0,
  0x00102203,
  0x00102297,
  0x00102299,
  0x00104000,
  0x00180010,
  0x00181000,
  0x00181002,
  0x00181004,
  0x00181005,
  0x00181007,
  0x00181008,
  0x00181030,
  0x00181400,
  0x00184000,
  0x0018700a,
  0x00189424,
  0x0018a003,
  0x0020000d,
  0x0020000e,
  0x00200010,
  0x00200052,
  0x00200200,
  0x00203401,
  0x00203404,
  0x00203406,
  0x00204000,
  0x00209158,
  0x00209161,
  0x00209164,
  0x00281199,
  0x00281214,
  0x00284000,
  0x00320012,
  0x00321020,
  0x00321021,
  0x00321030,
  0x00321032,
  0x00321033,
  0x00321060,
  0x00321070,
  0x00324000,
  0x00380004,
  0x00380010,
  0x00380011,
  0x0038001e,
  0x00380020,
  0x00380021,
  0x00380040,
  0x00380050,
  0x00380060,
  0x00380061,
  0x00380062,
  0x00380300,
  0x00380400,
  0x00380500,
  0x00384000,
  0x00400001,
  0x00400002,
  0x00400003,
  0x00400004,
  0x00400005,
  0x00400006,
  0x00400007,
  0x0040000b,
  0x00400010,
  0x00400011,
  0x00400012,
  0x00400241,
  0x00400242,
  0x00400243,
  0x00400244,
  0x00400245,
  0x00400250,
  0x00400251,
  0x00400253,
  0x00400254,
  0x00400275,
  0x00400280,
  0x00400555,
  0x00401001,
  0x00401004,
  0x00401005,
  0x00401010,
  0x00401011,
  0x00401101,
  0x00401102,
  0x00401103,
  0x00401400,
  0x00402001,
  0x00402008,
  0x00402009,
  0x00402010,
  0x00402016,
  0x00402017,
  0x00402400,
  0x00403001,
  0x00404023,
  0x00404025,
  0x00404027,
  0x00404028,
  0x00404030,
  0x00404034,
  0x00404035,
  0x00404036,
  0x00404037,
  0x0040a027,
  0x0040a073,
  0x0040a075,
  0x0040a078,
  0x0040a07a,
  0x0040a07c,
  0x0040a088,
  0x0040a123,
  0x0040a124,
  0x0040a730,
  0x0040db0c,
  0x0040db0d,
  0x00700001,
  0x00700084,
  0x00700086,
  0x0070031a,
  0x00880140,
  0x00880200,
  0x00880904,
  0x00880906,
  0x00880910,
  0x00880912,
  0x04000100,
  0x04000402,
  0x04000403,
  0x04000404,
  0x04000550,
  0x04000561,
  0x20300020,
  0x30060024,
  0x300600c2,
  0x300a0013,
  0x300e0008,
  0x40000010,
  0x40004000,
  0x40080042,
  0x40080102,
  0x4008010a,
  0x4008010b,
  0x4008010c,
  0x40080111,
  0x40080114,
  0x40080115,
  0x40080118,
  0x40080119,
  0x4008011a,
  0x40080202,
  0x40080300,
  0x40084000,
  0xfffafffa,
  0xfffcfffc
  ];
}
