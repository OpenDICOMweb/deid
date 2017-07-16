// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';

import 'private_data_tag.dart';
import 'action.dart';

class MRSC extends PrivateDataTag {
  static const String manufacturerId = "GEMS";
  static const Modality modality = Modality.kPT;
  final String creatorId = "GEMS_PETD_01";

  const MRSC(int tag, VR vr, VM vm, Action action, String description)
      : super(tag, vr, vm, action, description);

  String get json => super.toJson(creatorId);

  //Creator: "MRSC", group: 0117, Manufacturer: "UCSF", 
  // Modality: "MR", "UCSFBIRPGroupIDString"
  static const k0x01170010 =
  const MRSC(0x01170010, VR.kLO, VM.k1, Action.kKeep, "UCSFBIRPGroupIDString");
  static const k0x01171010 =
  const MRSC(0x01171010, VR.kSQ, VM.k1, Action.kKeep, "PESERParameterSequence");
  static const k0x01171012 =
  const MRSC(0x01171012, VR.kCS, VM.k1, Action.kKeep, "PESERParameterType");
  static const k0x01171014 =
  const MRSC(0x01171014, VR.kLO, VM.k1, Action.kKeep, "PESERParameterName");
  static const k0x01171016 =
  const MRSC(0x01171016, VR.kLO, VM.k1, Action.kKeep, "PESERParameterDescription");
  static const k0x01171018 =
  const MRSC(0x01171018, VR.kDS, VM.k1_n, Action.kKeep, "PESERParameterFloatingValue");
  static const k0x01171019 =
  const MRSC(0x01171019, VR.kIS, VM.k1_n, Action.kKeep, "PESERParameterIntegerValue");
  static const k0x0117101a =
  const MRSC(0x0117101a, VR.kLO, VM.k1_n, Action.kKeep, "PESERParameterStringValue");
  static const k0x01171020 =
  const MRSC(0x01171020, VR.kSQ, VM.k1, Action.kKeep, "VOISequence");
  static const k0x01171022 =
  const MRSC(0x01171022, VR.kSQ, VM.k1, Action.kKeep, "OmitVOISequence");
  static const k0x01171024 =
  const MRSC(0x01171024, VR.kSQ, VM.k1, Action.kKeep, "ImageQualitySequence");
  static const k0x01171030 =
  const MRSC(0x01171030, VR.kIS, VM.k1, Action.kKeep, "NumberAcquiredTimePoints");
  static const k0x01171031 =
  const MRSC(0x01171031, VR.kDS, VM.k1, Action.kKeep, "AcquisitionDuration");
  static const k0x01171032 =
  const MRSC(0x01171032, VR.kDS, VM.k1_n, Action.kKeep, "AcquisitionStartTimes");
  static const k0x01171033 =
  const MRSC(0x01171033, VR.kTM, VM.k1, Action.kKeep, "InjectionTime");
  static const k0x01171034 =
  const MRSC(0x01171034, VR.kDS, VM.k1_n, Action.kKeep, "EffectiveAcquisitionDelay");
  static const k0x01171035 =
  const MRSC(0x01171035, VR.kIS, VM.k3, Action.kKeep, "SERTimingIndices");
  static const k0x0117103a =
  const MRSC(0x0117103a, VR.kLO, VM.k1, Action.kKeep, "AcquisitionTimingMethod");
  static const k0x0117103b =
  const MRSC(0x0117103b, VR.kLT, VM.k1, Action.kKeep, "AcquisitionTimingComments");
  static const k0x01171041 =
  const MRSC(0x01171041, VR.kIS, VM.k1, Action.kKeep, "ROIVOILPSFlag");
  static const k0x01171042 =
  const MRSC(0x01171042, VR.kDS, VM.k3, Action.kKeep, "VOILPSCenter");
  static const k0x01171043 =
  const MRSC(0x01171043, VR.kDS, VM.k3, Action.kKeep, "VOILPSWidthHalfLength");
  static const k0x01171044 =
  const MRSC(0x01171044, VR.kDS, VM.k3, Action.kKeep, "VOILPSHeightHalfLength");
  static const k0x01171045 =
  const MRSC(0x01171045, VR.kDS, VM.k3, Action.kKeep, "VOILPSDepthHalfLength");
  static const k0x01171046 =
  const MRSC(0x01171046, VR.kCS, VM.k1, Action.kKeep, "VOILPSType");
  static const k0x01171050 =
  const MRSC(0x01171050, VR.kUS, VM.k3, Action.kKeep, "ProjectedROINPixels");
  static const k0x01171051 =
  const MRSC(0x01171051, VR.kIS, VM.k1, Action.kKeep, "ProjectedROIProjectionAxis");
  static const k0x01171052 =
  const MRSC(0x01171052, VR.kIS, VM.k1, Action.kKeep, "ProjectedROITransposeFlag");
  static const k0x01171053 =
  const MRSC(0x01171053, VR.kUS, VM.k1_n, Action.kKeep, "ProjectedROIXVerts");
  static const k0x01171054 =
  const MRSC(0x01171054, VR.kUS, VM.k1_n, Action.kKeep, "ProjectedROIYVerts");
  static const k0x01171055 =
  const MRSC(0x01171055, VR.kUS, VM.k2, Action.kKeep, "ProjectedROIZRange");
  static const k0x01171056 =
  const MRSC(0x01171056, VR.kCS, VM.k1, Action.kKeep, "ProjectedROIType");
  static const k0x0117105a =
  const MRSC(0x0117105a, VR.kLO, VM.k1, Action.kKeep, "ProjectedROILabel");
  static const k0x011710a1 =
  const MRSC(0x011710a1, VR.kUS, VM.k3, Action.kKeep, "FTVPixelLimitsStart");
  static const k0x011710a2 =
  const MRSC(0x011710a2, VR.kUS, VM.k3, Action.kKeep, "FTVPixelLimitsEnd");
  static const k0x011710a3 =
  const MRSC(0x011710a3, VR.kCS, VM.k1, Action.kKeep, "FTVBackgroundMethod");
  static const k0x011710a4 =
  const MRSC(0x011710a4, VR.kDS, VM.k1, Action.kKeep, "FTVBackgroundThreshold");
  static const k0x011710b0 =
  const MRSC(0x011710b0, VR.kSQ, VM.k1, Action.kKeep, "FTVSequence");
  static const k0x011710b1 =
  const MRSC(0x011710b1, VR.kDS, VM.k1, Action.kKeep, "FTVSERMinimum");
  static const k0x011710b2 =
  const MRSC(0x011710b2, VR.kDS, VM.k1, Action.kKeep, "FTVSERMaximum");
  static const k0x011710b3 =
  const MRSC(0x011710b3, VR.kIS, VM.k1, Action.kKeep, "FTVPixelCount");
  static const k0x011710b4 =
  const MRSC(0x011710b4, VR.kDS, VM.k1, Action.kKeep, "FTVcc");
  static const k0x011710b5 =
  const MRSC(0x011710b5, VR.kLO, VM.k1, Action.kKeep, "FTVLabel");
  static const k0x011710c0 =
  const MRSC(0x011710c0, VR.kCS, VM.k1, Action.kKeep, "QualityControlType");
  static const k0x011710c1 =
  const MRSC(0x011710c1, VR.kLO, VM.k1, Action.kKeep, "QualityControlFactor");
  static const k0x011710c2 =
  const MRSC(0x011710c2, VR.kDS, VM.k1, Action.kKeep, "QualityControlValue");
  static const k0x011710c3 =
  const MRSC(0x011710c3, VR.kCS, VM.k1, Action.kKeep, "QualityControlMeaning");
  static const k0x011710c4 =
  const MRSC(0x011710c4, VR.kLT, VM.k1, Action.kKeep, "QualityControlComment");
  static const k0x011710c5 =
  const MRSC(0x011710c5, VR.kCS, VM.k1, Action.kKeep, "ProtocolCompliantFlag");
  static const k0x011710c6 =
  const MRSC(0x011710c6, VR.kLO, VM.k1_n, Action.kKeep, "ProtocolNotCompliantReasons");
  static const k0x011710c7 =
  const MRSC(0x011710c7, VR.kCS, VM.k1, Action.kKeep, "ImagesAnalyzable");
  static const k0x011710c8 =
  const MRSC(0x011710c8, VR.kLO, VM.k1_n, Action.kKeep, "ProtocolNotCAnalyzableReasons");
  static const k0x01190010 =
  const MRSC(0x01190010, VR.kLO, VM.k1, Action.kKeep, "MIACQID");
  static const k0x01190011 =
  const MRSC(0x01190011, VR.kLO, VM.k1, Action.kKeep, "MIFITMAPID");
  static const k0x01190012 =
  const MRSC(0x01190012, VR.kLO, VM.k1, Action.kKeep, "MI-IPID");
  static const k0x01190014 =
  const MRSC(0x01190014, VR.kLO, VM.k1, Action.kKeep, "MIPsIDString");
  static const k0x01190015 =
  const MRSC(0x01190015, VR.kLO, VM.k1, Action.kKeep, "SERIDString");
  static const k0x01191000 =
  const MRSC(0x01191000, VR.kDS, VM.k1, Action.kKeep, "Version");
  static const k0x01191006 =
  const MRSC(0x01191006, VR.kDS, VM.k1, Action.kKeep, "MinimumPixelValue");
  static const k0x01191007 =
  const MRSC(0x01191007, VR.kDS, VM.k1, Action.kKeep, "MaximumPixelValue");
  static const k0x01191010 =
  const MRSC(0x01191010, VR.kIS, VM.k1, Action.kKeep, "PixelDataType");
  static const k0x01191011 =
  const MRSC(0x01191011, VR.kIS, VM.k1_n, Action.kKeep, "ImageIDNumbers");
  static const k0x01191012 =
  const MRSC(0x01191012, VR.kIS, VM.k1_n, Action.kKeep, "ParameterDims");
  static const k0x01191013 =
  const MRSC(0x01191013, VR.kCS, VM.k1_n, Action.kKeep, "VariableParameter");
  static const k0x01191018 =
  const MRSC(0x01191018, VR.kIS, VM.k3, Action.kKeep, "GAINS");
  static const k0x01191020 =
  const MRSC(0x01191020, VR.kLO, VM.k1_n, Action.kKeep, "SourceFileNames");
  static const k0x01191021 =
  const MRSC(0x01191021, VR.kIS, VM.k1, Action.kKeep, "SourceCropFlag");
  static const k0x01191022 =
  const MRSC(0x01191022, VR.kIS, VM.k6, Action.kKeep, "SourceCropLimits");
  static const k0x01191023 =
  const MRSC(0x01191023, VR.kUI, VM.k1_n, Action.kKeep, "SourceFileUIDs");
  static const k0x01191024 =
  const MRSC(0x01191024, VR.kIS, VM.k1_n, Action.kKeep, "SourceVolumeIndices");
  static const k0x01191025 =
  const MRSC(0x01191025, VR.kLO, VM.k1_n, Action.kKeep, "SourceVolumeLabels");
  static const k0x01191030 =
  const MRSC(0x01191030, VR.kDS, VM.k9, Action.kKeep, "DirectionCosines");
  static const k0x01191031 =
  const MRSC(0x01191031, VR.kCS, VM.k3, Action.kKeep, "PatientOrientation3");
  static const k0x01191038 =
  const MRSC(0x01191038, VR.kDS, VM.k3, Action.kKeep, "PixelGap");
  static const k0x01191041 =
  const MRSC(0x01191041, VR.kDS, VM.k1_n, Action.kKeep, "SlicePosition");
  static const k0x01191050 =
  const MRSC(0x01191050, VR.kLO, VM.k1_n, Action.kKeep, "VolumeLabels");
  static const k0x01191051 =
  const MRSC(0x01191051, VR.kDA, VM.k1_n, Action.kKeep, "AcquisitionDate");
  static const k0x01191052 =
  const MRSC(0x01191052, VR.kTM, VM.k1_n, Action.kKeep, "AcquisitionTime");
  static const k0x01191060 =
  const MRSC(0x01191060, VR.kLO, VM.k1, Action.kKeep, "SecCptrUser");
  static const k0x01191061 =
  const MRSC(0x01191061, VR.kLO, VM.k1, Action.kKeep, "SecCptrApplication");
  static const k0x01191070 =
  const MRSC(0x01191070, VR.kAT, VM.k1_n, Action.kKeep, "VariableParamTags");
  static const k0x01191071 =
  const MRSC(0x01191071, VR.kCS, VM.k1_n, Action.kKeep, "VariableParamNames");
  static const k0x01191080 =
  const MRSC(0x01191080, VR.kDS, VM.k1_n, Action.kKeep, "TR");
  static const k0x01191081 =
  const MRSC(0x01191081, VR.kDS, VM.k1_n, Action.kKeep, "TE");
  static const k0x01191082 =
  const MRSC(0x01191082, VR.kDS, VM.k1_n, Action.kKeep, "TI");
  static const k0x01191083 =
  const MRSC(0x01191083, VR.kDS, VM.k1_n, Action.kKeep, "TSL");
  static const k0x01191088 =
  const MRSC(0x01191088, VR.kDS, VM.k1_n, Action.kKeep, "FlipAngle");
  static const k0x01191090 =
  const MRSC(0x01191090, VR.kDS, VM.k1_n, Action.kKeep, "TemporalIndex");
  static const k0x01191091 =
  const MRSC(0x01191091, VR.kDS, VM.k1_n, Action.kKeep, "TemporalValue");
  static const k0x011910a0 =
  const MRSC(0x011910a0, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_GRAD_X");
  static const k0x011910a1 =
  const MRSC(0x011910a1, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_GRAD_Y");
  static const k0x011910a2 =
  const MRSC(0x011910a2, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_GRAD_Z");
  static const k0x011910a3 =
  const MRSC(0x011910a3, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_PW_X");
  static const k0x011910a4 =
  const MRSC(0x011910a4, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_PW_Y");
  static const k0x011910a5 =
  const MRSC(0x011910a5, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_PW_Z");
  static const k0x011910a6 =
  const MRSC(0x011910a6, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_TIME_X");
  static const k0x011910a7 =
  const MRSC(0x011910a7, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_TIME_Y");
  static const k0x011910a8 =
  const MRSC(0x011910a8, VR.kDS, VM.k1_n, Action.kKeep, "DIFF_TIME_Z");
  static const k0x011910a9 =
  const MRSC(0x011910a9, VR.kDS, VM.k1_n, Action.kKeep, "DiffBValues");
  static const k0x011910b0 =
  const MRSC(0x011910b0, VR.kLO, VM.k1, Action.kKeep, "CoilCorrectionMethod");
  static const k0x011910b1 =
  const MRSC(0x011910b1, VR.kIS, VM.k1, Action.kKeep, "PolyFitOrder");
  static const k0x011910b2 =
  const MRSC(0x011910b2, VR.kDS, VM.k1_n, Action.kKeep, "PolyFitCoeff");
  static const k0x011910c0 =
  const MRSC(0x011910c0, VR.kSQ, VM.k1, Action.kKeep, "QCMinimumLimits");
  static const k0x011910c1 =
  const MRSC(0x011910c1, VR.kSQ, VM.k1, Action.kKeep, "QCMaximumLimits");
  static const k0x011910d0 =
  const MRSC(0x011910d0, VR.kST, VM.k1, Action.kKeep, "CheckString");
  static const k0x011910d1 =
  const MRSC(0x011910d1, VR.kLO, VM.k1_n, Action.kKeep, "Source");
  static const k0x011910f0 =
  const MRSC(0x011910f0, VR.kOB, VM.k1_n, Action.kKeep, "SampleHeader");
  static const k0x011910ff =
  const MRSC(0x011910ff, VR.kDS, VM.k1_n, Action.kKeep, "UserInfo");
  static const k0x01191100 =
  const MRSC(0x01191100, VR.kDS, VM.k1, Action.kKeep, "FitMapModuleVersion");
  static const k0x01191101 =
  const MRSC(0x01191101, VR.kLO, VM.k1_n, Action.kKeep, "SourceFileNames");
  static const k0x01191102 =
  const MRSC(0x01191102, VR.kIS, VM.k1_n, Action.kKeep, "SourceVolumeIndices");
  static const k0x01191103 =
  const MRSC(0x01191103, VR.kDS, VM.k1_n, Action.kKeep, "ParameterValues");
  static const k0x01191104 =
  const MRSC(0x01191104, VR.kAT, VM.k1, Action.kKeep, "ParameterTag");
  static const k0x01191105 =
  const MRSC(0x01191105, VR.kUI, VM.k1_n, Action.kKeep, "SourceFileUIDs");
  static const k0x01191106 =
  const MRSC(0x01191106, VR.kLO, VM.k1_n, Action.kKeep, "SourceFileDirectory");
  static const k0x01191107 =
  const MRSC(0x01191107, VR.kIS, VM.k1, Action.kKeep, "SourceDataInPlaceFlag");
  static const k0x01191108 =
  const MRSC(0x01191108, VR.kIS, VM.k1_n, Action.kKeep, "ResultVolumeindices");
  static const k0x01191109 =
  const MRSC(0x01191109, VR.kIS, VM.k1, Action.kKeep, "SMOOTHBoxcarAverageKernel");
  static const k0x0119110c =
  const MRSC(0x0119110c, VR.kLO, VM.k1, Action.kKeep, "FitICFunction");
  static const k0x0119110d =
  const MRSC(0x0119110d, VR.kLO, VM.k1, Action.kKeep, "FitFormulaProcedure");
  static const k0x0119110e =
  const MRSC(0x0119110e, VR.kLO, VM.k1, Action.kKeep, "FittingProgram");
  static const k0x0119110f =
  const MRSC(0x0119110f, VR.kIS, VM.k1, Action.kKeep, "FittingProgramVersion");
  static const k0x01191110 =
  const MRSC(0x01191110, VR.kCS, VM.k1, Action.kKeep, "FitType");
  static const k0x01191111 =
  const MRSC(0x01191111, VR.kIS, VM.k1, Action.kKeep, "SetICFlag");
  static const k0x01191112 =
  const MRSC(0x01191112, VR.kDS, VM.k1_n, Action.kKeep, "InitialConditions");
  static const k0x01191113 =
  const MRSC(0x01191113, VR.kDS, VM.k1_n, Action.kKeep, "FitMapScaleFactors");
  static const k0x01191120 =
  const MRSC(0x01191120, VR.kIS, VM.k1, Action.kKeep, "ThresholdingFlag");
  static const k0x01191121 =
  const MRSC(0x01191121, VR.kDS, VM.k1, Action.kKeep, "Threshold");
  static const k0x01191122 =
  const MRSC(0x01191122, VR.kIS, VM.k1, Action.kKeep, "MaskCompression");
  static const k0x01191123 =
  const MRSC(0x01191123, VR.kOB, VM.k1_n, Action.kKeep, "FitMapMask");
  static const k0x01191124 =
  const MRSC(0x01191124, VR.kOB, VM.k1_n, Action.kKeep, "FitMapPntThreshMap");
  static const k0x01191125 =
  const MRSC(0x01191125, VR.kST, VM.k1, Action.kKeep, "PixelMaskCheckString");
  static const k0x01191126 =
  const MRSC(0x01191126, VR.kST, VM.k1, Action.kKeep, "PixelMaskSource");
  static const k0x01191130 =
  const MRSC(0x01191130, VR.kDS, VM.k1_n, Action.kKeep, "UpperFitLimit");
  static const k0x01191131 =
  const MRSC(0x01191131, VR.kDS, VM.k1_n, Action.kKeep, "LowerFitLimit");
  static const k0x01191140 =
  const MRSC(0x01191140, VR.kLO, VM.k1, Action.kKeep, "GradientMatrixMethod");
  static const k0x01191141 =
  const MRSC(0x01191141, VR.kDS, VM.k1_n, Action.kKeep, "GradientMatrix");
  static const k0x01191180 =
  const MRSC(0x01191180, VR.kSQ, VM.k1, Action.kKeep, "FitMapSQ");
  static const k0x01191181 =
  const MRSC(0x01191181, VR.kIS, VM.k1, Action.kKeep, "fmSQFitNumber");
  static const k0x011911a0 =
  const MRSC(0x011911a0, VR.kCS, VM.k1, Action.kKeep, "PhantCalibType");
  static const k0x011911a1 =
  const MRSC(0x011911a1, VR.kIS, VM.k1, Action.kKeep, "PhantCalibNParms");
  static const k0x011911a2 =
  const MRSC(0x011911a2, VR.kDS, VM.k1_n, Action.kKeep, "PhantCalibParam");
  static const k0x011911a3 =
  const MRSC(0x011911a3, VR.kIS, VM.k1_n, Action.kKeep, "PhantGoodFlags");
  static const k0x011911a4 =
  const MRSC(0x011911a4, VR.kDS, VM.k1_n, Action.kKeep, "PhantValues");
  static const k0x011911a5 =
  const MRSC(0x011911a5, VR.kDS, VM.k1_n, Action.kKeep, "PhantRefValues");
  static const k0x01191200 =
  const MRSC(0x01191200, VR.kIS, VM.k1_n, Action.kKeep, "ImageProcessStatus");
  static const k0x01191201 =
  const MRSC(0x01191201, VR.kLO, VM.k1, Action.kKeep, "SourceID");
  static const k0x01191202 =
  const MRSC(0x01191202, VR.kIS, VM.k1, Action.kKeep, "Group Version");
  static const k0x01191203 =
  const MRSC(0x01191203, VR.kIS, VM.k1, Action.kKeep, "ExecuteOnRead");
  static const k0x01191204 =
  const MRSC(0x01191204, VR.kIS, VM.k1, Action.kKeep, "NumberPasses");
  static const k0x01191206 =
  const MRSC(0x01191206, VR.kIS, VM.k1_n, Action.kKeep, "NumProcesses");
  static const k0x01191208 =
  const MRSC(0x01191208, VR.kIS, VM.k1_n, Action.kKeep, "GroupExecuteOrder");
  static const k0x0119120a =
  const MRSC(0x0119120a, VR.kIS, VM.k1, Action.kKeep, "NumberTransforms");
  static const k0x0119120b =
  const MRSC(0x0119120b, VR.kIS, VM.k1_n, Action.kKeep, "NumberProcesses");
  static const k0x01191211 =
  const MRSC(0x01191211, VR.kIS, VM.k1_n, Action.kKeep, "InvertImage");
  static const k0x01191212 =
  const MRSC(0x01191212, VR.kIS, VM.k1_n, Action.kKeep, "SkeletonizeImage");
  static const k0x01191213 =
  const MRSC(0x01191213, VR.kIS, VM.k1_n, Action.kKeep, "IsotropicResolution");
  static const k0x01191220 =
  const MRSC(0x01191220, VR.kIS, VM.k1_n, Action.kKeep, "MedianFilterKernel");
  static const k0x01191221 =
  const MRSC(0x01191221, VR.kDS, VM.k1_n, Action.kKeep, "BackgroundCorrection");
  static const k0x01191222 =
  const MRSC(0x01191222, VR.kDS, VM.k1_n, Action.kKeep, "UnSharpMasking");
  static const k0x01191223 =
  const MRSC(0x01191223, VR.kIS, VM.k1_n, Action.kKeep, "LocalThresholdKernel");
  static const k0x01191224 =
  const MRSC(0x01191224, VR.kIS, VM.k1_n, Action.kKeep, "AbsoluteLimits");
  static const k0x01191225 =
  const MRSC(0x01191225, VR.kDS, VM.k1_n, Action.kKeep, "PercentileLimits");
  static const k0x01191226 =
  const MRSC(0x01191226, VR.kDS, VM.k1_n, Action.kKeep, "InPlaneRotation");
  static const k0x01191227 =
  const MRSC(0x01191227, VR.kIS, VM.k1_n, Action.kKeep, "ByteScaleMinMaxTop");
  static const k0x01191228 =
  const MRSC(0x01191228, VR.kIS, VM.k1_n, Action.kKeep, "GlobalThreshold");
  static const k0x01191229 =
  const MRSC(0x01191229, VR.kDS, VM.k1_n, Action.kKeep, "IntensityScale");
  static const k0x01191230 =
  const MRSC(0x01191230, VR.kIS, VM.k1_n, Action.kKeep, "ReSample");
  static const k0x01191231 =
  const MRSC(0x01191231, VR.kIS, VM.k1_n, Action.kKeep, "OrthogonalReFormat");
  static const k0x01191232 =
  const MRSC(0x01191232, VR.kIS, VM.k1_n, Action.kKeep, "REBIN");
  static const k0x01191233 =
  const MRSC(0x01191233, VR.kDS, VM.k1_n, Action.kKeep, "WhiteTopHat");
  static const k0x01191234 =
  const MRSC(0x01191234, VR.kIS, VM.k1_n, Action.kKeep, "HistEqual");
  static const k0x01191235 =
  const MRSC(0x01191235, VR.kIS, VM.k1_n, Action.kKeep, "Crop");
  static const k0x01191236 =
  const MRSC(0x01191236, VR.kDS, VM.k1_n, Action.kKeep, "LPCoil");
  static const k0x01191240 =
  const MRSC(0x01191240, VR.kIS, VM.k1, Action.kKeep, "LPCCVersion");
  static const k0x01191241 =
  const MRSC(0x01191241, VR.kLO, VM.k1, Action.kKeep, "LPCCFilename");
  static const k0x01191242 =
  const MRSC(0x01191242, VR.kDS, VM.k1_n, Action.kKeep, "LPCCBandwidth");
  static const k0x01191243 =
  const MRSC(0x01191243, VR.kDS, VM.k1, Action.kKeep, "LPCCNoise_factor");
  static const k0x01191244 =
  const MRSC(0x01191244, VR.kDS, VM.k1, Action.kKeep, "LPCCNoise_level");
  static const k0x01191245 =
  const MRSC(0x01191245, VR.kIS, VM.k1, Action.kKeep, "LPCCNoise_mode");
  static const k0x01191246 =
  const MRSC(0x01191246, VR.kIS, VM.k1, Action.kKeep, "LPCCDirection");
  static const k0x01191247 =
  const MRSC(0x01191247, VR.kIS, VM.k1, Action.kKeep, "LPCCEdge_fill");
  static const k0x01191248 =
  const MRSC(0x01191248, VR.kIS, VM.k1, Action.kKeep, "LPCCMean_fill");
  static const k0x01191249 =
  const MRSC(0x01191249, VR.kIS, VM.k1, Action.kKeep, "LPCCPixelsearch");
  static const k0x0119124a =
  const MRSC(0x0119124a, VR.kDS, VM.k1, Action.kKeep, "LPCCIntensity_scale");
  static const k0x0119124b =
  const MRSC(0x0119124b, VR.kIS, VM.k1, Action.kKeep, "LPCCThreed");
  static const k0x0119124c =
  const MRSC(0x0119124c, VR.kLO, VM.k1, Action.kKeep, "LPCCRoi_mask");
  static const k0x0119124d =
  const MRSC(0x0119124d, VR.kIS, VM.k2, Action.kKeep, "LPCCMask_slices");
  static const k0x0119124e =
  const MRSC(0x0119124e, VR.kIS, VM.k1, Action.kKeep, "LPCCSlice_pad");
  static const k0x0119124f =
  const MRSC(0x0119124f, VR.kIS, VM.k1, Action.kKeep, "LPCCSave_type");
  static const k0x01191250 =
  const MRSC(0x01191250, VR.kIS, VM.k1, Action.kKeep, "LPCCFilter_type");
  static const k0x01191251 =
  const MRSC(0x01191251, VR.kDS, VM.k1, Action.kKeep, "LPCCMean_Multiplier");
  static const k0x01191260 =
  const MRSC(0x01191260, VR.kDS, VM.k1, Action.kKeep, "SACoilCorrectionIncrement");
  static const k0x01191261 =
  const MRSC(0x01191261, VR.kIS, VM.k1, Action.kKeep, "SACoilCorrectionVersion");
  static const k0x01191262 =
  const MRSC(0x01191262, VR.kDA, VM.k1, Action.kKeep, "SACoilCorrectionCorr_date");
  static const k0x01191263 =
  const MRSC(0x01191263, VR.kTM, VM.k1, Action.kKeep, "SACoilCorrectionCorr_time");
  static const k0x01191264 =
  const MRSC(0x01191264, VR.kLO, VM.k1, Action.kKeep, "SACoilCorrectionMethod");
  static const k0x01191265 =
  const MRSC(0x01191265, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionOrigin");
  static const k0x01191266 =
  const MRSC(0x01191266, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionAxis_cos");
  static const k0x01191267 =
  const MRSC(0x01191267, VR.kIS, VM.k1, Action.kKeep, "SACoilCorrectionNumber");
  static const k0x01191268 =
  const MRSC(0x01191268, VR.kLO, VM.k1, Action.kKeep, "SACoilCorrectionSid");
  static const k0x01191269 =
  const MRSC(0x01191269, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionRange");
  static const k0x0119126a =
  const MRSC(0x0119126a, VR.kFD, VM.k1_n, Action.kKeep, "SACoilCorrectionSa_value");
  static const k0x0119126b =
  const MRSC(0x0119126b, VR.kIS, VM.k1, Action.kKeep, "SACoilCorrectionAxis_flag");
  static const k0x0119126c =
  const MRSC(0x0119126c, VR.kIS, VM.k1_n, Action.kKeep, "SACoilCorrectionSample_number");
  static const k0x0119126d =
  const MRSC(0x0119126d, VR.kLO, VM.k1, Action.kKeep, "SACoilCorrectionParams_SID");
  static const k0x0119126e =
  const MRSC(0x0119126e, VR.kIS, VM.k1, Action.kKeep, "SACoilCorrectionParams_Version");
  static const k0x0119126f =
  const MRSC(0x0119126f, VR.kDS, VM.k1, Action.kKeep, "SACoilCorrectionParams_Rot_axis_off");
  static const k0x01191270 =
  const MRSC(0x01191270, VR.kDS, VM.k1, Action.kKeep, "SACoilCorrectionParams_Angle_deg");
  static const k0x01191271 =
  const MRSC(0x01191271, VR.kDS, VM.k1, Action.kKeep, "SACoilCorrectionParams_Offset_in");
  static const k0x01191272 =
  const MRSC(0x01191272, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionParams_Plane_cos_ref");
  static const k0x01191273 =
  const MRSC(0x01191273, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionParams_Lps_ref");
  static const k0x01191274 =
  const MRSC(0x01191274, VR.kIS, VM.k1, Action.kKeep, "SACoilCorrectionParams_Order");
  static const k0x01191275 =
  const MRSC(0x01191275, VR.kDS, VM.k1_n, Action.kKeep, "SACoilCorrectionParams_Coeff");
  static const k0x01191276 =
  const MRSC(0x01191276, VR.kDA, VM.k1, Action.kKeep, "SACoilCorrectionParams_Coeff_date");
  static const k0x01191277 =
  const MRSC(0x01191277, VR.kLO, VM.k1, Action.kKeep, "SACoilCorrectionParams_Coeff_src");
  static const k0x011912a0 =
  const MRSC(0x011912a0, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltSid");
  static const k0x011912a1 =
  const MRSC(0x011912a1, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltPath");
  static const k0x011912a2 =
  const MRSC(0x011912a2, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltMax_images");
  static const k0x011912a3 =
  const MRSC(0x011912a3, VR.kIS, VM.k2, Action.kKeep, "MinVarFiltId_locs");
  static const k0x011912a4 =
  const MRSC(0x011912a4, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltScript_name");
  static const k0x011912a5 =
  const MRSC(0x011912a5, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltSave_masks");
  static const k0x011912a6 =
  const MRSC(0x011912a6, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltSave_idf");
  static const k0x011912a7 =
  const MRSC(0x011912a7, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltMask");
  static const k0x011912a8 =
  const MRSC(0x011912a8, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltIdfmask");
  static const k0x011912a9 =
  const MRSC(0x011912a9, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltImage");
  static const k0x011912aa =
  const MRSC(0x011912aa, VR.kLO, VM.k1_n, Action.kKeep, "MinVarFiltIdfimages");
  static const k0x011912ab =
  const MRSC(0x011912ab, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltOutput_file");
  static const k0x011912ac =
  const MRSC(0x011912ac, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltNum_loops");
  static const k0x011912ad =
  const MRSC(0x011912ad, VR.kIS, VM.k3, Action.kKeep, "MinVarFiltKernel");
  static const k0x011912ae =
  const MRSC(0x011912ae, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltLimit_sliceFlag");
  static const k0x011912af =
  const MRSC(0x011912af, VR.kSS, VM.k2, Action.kKeep, "MinVarFiltSlice_limits");
  static const k0x011912b0 =
  const MRSC(0x011912b0, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltOutput_type");
  static const k0x011912b1 =
  const MRSC(0x011912b1, VR.kIS, VM.k1, Action.kKeep, "MinVarFiltOutput_ftype");
  static const k0x011912b2 =
  const MRSC(0x011912b2, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltScaling");
  static const k0x011912b3 =
  const MRSC(0x011912b3, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltScript");
  static const k0x011912b4 =
  const MRSC(0x011912b4, VR.kLO, VM.k1, Action.kKeep, "MinVarFiltLog");
  static const k0x01191400 =
  const MRSC(0x01191400, VR.kLO, VM.k1, Action.kKeep, "MIPsSid");
  static const k0x01191401 =
  const MRSC(0x01191401, VR.kUI, VM.k1, Action.kKeep, "MIPsUID");
  static const k0x01191402 =
  const MRSC(0x01191402, VR.kTM, VM.k1, Action.kKeep, "MIPsTime");
  static const k0x01191403 =
  const MRSC(0x01191403, VR.kDA, VM.k1, Action.kKeep, "MIPsDate");
  static const k0x01191404 =
  const MRSC(0x01191404, VR.kIS, VM.k1, Action.kKeep, "MIPsVersion");
  static const k0x01191405 =
  const MRSC(0x01191405, VR.kIS, VM.k1, Action.kKeep, "MIPsVolume");
  static const k0x01191406 =
  const MRSC(0x01191406, VR.kIS, VM.k1, Action.kKeep, "MIPsOrtho");
  static const k0x01191407 =
  const MRSC(0x01191407, VR.kIS, VM.k1, Action.kKeep, "MIPsMaskedFlag");
  static const k0x01191408 =
  const MRSC(0x01191408, VR.kIS, VM.k1, Action.kKeep, "MIPsSubtractVolume");
  static const k0x01191410 =
  const MRSC(0x01191410, VR.kUL, VM.k1_n, Action.kKeep, "MIPsProtectPixels");
  static const k0x01191411 =
  const MRSC(0x01191411, VR.kUL, VM.k1_n, Action.kKeep, "MIPsIgnorePixels");
  static const k0x01191412 =
  const MRSC(0x01191412, VR.kIS, VM.k1, Action.kKeep, "MIPsProjectFlag");
  static const k0x01191413 =
  const MRSC(0x01191413, VR.kIS, VM.k1_n, Action.kKeep, "MIPsProjectPlaneIndices");
  static const k0x01191500 =
  const MRSC(0x01191500, VR.kLO, VM.k1, Action.kKeep, "SERSid");
  static const k0x01191501 =
  const MRSC(0x01191501, VR.kUI, VM.k1, Action.kKeep, "SERUID");
  static const k0x01191502 =
  const MRSC(0x01191502, VR.kTM, VM.k1, Action.kKeep, "SERTime");
  static const k0x01191503 =
  const MRSC(0x01191503, VR.kDA, VM.k1, Action.kKeep, "SERDate");
  static const k0x01191504 =
  const MRSC(0x01191504, VR.kIS, VM.k1, Action.kKeep, "SERVersion");
  static const k0x01191505 =
  const MRSC(0x01191505, VR.kIS, VM.k3, Action.kKeep, "SERTimePoints");
  static const k0x01191506 =
  const MRSC(0x01191506, VR.kIS, VM.k1, Action.kKeep, "SERByteScaled");
  static const k0x01191507 =
  const MRSC(0x01191507, VR.kDS, VM.k1, Action.kKeep, "SERBackground");
  static const k0x01191508 =
  const MRSC(0x01191508, VR.kDS, VM.k1, Action.kKeep, "SERThreshold");
  static const k0x01191509 =
  const MRSC(0x01191509, VR.kDS, VM.k1, Action.kKeep, "SERMaximum");
  static const k0x0119150a =
  const MRSC(0x0119150a, VR.kIS, VM.k1, Action.kKeep, "SERMinConPixels");
  static const k0x0119150b =
  const MRSC(0x0119150b, VR.kIS, VM.k1, Action.kKeep, "SERCorrectFlag");
  static const k0x0119150c =
  const MRSC(0x0119150c, VR.kDS, VM.k2, Action.kKeep, "SERAcqTimes");
  static const k0x0119150d =
  const MRSC(0x0119150d, VR.kDS, VM.k2, Action.kKeep, "SERTargetTimes");
  static const k0x0119150e =
  const MRSC(0x0119150e, VR.kDS, VM.k1, Action.kKeep, "SERTimeTolerance");
  static const k0x0119150f =
  const MRSC(0x0119150f, VR.kDS, VM.k4, Action.kKeep, "SERCorrectionParams");
  static const k0x01191510 =
  const MRSC(0x01191510, VR.kLO, VM.k1, Action.kKeep, "SERImageType");
  static const k0x01191511 =
  const MRSC(0x01191511, VR.kIS, VM.k1_n, Action.kKeep, "SEROffsets");
  static const k0x01191512 =
  const MRSC(0x01191512, VR.kLO, VM.k1, Action.kKeep, "SERMaskFileName");
  static const k0x01191513 =
  const MRSC(0x01191513, VR.kDS, VM.k1, Action.kKeep, "SERMaskChecksum");
  static const k0x01191514 =
  const MRSC(0x01191514, VR.kUI, VM.k1, Action.kKeep, "SERMaskFileUID");

}