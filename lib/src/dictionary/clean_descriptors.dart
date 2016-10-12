// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This is a generated class ***
// ----------------------------------------------------------

import 'package:core/dictionary.dart';
import 'basic_profile.dart';

// DICOM attributes in De-Identification Profile (and Options)
class CleanDescriptorsOption extends BasicProfile {

  const CleanDescriptorsOption(String keyword, int tag, VR vr, String action)
      : super(keyword, tag, vr, action);

  static CleanDescriptorsOption lookup(int tag) => map[tag];

  static const kStudyDescription =
    const CleanDescriptorsOption("StudyDescription", 0x00081030, VR.kLO, "C");
  static const kSeriesDescription =
    const CleanDescriptorsOption("SeriesDescription", 0x0008103e, VR.kLO, "C");
  static const kAdmittingDiagnosesDescription =
    const CleanDescriptorsOption("AdmittingDiagnosesDescription", 0x00081080, VR.kLO, "C");
  static const kAdmittingDiagnosesCodeSequence =
    const CleanDescriptorsOption("AdmittingDiagnosesCodeSequence", 0x00081084, VR.kSQ, "C");
  static const kDerivationDescription =
    const CleanDescriptorsOption("DerivationDescription", 0x00082111, VR.kST, "C");
  static const kIdentifyingComments =
    const CleanDescriptorsOption("IdentifyingComments", 0x00084000, VR.kLT, "C");
  static const kMedicalAlerts =
    const CleanDescriptorsOption("MedicalAlerts", 0x00102000, VR.kLO, "C");
  static const kAllergies =
    const CleanDescriptorsOption("Allergies", 0x00102110, VR.kLO, "C");
  static const kOccupation =
    const CleanDescriptorsOption("Occupation", 0x00102180, VR.kSH, "C");
  static const kAdditionalPatientsHistory =
    const CleanDescriptorsOption("AdditionalPatientsHistory", 0x001021b0, VR.kLT, "C");
  static const kPatientComments =
    const CleanDescriptorsOption("PatientComments", 0x00104000, VR.kLT, "C");
  static const kContrastBolusAgent =
    const CleanDescriptorsOption("ContrastBolusAgent", 0x00180010, VR.kLO, "C");
  static const kProtocolName =
    const CleanDescriptorsOption("ProtocolName", 0x00181030, VR.kLO, "C");
  static const kAcquisitionDeviceProcessingDescription =
    const CleanDescriptorsOption("AcquisitionDeviceProcessingDescription", 0x00181400, VR.kLO, "C");
  static const kAcquisitionComments =
    const CleanDescriptorsOption("AcquisitionComments", 0x00184000, VR.kLT, "C");
  static const kAcquisitionProtocolDescription =
    const CleanDescriptorsOption("AcquisitionProtocolDescription", 0x00189424, VR.kLT, "C");
  static const kContributionDescription =
    const CleanDescriptorsOption("ContributionDescription", 0x0018a003, VR.kST, "C");
  static const kImageComments =
    const CleanDescriptorsOption("ImageComments", 0x00204000, VR.kLT, "C");
  static const kFrameComments =
    const CleanDescriptorsOption("FrameComments", 0x00209158, VR.kLT, "C");
  static const kReasonforStudy =
    const CleanDescriptorsOption("ReasonforStudy", 0x00321030, VR.kLO, "C");
  static const kRequestedProcedureDescription =
    const CleanDescriptorsOption("RequestedProcedureDescription", 0x00321060, VR.kLO, "C");
  static const kRequestedContrastAgent =
    const CleanDescriptorsOption("RequestedContrastAgent", 0x00321070, VR.kLO, "C");
  static const kStudyComments =
    const CleanDescriptorsOption("StudyComments", 0x00324000, VR.kLT, "C");
  static const kDischargeDiagnosisDescription =
    const CleanDescriptorsOption("DischargeDiagnosisDescription", 0x00380040, VR.kLO, "C");
  static const kServiceEpisodeDescription =
    const CleanDescriptorsOption("ServiceEpisodeDescription", 0x00380062, VR.kLO, "C");
  static const kPatientState =
    const CleanDescriptorsOption("PatientState", 0x00380500, VR.kLO, "C");
  static const kVisitComments =
    const CleanDescriptorsOption("VisitComments", 0x00384000, VR.kLT, "C");
  static const kScheduledProcedureStepDescription =
    const CleanDescriptorsOption("ScheduledProcedureStepDescription", 0x00400007, VR.kLO, "C");
  static const kPerformedProcedureStepDescription =
    const CleanDescriptorsOption("PerformedProcedureStepDescription", 0x00400254, VR.kLO, "C");
  static const kRequestAttributesSequence =
    const CleanDescriptorsOption("RequestAttributesSequence", 0x00400275, VR.kSQ, "C");
  static const kCommentsonthePerformedProcedureStep =
    const CleanDescriptorsOption("CommentsonthePerformedProcedureStep", 0x00400280, VR.kST, "C");
  static const kRequestedProcedureComments =
    const CleanDescriptorsOption("RequestedProcedureComments", 0x00401400, VR.kLT, "C");
  static const kReasonfortheImagingServiceRequest =
    const CleanDescriptorsOption("ReasonfortheImagingServiceRequest", 0x00402001, VR.kLO, "C");
  static const kImagingServiceRequestComments =
    const CleanDescriptorsOption("ImagingServiceRequestComments", 0x00402400, VR.kLT, "C");
  static const kInterpretationText =
    const CleanDescriptorsOption("InterpretationText", 0x4008010b, VR.kST, "C");
  static const kInterpretationDiagnosisDescription =
    const CleanDescriptorsOption("InterpretationDiagnosisDescription", 0x40080115, VR.kLT, "C");
  static const kImpressions =
    const CleanDescriptorsOption("Impressions", 0x40080300, VR.kST, "C");
  static const kResultsComments =
    const CleanDescriptorsOption("ResultsComments", 0x40084000, VR.kST, "C");

