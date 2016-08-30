// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/base.dart';
import 'package:deid/deid.dart';

// DICOM attributes in De-Identification Profile (and Options)
class BasicProfile {
  final String keyword;
  final int tag;
  final VR vr;
  final String action;

  const BasicProfile(this.keyword, this.tag, this.vr, this.action);

  static const options = const [
    CleanDescriptorsOption,
    CleanGraphicsOption,
    // CleanPixelDataOption,
    // CleanRecognizableVisualFeaturesOption,
    CleanStructuredContentOption,
    RetainDeviceIdentityOption,
    RetainLongFullDatesOption,
    RetainLongModifiedDatesOption,
    RetainPatientCharacteristicsOption,
    RetainSafePrivateOption,
    RetainUidsOption
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

  String toString() => 'Basic Profile: $keyword ${tagToDcm(tag)} ${vr.name} $action';

  static BasicProfile lookup(int tag) => map[tag];

  static const kAffectedSOPInstanceUID =
    const BasicProfile("AffectedSOPInstanceUID", 0x00001000, VR.kUI, "X");
  static const kRequestedSOPInstanceUID =
    const BasicProfile("RequestedSOPInstanceUID", 0x00001001, VR.kUI, "U");
  static const kMediaStorageSOPInstanceUID =
    const BasicProfile("MediaStorageSOPInstanceUID", 0x00020003, VR.kUI, "U");
  static const kReferencedSOPInstanceUIDinFile =
    const BasicProfile("ReferencedSOPInstanceUIDinFile", 0x00041511, VR.kUI, "U");
  static const kInstanceCreatorUID =
    const BasicProfile("InstanceCreatorUID", 0x00080014, VR.kUI, "U");
  static const kSOPInstanceUID =
    const BasicProfile("SOPInstanceUID", 0x00080018, VR.kUI, "U");
  static const kStudyDate =
    const BasicProfile("StudyDate", 0x00080020, VR.kDA, "Z");
  static const kSeriesDate =
    const BasicProfile("SeriesDate", 0x00080021, VR.kDA, "XD");
  static const kAcquisitionDate =
    const BasicProfile("AcquisitionDate", 0x00080022, VR.kDA, "XZ");
  static const kContentDate =
    const BasicProfile("ContentDate", 0x00080023, VR.kDA, "ZD");
  static const kOverlayDate =
    const BasicProfile("OverlayDate", 0x00080024, VR.kDA, "X");
  static const kCurveDate =
    const BasicProfile("CurveDate", 0x00080025, VR.kDA, "X");
  static const kAcquisitionDateTime =
    const BasicProfile("AcquisitionDateTime", 0x0008002a, VR.kDT, "XD");
  static const kStudyTime =
    const BasicProfile("StudyTime", 0x00080030, VR.kTM, "Z");
  static const kSeriesTime =
    const BasicProfile("SeriesTime", 0x00080031, VR.kTM, "XD");
  static const kAcquisitionTime =
    const BasicProfile("AcquisitionTime", 0x00080032, VR.kTM, "XZ");
  static const kContentTime =
    const BasicProfile("ContentTime", 0x00080033, VR.kTM, "ZD");
  static const kOverlayTime =
    const BasicProfile("OverlayTime", 0x00080034, VR.kTM, "X");
  static const kCurveTime =
    const BasicProfile("CurveTime", 0x00080035, VR.kTM, "X");
  static const kAccessionNumber =
    const BasicProfile("AccessionNumber", 0x00080050, VR.kSH, "Z");
  static const kFailedSOPInstanceUIDList =
    const BasicProfile("FailedSOPInstanceUIDList", 0x00080058, VR.kUI, "U");
  static const kInstitutionName =
    const BasicProfile("InstitutionName", 0x00080080, VR.kLO, "XZD");
  static const kInstitutionAddress =
    const BasicProfile("InstitutionAddress", 0x00080081, VR.kST, "X");
  static const kInstitutionCodeSequence =
    const BasicProfile("InstitutionCodeSequence", 0x00080082, VR.kSQ, "XZD");
  static const kReferringPhysiciansName =
    const BasicProfile("ReferringPhysiciansName", 0x00080090, VR.kPN, "Z");
  static const kReferringPhysiciansAddress =
    const BasicProfile("ReferringPhysiciansAddress", 0x00080092, VR.kST, "X");
  static const kReferringPhysiciansTelephoneNumbers =
    const BasicProfile("ReferringPhysiciansTelephoneNumbers", 0x00080094, VR.kSH, "X");
  static const kReferringPhysiciansIdentificationSequence =
    const BasicProfile("ReferringPhysiciansIdentificationSequence", 0x00080096, VR.kSQ, "X");
  static const kContextGroupExtensionCreatorUID =
    const BasicProfile("ContextGroupExtensionCreatorUID", 0x0008010d, VR.kUI, "U");
  static const kTimezoneOffsetFromUTC =
    const BasicProfile("TimezoneOffsetFromUTC", 0x00080201, VR.kSH, "X");
  static const kStationName =
    const BasicProfile("StationName", 0x00081010, VR.kSH, "XZD");
  static const kStudyDescription =
    const BasicProfile("StudyDescription", 0x00081030, VR.kLO, "X");
  static const kSeriesDescription =
    const BasicProfile("SeriesDescription", 0x0008103e, VR.kLO, "X");
  static const kInstitutionalDepartmentName =
    const BasicProfile("InstitutionalDepartmentName", 0x00081040, VR.kLO, "X");
  static const kPhysician0xsofRecord =
    const BasicProfile("Physician0xsofRecord", 0x00081048, VR.kPN, "X");
  static const kPhysician0xsofRecordIdentificationSequence =
    const BasicProfile("Physician0xsofRecordIdentificationSequence", 0x00081049, VR.kSQ, "X");
  static const kPerformingPhysiciansName =
    const BasicProfile("PerformingPhysiciansName", 0x00081050, VR.kPN, "X");
  static const kPerformingPhysicianIdentificationSequence =
    const BasicProfile("PerformingPhysicianIdentificationSequence", 0x00081052, VR.kSQ, "X");
  static const kNameofPhysician0xsReadingStudy =
    const BasicProfile("NameofPhysician0xsReadingStudy", 0x00081060, VR.kPN, "X");
  static const kPhysician0xsReadingStudyIdentificationSequence =
    const BasicProfile("Physician0xsReadingStudyIdentificationSequence", 0x00081062, VR.kSQ, "X");
  static const kOperatorsName =
    const BasicProfile("OperatorsName", 0x00081070, VR.kPN, "XZD");
  static const kOperatorsIdentificationSequence =
    const BasicProfile("OperatorsIdentificationSequence", 0x00081072, VR.kSQ, "XD");
  static const kAdmittingDiagnosesDescription =
    const BasicProfile("AdmittingDiagnosesDescription", 0x00081080, VR.kLO, "X");
  static const kAdmittingDiagnosesCodeSequence =
    const BasicProfile("AdmittingDiagnosesCodeSequence", 0x00081084, VR.kSQ, "X");
  static const kReferencedStudySequence =
    const BasicProfile("ReferencedStudySequence", 0x00081110, VR.kSQ, "XZ");
  static const kReferencedPerformedProcedureStepSequence =
    const BasicProfile("ReferencedPerformedProcedureStepSequence", 0x00081111, VR.kSQ, "XZD");
  static const kReferencedPatientSequence =
    const BasicProfile("ReferencedPatientSequence", 0x00081120, VR.kSQ, "X");
  static const kReferencedImageSequence =
    const BasicProfile("ReferencedImageSequence", 0x00081140, VR.kSQ, "XZU");
  static const kReferencedSOPInstanceUID =
    const BasicProfile("ReferencedSOPInstanceUID", 0x00081155, VR.kUI, "U");
  static const kTransactionUID =
    const BasicProfile("TransactionUID", 0x00081195, VR.kUI, "U");
  static const kDerivationDescription =
    const BasicProfile("DerivationDescription", 0x00082111, VR.kST, "X");
  static const kSourceImageSequence =
    const BasicProfile("SourceImageSequence", 0x00082112, VR.kSQ, "XZU");
  static const kIrradiationEventUID =
    const BasicProfile("IrradiationEventUID", 0x00083010, VR.kUI, "U");
  static const kIdentifyingComments =
    const BasicProfile("IdentifyingComments", 0x00084000, VR.kLT, "X");
  static const kCreatorVersionUID =
    const BasicProfile("CreatorVersionUID", 0x00089123, VR.kUI, "U");
  static const kPatientsName =
    const BasicProfile("PatientsName", 0x00100010, VR.kPN, "Z");
  static const kPatientID =
    const BasicProfile("PatientID", 0x00100020, VR.kLO, "Z");
  static const kIssuerofPatientID =
    const BasicProfile("IssuerofPatientID", 0x00100021, VR.kLO, "X");
  static const kPatientsBirthDate =
    const BasicProfile("PatientsBirthDate", 0x00100030, VR.kDA, "Z");
  static const kPatientsBirthTime =
    const BasicProfile("PatientsBirthTime", 0x00100032, VR.kTM, "X");
  static const kPatientsSex =
    const BasicProfile("PatientsSex", 0x00100040, VR.kCS, "Z");
  static const kPatientsInsurancePlanCodeSequence =
    const BasicProfile("PatientsInsurancePlanCodeSequence", 0x00100050, VR.kSQ, "X");
  static const kPatientsPrimaryLanguageCodeSequence =
    const BasicProfile("PatientsPrimaryLanguageCodeSequence", 0x00100101, VR.kSQ, "X");
  static const kPatientsPrimaryLanguageModifierCodeSequence =
    const BasicProfile("PatientsPrimaryLanguageModifierCodeSequence", 0x00100102, VR.kSQ, "X");
  static const kOtherPatientIDs =
    const BasicProfile("OtherPatientIDs", 0x00101000, VR.kLO, "X");
  static const kOtherPatientNames =
    const BasicProfile("OtherPatientNames", 0x00101001, VR.kPN, "X");
  static const kOtherPatientIDsSequence =
    const BasicProfile("OtherPatientIDsSequence", 0x00101002, VR.kSQ, "X");
  static const kPatientsBirthName =
    const BasicProfile("PatientsBirthName", 0x00101005, VR.kPN, "X");
  static const kPatientsAge =
    const BasicProfile("PatientsAge", 0x00101010, VR.kAS, "X");
  static const kPatientsSize =
    const BasicProfile("PatientsSize", 0x00101020, VR.kDS, "X");
  static const kPatientsWeight =
    const BasicProfile("PatientsWeight", 0x00101030, VR.kDS, "X");
  static const kPatientAddress =
    const BasicProfile("PatientAddress", 0x00101040, VR.kLO, "X");
  static const kInsurancePlanIdentification =
    const BasicProfile("InsurancePlanIdentification", 0x00101050, VR.kLO, "X");
  static const kPatientsMothersBirthName =
    const BasicProfile("PatientsMothersBirthName", 0x00101060, VR.kPN, "X");
  static const kMilitaryRank =
    const BasicProfile("MilitaryRank", 0x00101080, VR.kLO, "X");
  static const kBranchofService =
    const BasicProfile("BranchofService", 0x00101081, VR.kLO, "X");
  static const kMedicalRecordLocator =
    const BasicProfile("MedicalRecordLocator", 0x00101090, VR.kLO, "X");
  static const kMedicalAlerts =
    const BasicProfile("MedicalAlerts", 0x00102000, VR.kLO, "X");
  static const kAllergies =
    const BasicProfile("Allergies", 0x00102110, VR.kLO, "X");
  static const kCountryofResidence =
    const BasicProfile("CountryofResidence", 0x00102150, VR.kLO, "X");
  static const kRegionofResidence =
    const BasicProfile("RegionofResidence", 0x00102152, VR.kLO, "X");
  static const kPatientsTelephoneNumbers =
    const BasicProfile("PatientsTelephoneNumbers", 0x00102154, VR.kSH, "X");
  static const kEthnicGroup =
    const BasicProfile("EthnicGroup", 0x00102160, VR.kSH, "X");
  static const kOccupation =
    const BasicProfile("Occupation", 0x00102180, VR.kSH, "X");
  static const kSmokingStatus =
    const BasicProfile("SmokingStatus", 0x001021a0, VR.kCS, "X");
  static const kAdditionalPatientsHistory =
    const BasicProfile("AdditionalPatientsHistory", 0x001021b0, VR.kLT, "X");
  static const kPregnancyStatus =
    const BasicProfile("PregnancyStatus", 0x001021c0, VR.kUS, "X");
  static const kLastMenstrualDate =
    const BasicProfile("LastMenstrualDate", 0x001021d0, VR.kDA, "X");
  static const kPatientsReligiousPreference =
    const BasicProfile("PatientsReligiousPreference", 0x001021f0, VR.kLO, "X");
  static const kPatientSexNeutered =
    const BasicProfile("PatientSexNeutered", 0x00102203, VR.kCS, "XZ");
  static const kResponsiblePerson =
    const BasicProfile("ResponsiblePerson", 0x00102297, VR.kPN, "X");
  static const kResponsibleOrganization =
    const BasicProfile("ResponsibleOrganization", 0x00102299, VR.kLO, "X");
  static const kPatientComments =
    const BasicProfile("PatientComments", 0x00104000, VR.kLT, "X");
  static const kContrastBolusAgent =
    const BasicProfile("ContrastBolusAgent", 0x00180010, VR.kLO, "ZD");
  static const kDeviceSerialNumber =
    const BasicProfile("DeviceSerialNumber", 0x00181000, VR.kLO, "XZD");
  static const kDeviceUID =
    const BasicProfile("DeviceUID", 0x00181002, VR.kUI, "U");
  static const kPlateID =
    const BasicProfile("PlateID", 0x00181004, VR.kLO, "X");
  static const kGeneratorID =
    const BasicProfile("GeneratorID", 0x00181005, VR.kLO, "X");
  static const kCassetteID =
    const BasicProfile("CassetteID", 0x00181007, VR.kLO, "X");
  static const kGantryID =
    const BasicProfile("GantryID", 0x00181008, VR.kLO, "X");
  static const kProtocolName =
    const BasicProfile("ProtocolName", 0x00181030, VR.kLO, "XD");
  static const kAcquisitionDeviceProcessingDescription =
    const BasicProfile("AcquisitionDeviceProcessingDescription", 0x00181400, VR.kLO, "XD");
  static const kAcquisitionComments =
    const BasicProfile("AcquisitionComments", 0x00184000, VR.kLT, "X");
  static const kDetectorID =
    const BasicProfile("DetectorID", 0x0018700a, VR.kSH, "XD");
  static const kAcquisitionProtocolDescription =
    const BasicProfile("AcquisitionProtocolDescription", 0x00189424, VR.kLT, "X");
  static const kContributionDescription =
    const BasicProfile("ContributionDescription", 0x0018a003, VR.kST, "X");
  static const kStudyInstanceUID =
    const BasicProfile("StudyInstanceUID", 0x0020000d, VR.kUI, "U");
  static const kSeriesInstanceUID =
    const BasicProfile("SeriesInstanceUID", 0x0020000e, VR.kUI, "U");
  static const kStudyID =
    const BasicProfile("StudyID", 0x00200010, VR.kSH, "Z");
  static const kFrameofReferenceUID =
    const BasicProfile("FrameofReferenceUID", 0x00200052, VR.kUI, "U");
  static const kSynchronizationFrameofReferenceUID =
    const BasicProfile("SynchronizationFrameofReferenceUID", 0x00200200, VR.kUI, "U");
  static const kModifyingDeviceID =
    const BasicProfile("ModifyingDeviceID", 0x00203401, VR.kCS, "X");
  static const kModifyingDeviceManufacturer =
    const BasicProfile("ModifyingDeviceManufacturer", 0x00203404, VR.kLO, "X");
  static const kModifiedImageDescription =
    const BasicProfile("ModifiedImageDescription", 0x00203406, VR.kLO, "X");
  static const kImageComments =
    const BasicProfile("ImageComments", 0x00204000, VR.kLT, "X");
  static const kFrameComments =
    const BasicProfile("FrameComments", 0x00209158, VR.kLT, "X");
  static const kConcatenationUID =
    const BasicProfile("ConcatenationUID", 0x00209161, VR.kUI, "U");
  static const kDimensionOrganizationUID =
    const BasicProfile("DimensionOrganizationUID", 0x00209164, VR.kUI, "U");
  static const kPaletteColorLookupTableUID =
    const BasicProfile("PaletteColorLookupTableUID", 0x00281199, VR.kUI, "U");
  static const kLargePaletteColorLookupTableUID =
    const BasicProfile("LargePaletteColorLookupTableUID", 0x00281214, VR.kUI, "U");
  static const kImagePresentationComments =
    const BasicProfile("ImagePresentationComments", 0x00284000, VR.kLT, "X");
  static const kStudyIDIssuer =
    const BasicProfile("StudyIDIssuer", 0x00320012, VR.kLO, "X");
  static const kScheduledStudyLocation =
    const BasicProfile("ScheduledStudyLocation", 0x00321020, VR.kLO, "X");
  static const kScheduledStudyLocationAETitle =
    const BasicProfile("ScheduledStudyLocationAETitle", 0x00321021, VR.kAE, "X");
  static const kReasonforStudy =
    const BasicProfile("ReasonforStudy", 0x00321030, VR.kLO, "X");
  static const kRequestingPhysician =
    const BasicProfile("RequestingPhysician", 0x00321032, VR.kPN, "X");
  static const kRequestingService =
    const BasicProfile("RequestingService", 0x00321033, VR.kLO, "X");
  static const kRequestedProcedureDescription =
    const BasicProfile("RequestedProcedureDescription", 0x00321060, VR.kLO, "XZ");
  static const kRequestedContrastAgent =
    const BasicProfile("RequestedContrastAgent", 0x00321070, VR.kLO, "X");
  static const kStudyComments =
    const BasicProfile("StudyComments", 0x00324000, VR.kLT, "X");
  static const kReferencedPatientAliasSequence =
    const BasicProfile("ReferencedPatientAliasSequence", 0x00380004, VR.kSQ, "X");
  static const kAdmissionID =
    const BasicProfile("AdmissionID", 0x00380010, VR.kLO, "X");
  static const kIssuerofAdmissionID =
    const BasicProfile("IssuerofAdmissionID", 0x00380011, VR.kLO, "X");
  static const kScheduledPatientInstitutionResidence =
    const BasicProfile("ScheduledPatientInstitutionResidence", 0x0038001e, VR.kLO, "X");
  static const kAdmittingDate =
    const BasicProfile("AdmittingDate", 0x00380020, VR.kDA, "X");
  static const kAdmittingTime =
    const BasicProfile("AdmittingTime", 0x00380021, VR.kTM, "X");
  static const kDischargeDiagnosisDescription =
    const BasicProfile("DischargeDiagnosisDescription", 0x00380040, VR.kLO, "X");
  static const kSpecialNeeds =
    const BasicProfile("SpecialNeeds", 0x00380050, VR.kLO, "X");
  static const kServiceEpisodeID =
    const BasicProfile("ServiceEpisodeID", 0x00380060, VR.kLO, "X");
  static const kIssuerofServiceEpisodeID =
    const BasicProfile("IssuerofServiceEpisodeID", 0x00380061, VR.kLO, "X");
  static const kServiceEpisodeDescription =
    const BasicProfile("ServiceEpisodeDescription", 0x00380062, VR.kLO, "X");
  static const kCurrentPatientLocation =
    const BasicProfile("CurrentPatientLocation", 0x00380300, VR.kLO, "X");
  static const kPatientsInstitutionResidence =
    const BasicProfile("PatientsInstitutionResidence", 0x00380400, VR.kLO, "X");
  static const kPatientState =
    const BasicProfile("PatientState", 0x00380500, VR.kLO, "X");
  static const kVisitComments =
    const BasicProfile("VisitComments", 0x00384000, VR.kLT, "X");
  static const kScheduledStationAETitle =
    const BasicProfile("ScheduledStationAETitle", 0x00400001, VR.kAE, "X");
  static const kScheduledProcedureStepStartDate =
    const BasicProfile("ScheduledProcedureStepStartDate", 0x00400002, VR.kDA, "X");
  static const kScheduledProcedureStepStartTime =
    const BasicProfile("ScheduledProcedureStepStartTime", 0x00400003, VR.kTM, "X");
  static const kScheduledProcedureStepEndDate =
    const BasicProfile("ScheduledProcedureStepEndDate", 0x00400004, VR.kDA, "X");
  static const kScheduledProcedureStepEndTime =
    const BasicProfile("ScheduledProcedureStepEndTime", 0x00400005, VR.kTM, "X");
  static const kScheduledPerformingPhysicianName =
    const BasicProfile("ScheduledPerformingPhysicianName", 0x00400006, VR.kPN, "X");
  static const kScheduledProcedureStepDescription =
    const BasicProfile("ScheduledProcedureStepDescription", 0x00400007, VR.kLO, "X");
  static const kScheduledPerformingPhysicianIdentificationSequence =
    const BasicProfile("ScheduledPerformingPhysicianIdentificationSequence", 0x0040000b, VR.kSQ, "X");
  static const kScheduledStationName =
    const BasicProfile("ScheduledStationName", 0x00400010, VR.kSH, "X");
  static const kScheduledProcedureStepLocation =
    const BasicProfile("ScheduledProcedureStepLocation", 0x00400011, VR.kSH, "X");
  static const kPre_Medication =
    const BasicProfile("Pre_Medication", 0x00400012, VR.kLO, "X");
  static const kPerformedStationAETitle =
    const BasicProfile("PerformedStationAETitle", 0x00400241, VR.kAE, "X");
  static const kPerformedStationName =
    const BasicProfile("PerformedStationName", 0x00400242, VR.kSH, "X");
  static const kPerformedLocation =
    const BasicProfile("PerformedLocation", 0x00400243, VR.kSH, "X");
  static const kPerformedProcedureStepStartDate =
    const BasicProfile("PerformedProcedureStepStartDate", 0x00400244, VR.kDA, "X");
  static const kPerformedProcedureStepStartTime =
    const BasicProfile("PerformedProcedureStepStartTime", 0x00400245, VR.kTM, "X");
  static const kPerformedProcedureStepEndDate =
    const BasicProfile("PerformedProcedureStepEndDate", 0x00400250, VR.kDA, "X");
  static const kPerformedProcedureStepEndTime =
    const BasicProfile("PerformedProcedureStepEndTime", 0x00400251, VR.kTM, "X");
  static const kPerformedProcedureStepID =
    const BasicProfile("PerformedProcedureStepID", 0x00400253, VR.kSH, "X");
  static const kPerformedProcedureStepDescription =
    const BasicProfile("PerformedProcedureStepDescription", 0x00400254, VR.kLO, "X");
  static const kRequestAttributesSequence =
    const BasicProfile("RequestAttributesSequence", 0x00400275, VR.kSQ, "X");
  static const kCommentsonthePerformedProcedureStep =
    const BasicProfile("CommentsonthePerformedProcedureStep", 0x00400280, VR.kST, "X");
  static const kAcquisitionContextSequence =
    const BasicProfile("AcquisitionContextSequence", 0x00400555, VR.kSQ, "X");
  static const kRequestedProcedureID =
    const BasicProfile("RequestedProcedureID", 0x00401001, VR.kSH, "X");
  static const kPatientTransportArrangements =
    const BasicProfile("PatientTransportArrangements", 0x00401004, VR.kLO, "X");
  static const kRequestedProcedureLocation =
    const BasicProfile("RequestedProcedureLocation", 0x00401005, VR.kLO, "X");
  static const kNamesofIntendedRecipientofResults =
    const BasicProfile("NamesofIntendedRecipientofResults", 0x00401010, VR.kPN, "X");
  static const kIntendedRecipientsofResultsIdentificationSequence =
    const BasicProfile("IntendedRecipientsofResultsIdentificationSequence", 0x00401011, VR.kSQ, "X");
  static const kPersonIdentificationCodeSequence =
    const BasicProfile("PersonIdentificationCodeSequence", 0x00401101, VR.kSQ, "D");
  static const kPersonAddress =
    const BasicProfile("PersonAddress", 0x00401102, VR.kST, "X");
  static const kPersonTelephoneNumbers =
    const BasicProfile("PersonTelephoneNumbers", 0x00401103, VR.kLO, "X");
  static const kRequestedProcedureComments =
    const BasicProfile("RequestedProcedureComments", 0x00401400, VR.kLT, "X");
  static const kReasonfortheImagingServiceRequest =
    const BasicProfile("ReasonfortheImagingServiceRequest", 0x00402001, VR.kLO, "X");
  static const kOrderEnteredBy =
    const BasicProfile("OrderEnteredBy", 0x00402008, VR.kPN, "X");
  static const kOrderEntererLocation =
    const BasicProfile("OrderEntererLocation", 0x00402009, VR.kSH, "X");
  static const kOrderCallbackPhoneNumber =
    const BasicProfile("OrderCallbackPhoneNumber", 0x00402010, VR.kSH, "X");
  static const kPlacerOrderNumber_ImagingServiceRequest =
    const BasicProfile("PlacerOrderNumber_ImagingServiceRequest", 0x00402016, VR.kLO, "Z");
  static const kFillerOrderNumber_ImagingServiceRequest =
    const BasicProfile("FillerOrderNumber_ImagingServiceRequest", 0x00402017, VR.kLO, "Z");
  static const kImagingServiceRequestComments =
    const BasicProfile("ImagingServiceRequestComments", 0x00402400, VR.kLT, "X");
  static const kConfidentialityConstraintonPatientDataDescription =
    const BasicProfile("ConfidentialityConstraintonPatientDataDescription", 0x00403001, VR.kLO, "X");
  static const kReferencedGeneralPurposeScheduledProcedureStepTransactionUID =
    const BasicProfile("ReferencedGeneralPurposeScheduledProcedureStepTransactionUID", 0x00404023, VR.kUI, "U");
  static const kScheduledStationNameCodeSequence =
    const BasicProfile("ScheduledStationNameCodeSequence", 0x00404025, VR.kSQ, "X");
  static const kScheduledStationGeographicLocationCodeSequence =
    const BasicProfile("ScheduledStationGeographicLocationCodeSequence", 0x00404027, VR.kSQ, "X");
  static const kPerformedStationNameCodeSequence =
    const BasicProfile("PerformedStationNameCodeSequence", 0x00404028, VR.kSQ, "X");
  static const kPerformedStationGeographicLocationCodeSequence =
    const BasicProfile("PerformedStationGeographicLocationCodeSequence", 0x00404030, VR.kSQ, "X");
  static const kScheduledHumanPerformersSequence =
    const BasicProfile("ScheduledHumanPerformersSequence", 0x00404034, VR.kSQ, "X");
  static const kActualHumanPerformersSequence =
    const BasicProfile("ActualHumanPerformersSequence", 0x00404035, VR.kSQ, "X");
  static const kHumanPerformersOrganization =
    const BasicProfile("HumanPerformersOrganization", 0x00404036, VR.kLO, "X");
  static const kHumanPerformersName =
    const BasicProfile("HumanPerformersName", 0x00404037, VR.kPN, "X");
  static const kVerifyingOrganization =
    const BasicProfile("VerifyingOrganization", 0x0040a027, VR.kLO, "X");
  static const kVerifyingObserverSequence =
    const BasicProfile("VerifyingObserverSequence", 0x0040a073, VR.kSQ, "D");
  static const kVerifyingObserverName =
    const BasicProfile("VerifyingObserverName", 0x0040a075, VR.kPN, "D");
  static const kAuthorObserverSequence =
    const BasicProfile("AuthorObserverSequence", 0x0040a078, VR.kSQ, "X");
  static const kParticipantSequence =
    const BasicProfile("ParticipantSequence", 0x0040a07a, VR.kSQ, "X");
  static const kCustodialOrganizationSequence =
    const BasicProfile("CustodialOrganizationSequence", 0x0040a07c, VR.kSQ, "X");
  static const kVerifyingObserverIdentificationCodeSequence =
    const BasicProfile("VerifyingObserverIdentificationCodeSequence", 0x0040a088, VR.kSQ, "Z");
  static const kPersonName =
    const BasicProfile("PersonName", 0x0040a123, VR.kPN, "D");
  static const kUID =
    const BasicProfile("UID", 0x0040a124, VR.kUI, "U");
  static const kContentSequence =
    const BasicProfile("ContentSequence", 0x0040a730, VR.kSQ, "X");
  static const kTemplateExtensionOrganizationUID =
    const BasicProfile("TemplateExtensionOrganizationUID", 0x0040db0c, VR.kUI, "U");
  static const kTemplateExtensionCreatorUID =
    const BasicProfile("TemplateExtensionCreatorUID", 0x0040db0d, VR.kUI, "U");
  static const kGraphicAnnotationSequence =
    const BasicProfile("GraphicAnnotationSequence", 0x00700001, VR.kSQ, "D");
  static const kContentCreatorsName =
    const BasicProfile("ContentCreatorsName", 0x00700084, VR.kPN, "Z");
  static const kContentCreatorsIdentificationCodeSequence =
    const BasicProfile("ContentCreatorsIdentificationCodeSequence", 0x00700086, VR.kSQ, "X");
  static const kFiducialUID =
    const BasicProfile("FiducialUID", 0x0070031a, VR.kUI, "U");
  static const kStorageMediaFile_setUID =
    const BasicProfile("StorageMediaFile_setUID", 0x00880140, VR.kUI, "U");
  static const kIconImageSequence0xseeNote12 =
    const BasicProfile("IconImageSequence0xseeNote12", 0x00880200, VR.kSQ, "X");
  static const kTopicTitle =
    const BasicProfile("TopicTitle", 0x00880904, VR.kLO, "X");
  static const kTopicSubject =
    const BasicProfile("TopicSubject", 0x00880906, VR.kST, "X");
  static const kTopicAuthor =
    const BasicProfile("TopicAuthor", 0x00880910, VR.kLO, "X");
  static const kTopicKeywords =
    const BasicProfile("TopicKeywords", 0x00880912, VR.kLO, "X");
  static const kDigitalSignatureUID =
    const BasicProfile("DigitalSignatureUID", 0x04000100, VR.kUI, "X");
  static const kReferencedDigitalSignatureSequence =
    const BasicProfile("ReferencedDigitalSignatureSequence", 0x04000402, VR.kSQ, "X");
  static const kReferencedSOPInstanceMACSequence =
    const BasicProfile("ReferencedSOPInstanceMACSequence", 0x04000403, VR.kSQ, "X");
  static const kMAC =
    const BasicProfile("MAC", 0x04000404, VR.kOB, "X");
  static const kModifiedAttributesSequence =
    const BasicProfile("ModifiedAttributesSequence", 0x04000550, VR.kSQ, "X");
  static const kOriginalAttributesSequence =
    const BasicProfile("OriginalAttributesSequence", 0x04000561, VR.kSQ, "X");
  static const kTextString =
    const BasicProfile("TextString", 0x20300020, VR.kLO, "X");
  static const kReferencedFrameofReferenceUID =
    const BasicProfile("ReferencedFrameofReferenceUID", 0x30060024, VR.kUI, "U");
  static const kRelatedFrameofReferenceUID =
    const BasicProfile("RelatedFrameofReferenceUID", 0x300600c2, VR.kUI, "U");
  static const kDoseReferenceUID =
    const BasicProfile("DoseReferenceUID", 0x300a0013, VR.kUI, "U");
  static const kReviewerName =
    const BasicProfile("ReviewerName", 0x300e0008, VR.kPN, "XZ");
  static const kArbitrary =
    const BasicProfile("Arbitrary", 0x40000010, VR.kLT, "X");
  static const kTextComments =
    const BasicProfile("TextComments", 0x40004000, VR.kLT, "X");
  static const kResultsIDIssuer =
    const BasicProfile("ResultsIDIssuer", 0x40080042, VR.kLO, "X");
  static const kInterpretationRecorder =
    const BasicProfile("InterpretationRecorder", 0x40080102, VR.kPN, "X");
  static const kInterpretationTranscriber =
    const BasicProfile("InterpretationTranscriber", 0x4008010a, VR.kPN, "X");
  static const kInterpretationText =
    const BasicProfile("InterpretationText", 0x4008010b, VR.kST, "X");
  static const kInterpretationAuthor =
    const BasicProfile("InterpretationAuthor", 0x4008010c, VR.kPN, "X");
  static const kInterpretationApproverSequence =
    const BasicProfile("InterpretationApproverSequence", 0x40080111, VR.kSQ, "X");
  static const kPhysicianApprovingInterpretation =
    const BasicProfile("PhysicianApprovingInterpretation", 0x40080114, VR.kPN, "X");
  static const kInterpretationDiagnosisDescription =
    const BasicProfile("InterpretationDiagnosisDescription", 0x40080115, VR.kLT, "X");
  static const kResultsDistributionListSequence =
    const BasicProfile("ResultsDistributionListSequence", 0x40080118, VR.kSQ, "X");
  static const kDistributionName =
    const BasicProfile("DistributionName", 0x40080119, VR.kPN, "X");
  static const kDistributionAddress =
    const BasicProfile("DistributionAddress", 0x4008011a, VR.kLO, "X");
  static const kInterpretationIDIssuer =
    const BasicProfile("InterpretationIDIssuer", 0x40080202, VR.kLO, "X");
  static const kImpressions =
    const BasicProfile("Impressions", 0x40080300, VR.kST, "X");
  static const kResultsComments =
    const BasicProfile("ResultsComments", 0x40084000, VR.kST, "X");
  static const kDigitalSignaturesSequence =
    const BasicProfile("DigitalSignaturesSequence", 0xfffafffa, VR.kSQ, "X");
  static const kDataSetTrailingPadding =
    const BasicProfile("DataSetTrailingPadding", 0xfffcfffc, VR.kOB, "X");

static const List<int> keep = const [];

static const List<int> remove = const [
  0x00001000, 0x00080024, 0x00080025,
  0x00080034,
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

static const Map<int, BasicProfile> map = const {
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
  0x00081048: kPhysician0xsofRecord,
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
  0x00101010: kPatientsAge,
  0x00101020: kPatientsSize,
  0x00101030: kPatientsWeight,
  0x00101040: kPatientAddress,
  0x00101050: kInsurancePlanIdentification,
  0x00101060: kPatientsMothersBirthName,
  0x00101080: kMilitaryRank,
  0x00101081: kBranchofService,
  0x00101090: kMedicalRecordLocator,
  0x00102000: kMedicalAlerts,
  0x00102110: kAllergies,
  0x00102150: kCountryofResidence,
  0x00102152: kRegionofResidence,
  0x00102154: kPatientsTelephoneNumbers,
  0x00102160: kEthnicGroup,
  0x00102180: kOccupation,
  0x001021a0: kSmokingStatus,
  0x001021b0: kAdditionalPatientsHistory,
  0x001021c0: kPregnancyStatus,
  0x001021d0: kLastMenstrualDate,
  0x001021f0: kPatientsReligiousPreference,
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
  0x00200052: kFrameofReferenceUID,
  0x00200200: kSynchronizationFrameofReferenceUID,
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
  0x00321030: kReasonforStudy,
  0x00321032: kRequestingPhysician,
  0x00321033: kRequestingService,
  0x00321060: kRequestedProcedureDescription,
  0x00321070: kRequestedContrastAgent,
  0x00324000: kStudyComments,
  0x00380004: kReferencedPatientAliasSequence,
  0x00380010: kAdmissionID,
  0x00380011: kIssuerofAdmissionID,
  0x0038001e: kScheduledPatientInstitutionResidence,
  0x00380020: kAdmittingDate,
  0x00380021: kAdmittingTime,
  0x00380040: kDischargeDiagnosisDescription,
  0x00380050: kSpecialNeeds,
  0x00380060: kServiceEpisodeID,
  0x00380061: kIssuerofServiceEpisodeID,
  0x00380062: kServiceEpisodeDescription,
  0x00380300: kCurrentPatientLocation,
  0x00380400: kPatientsInstitutionResidence,
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
  0x00400012: kPre_Medication,
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
  0x00400280: kCommentsonthePerformedProcedureStep,
  0x00400555: kAcquisitionContextSequence,
  0x00401001: kRequestedProcedureID,
  0x00401004: kPatientTransportArrangements,
  0x00401005: kRequestedProcedureLocation,
  0x00401010: kNamesofIntendedRecipientofResults,
  0x00401011: kIntendedRecipientsofResultsIdentificationSequence,
  0x00401101: kPersonIdentificationCodeSequence,
  0x00401102: kPersonAddress,
  0x00401103: kPersonTelephoneNumbers,
  0x00401400: kRequestedProcedureComments,
  0x00402001: kReasonfortheImagingServiceRequest,
  0x00402008: kOrderEnteredBy,
  0x00402009: kOrderEntererLocation,
  0x00402010: kOrderCallbackPhoneNumber,
  0x00402016: kPlacerOrderNumber_ImagingServiceRequest,
  0x00402017: kFillerOrderNumber_ImagingServiceRequest,
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
  0x00404037: kHumanPerformersName,
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
  0x00700084: kContentCreatorsName,
  0x00700086: kContentCreatorsIdentificationCodeSequence,
  0x0070031a: kFiducialUID,
  0x00880140: kStorageMediaFile_setUID,
  0x00880200: kIconImageSequence0xseeNote12,
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
  0x30060024: kReferencedFrameofReferenceUID,
  0x300600c2: kRelatedFrameofReferenceUID,
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