  //TODO: this needs to be merged with BasicProfile.remove
static const List<int> keep = const [];


  //TODO: this needs to be merged with BasicProfile.remove
static const List<int> remove = const [
  0x00081030,
  0x0008103e,
  0x00081080,
  0x00081084,
  0x00082111,
  0x00084000,
  0x00102000,
  0x00102110,
  0x00102180,
  0x001021b0,
  0x00104000,
  0x00180010,
  0x00181030,
  0x00181400,
  0x00184000,
  0x00189424,
  0x0018a003,
  0x00204000,
  0x00209158,
  0x00321030,
  0x00321060,
  0x00321070,
  0x00324000,
  0x00380040,
  0x00380062,
  0x00380500,
  0x00384000,
  0x00400007,
  0x00400254,
  0x00400275,
  0x00400280,
  0x00401400,
  0x00402001,
  0x00402400,
  0x4008010b,
  0x40080115,
  0x40080300,
  0x40084000
  ];

static const Map<int, CleanDescriptorsOption> map = const {
  0x00081030: kStudyDescription,
  0x0008103e: kSeriesDescription,
  0x00081080: kAdmittingDiagnosesDescription,
  0x00081084: kAdmittingDiagnosesCodeSequence,
  0x00082111: kDerivationDescription,
  0x00084000: kIdentifyingComments,
  0x00102000: kMedicalAlerts,
  0x00102110: kAllergies,
  0x00102180: kOccupation,
  0x001021b0: kAdditionalPatientsHistory,
  0x00104000: kPatientComments,
  0x00180010: kContrastBolusAgent,
  0x00181030: kProtocolName,
  0x00181400: kAcquisitionDeviceProcessingDescription,
  0x00184000: kAcquisitionComments,
  0x00189424: kAcquisitionProtocolDescription,
  0x0018a003: kContributionDescription,
  0x00204000: kImageComments,
  0x00209158: kFrameComments,
  0x00321030: kReasonforStudy,
  0x00321060: kRequestedProcedureDescription,
  0x00321070: kRequestedContrastAgent,
  0x00324000: kStudyComments,
  0x00380040: kDischargeDiagnosisDescription,
  0x00380062: kServiceEpisodeDescription,
  0x00380500: kPatientState,
  0x00384000: kVisitComments,
  0x00400007: kScheduledProcedureStepDescription,
  0x00400254: kPerformedProcedureStepDescription,
  0x00400275: kRequestAttributesSequence,
  0x00400280: kCommentsonthePerformedProcedureStep,
  0x00401400: kRequestedProcedureComments,
  0x00402001: kReasonfortheImagingServiceRequest,
  0x00402400: kImagingServiceRequestComments,
  0x4008010b: kInterpretationText,
  0x40080115: kInterpretationDiagnosisDescription,
  0x40080300: kImpressions,
  0x40084000: kResultsComments
  };

static const List<int> tags = const [
  0x00081030,
  0x0008103e,
  0x00081080,
  0x00081084,
  0x00082111,
  0x00084000,
  0x00102000,
  0x00102110,
  0x00102180,
  0x001021b0,
  0x00104000,
  0x00180010,
  0x00181030,
  0x00181400,
  0x00184000,
  0x00189424,
  0x0018a003,
  0x00204000,
  0x00209158,
  0x00321030,
  0x00321060,
  0x00321070,
  0x00324000,
  0x00380040,
  0x00380062,
  0x00380500,
  0x00384000,
  0x00400007,
  0x00400254,
  0x00400275,
  0x00400280,
  0x00401400,
  0x00402001,
  0x00402400,
  0x4008010b,
  0x40080115,
  0x40080300,
  0x40084000
  ];
}
