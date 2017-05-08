// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:dictionary/dictionary.dart';
import 'creator.dart';

Map<String, dynamic> privateTags = {
  "name": "k0010",
  "manufacturerId": "k0010",
  "modality": null,
  "creator": {
    "tag": 0x01170010,
    "vr": VR.kLO,
    "vm": VM.k1,
    "action": Action.kKeep,
    "description": "UCSFBIRPGroupIDString",
    "creator": "MRSC"
  },
  "elements": {
    4112: {
      "tag": 0x01191010,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PixelDataType",
      "creator": "MRSC"
    },
    4114: {
      "tag": 0x01191012,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ParameterDims",
      "creator": "MRSC"
    },
    4116: {
      "tag": 0x01171014,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PESERParameterName",
      "creator": "MRSC"
    },
    4118: {
      "tag": 0x01171016,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PESERParameterDescription",
      "creator": "MRSC"
    },
    4120: {
      "tag": 0x01191018,
      "vr": VR.kIS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "GAINS",
      "creator": "MRSC"
    },
    4121: {
      "tag": 0x01171019,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PESERParameterIntegerValue",
      "creator": "MRSC"
    },
    4122: {
      "tag": 0x0117101a,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "PESERParameterStringValue",
      "creator": "MRSC"
    },
    4128: {
      "tag": 0x01191020,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceFileNames",
      "creator": "MRSC"
    },
    4130: {
      "tag": 0x01191022,
      "vr": VR.kIS,
      "vm": VM.k6,
      "action": Action.kKeep,
      "description": "SourceCropLimits",
      "creator": "MRSC"
    },
    4132: {
      "tag": 0x01191024,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceVolumeIndices",
      "creator": "MRSC"
    },
    4144: {
      "tag": 0x01191030,
      "vr": VR.kDS,
      "vm": VM.k9,
      "action": Action.kKeep,
      "description": "DirectionCosines",
      "creator": "MRSC"
    },
    4145: {
      "tag": 0x01191031,
      "vr": VR.kCS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "PatientOrientation3",
      "creator": "MRSC"
    },
    4146: {
      "tag": 0x01171032,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "AcquisitionStartTimes",
      "creator": "MRSC"
    },
    4147: {
      "tag": 0x01171033,
      "vr": VR.kTM,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "InjectionTime",
      "creator": "MRSC"
    },
    4148: {
      "tag": 0x01171034,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "EffectiveAcquisitionDelay",
      "creator": "MRSC"
    },
    4149: {
      "tag": 0x01171035,
      "vr": VR.kIS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "SERTimingIndices",
      "creator": "MRSC"
    },
    4154: {
      "tag": 0x0117103a,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "AcquisitionTimingMethod",
      "creator": "MRSC"
    },
    4155: {
      "tag": 0x0117103b,
      "vr": VR.kLT,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "AcquisitionTimingComments",
      "creator": "MRSC"
    },
    4161: {
      "tag": 0x01191041,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SlicePosition",
      "creator": "MRSC"
    },
    4162: {
      "tag": 0x01171042,
      "vr": VR.kDS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "VOILPSCenter",
      "creator": "MRSC"
    },
    4163: {
      "tag": 0x01171043,
      "vr": VR.kDS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "VOILPSWidthHalfLength",
      "creator": "MRSC"
    },
    4164: {
      "tag": 0x01171044,
      "vr": VR.kDS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "VOILPSHeightHalfLength",
      "creator": "MRSC"
    },
    4165: {
      "tag": 0x01171045,
      "vr": VR.kDS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "VOILPSDepthHalfLength",
      "creator": "MRSC"
    },
    4166: {
      "tag": 0x01171046,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "VOILPSType",
      "creator": "MRSC"
    },
    4176: {
      "tag": 0x01191050,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "VolumeLabels",
      "creator": "MRSC"
    },
    4177: {
      "tag": 0x01191051,
      "vr": VR.kDA,
      "vm": null,
      "action": Action.kKeep,
      "description": "AcquisitionDate",
      "creator": "MRSC"
    },
    4178: {
      "tag": 0x01191052,
      "vr": VR.kTM,
      "vm": null,
      "action": Action.kKeep,
      "description": "AcquisitionTime",
      "creator": "MRSC"
    },
    4179: {
      "tag": 0x01171053,
      "vr": VR.kUS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ProjectedROIXVerts",
      "creator": "MRSC"
    },
    4180: {
      "tag": 0x01171054,
      "vr": VR.kUS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ProjectedROIYVerts",
      "creator": "MRSC"
    },
    4181: {
      "tag": 0x01171055,
      "vr": VR.kUS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "ProjectedROIZRange",
      "creator": "MRSC"
    },
    4182: {
      "tag": 0x01171056,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ProjectedROIType",
      "creator": "MRSC"
    },
    4186: {
      "tag": 0x0117105a,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ProjectedROILabel",
      "creator": "MRSC"
    },
    4257: {
      "tag": 0x011910a1,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_GRAD_Y",
      "creator": "MRSC"
    },
    4258: {
      "tag": 0x011910a2,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_GRAD_Z",
      "creator": "MRSC"
    },
    4259: {
      "tag": 0x011910a3,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_PW_X",
      "creator": "MRSC"
    },
    4260: {
      "tag": 0x011910a4,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_PW_Y",
      "creator": "MRSC"
    },
    4272: {
      "tag": 0x011910b0,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "CoilCorrectionMethod",
      "creator": "MRSC"
    },
    4273: {
      "tag": 0x011910b1,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PolyFitOrder",
      "creator": "MRSC"
    },
    4274: {
      "tag": 0x011910b2,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PolyFitCoeff",
      "creator": "MRSC"
    },
    4275: {
      "tag": 0x011710b3,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FTVPixelCount",
      "creator": "MRSC"
    },
    4276: {
      "tag": 0x011710b4,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FTVcc",
      "creator": "MRSC"
    },
    4277: {
      "tag": 0x011710b5,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FTVLabel",
      "creator": "MRSC"
    },
    4288: {
      "tag": 0x011910c0,
      "vr": VR.kSQ,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "QCMinimumLimits",
      "creator": "MRSC"
    },
    4289: {
      "tag": 0x011910c1,
      "vr": VR.kSQ,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "QCMaximumLimits",
      "creator": "MRSC"
    },
    4290: {
      "tag": 0x011710c2,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "QualityControlValue",
      "creator": "MRSC"
    },
    4291: {
      "tag": 0x011710c3,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "QualityControlMeaning",
      "creator": "MRSC"
    },
    4292: {
      "tag": 0x011710c4,
      "vr": VR.kLT,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "QualityControlComment",
      "creator": "MRSC"
    },
    4293: {
      "tag": 0x011710c5,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ProtocolCompliantFlag",
      "creator": "MRSC"
    },
    4294: {
      "tag": 0x011710c6,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "ProtocolNotCompliantReasons",
      "creator": "MRSC"
    },
    4295: {
      "tag": 0x011710c7,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ImagesAnalyzable",
      "creator": "MRSC"
    },
    4296: {
      "tag": 0x011710c8,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "ProtocolNotCAnalyzableReasons",
      "creator": "MRSC"
    },
    16: {
      "tag": 0x01190010,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIACQID",
      "creator": "MRSC"
    },
    17: {
      "tag": 0x01190011,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIFITMAPID",
      "creator": "MRSC"
    },
    18: {
      "tag": 0x01190012,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MI-IPID",
      "creator": "MRSC"
    },
    20: {
      "tag": 0x01190014,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsIDString",
      "creator": "MRSC"
    },
    21: {
      "tag": 0x01190015,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERIDString",
      "creator": "MRSC"
    },
    4096: {
      "tag": 0x01191000,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "Version",
      "creator": "MRSC"
    },
    4102: {
      "tag": 0x01191006,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinimumPixelValue",
      "creator": "MRSC"
    },
    4103: {
      "tag": 0x01191007,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MaximumPixelValue",
      "creator": "MRSC"
    },
    4113: {
      "tag": 0x01191011,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ImageIDNumbers",
      "creator": "MRSC"
    },
    4115: {
      "tag": 0x01191013,
      "vr": VR.kCS,
      "vm": null,
      "action": Action.kKeep,
      "description": "VariableParameter",
      "creator": "MRSC"
    },
    4129: {
      "tag": 0x01191021,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SourceCropFlag",
      "creator": "MRSC"
    },
    4131: {
      "tag": 0x01191023,
      "vr": VR.kUI,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceFileUIDs",
      "creator": "MRSC"
    },
    4133: {
      "tag": 0x01191025,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceVolumeLabels",
      "creator": "MRSC"
    },
    4152: {
      "tag": 0x01191038,
      "vr": VR.kDS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "PixelGap",
      "creator": "MRSC"
    },
    4192: {
      "tag": 0x01191060,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SecCptrUser",
      "creator": "MRSC"
    },
    4193: {
      "tag": 0x01191061,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SecCptrApplication",
      "creator": "MRSC"
    },
    4208: {
      "tag": 0x01191070,
      "vr": VR.kAT,
      "vm": null,
      "action": Action.kKeep,
      "description": "VariableParamTags",
      "creator": "MRSC"
    },
    4209: {
      "tag": 0x01191071,
      "vr": VR.kCS,
      "vm": null,
      "action": Action.kKeep,
      "description": "VariableParamNames",
      "creator": "MRSC"
    },
    4224: {
      "tag": 0x01191080,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TR",
      "creator": "MRSC"
    },
    4225: {
      "tag": 0x01191081,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TE",
      "creator": "MRSC"
    },
    4226: {
      "tag": 0x01191082,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TI",
      "creator": "MRSC"
    },
    4227: {
      "tag": 0x01191083,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TSL",
      "creator": "MRSC"
    },
    4232: {
      "tag": 0x01191088,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "FlipAngle",
      "creator": "MRSC"
    },
    4240: {
      "tag": 0x01191090,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TemporalIndex",
      "creator": "MRSC"
    },
    4241: {
      "tag": 0x01191091,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "TemporalValue",
      "creator": "MRSC"
    },
    4256: {
      "tag": 0x011910a0,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_GRAD_X",
      "creator": "MRSC"
    },
    4261: {
      "tag": 0x011910a5,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_PW_Z",
      "creator": "MRSC"
    },
    4262: {
      "tag": 0x011910a6,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_TIME_X",
      "creator": "MRSC"
    },
    4263: {
      "tag": 0x011910a7,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_TIME_Y",
      "creator": "MRSC"
    },
    4264: {
      "tag": 0x011910a8,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DIFF_TIME_Z",
      "creator": "MRSC"
    },
    4265: {
      "tag": 0x011910a9,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "DiffBValues",
      "creator": "MRSC"
    },
    4304: {
      "tag": 0x011910d0,
      "vr": VR.kST,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "CheckString",
      "creator": "MRSC"
    },
    4305: {
      "tag": 0x011910d1,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "Source",
      "creator": "MRSC"
    },
    4336: {
      "tag": 0x011910f0,
      "vr": VR.kOB,
      "vm": null,
      "action": Action.kKeep,
      "description": "SampleHeader",
      "creator": "MRSC"
    },
    4351: {
      "tag": 0x011910ff,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "UserInfo",
      "creator": "MRSC"
    },
    4352: {
      "tag": 0x01191100,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FitMapModuleVersion",
      "creator": "MRSC"
    },
    4353: {
      "tag": 0x01191101,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceFileNames",
      "creator": "MRSC"
    },
    4354: {
      "tag": 0x01191102,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceVolumeIndices",
      "creator": "MRSC"
    },
    4355: {
      "tag": 0x01191103,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ParameterValues",
      "creator": "MRSC"
    },
    4356: {
      "tag": 0x01191104,
      "vr": VR.kAT,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ParameterTag",
      "creator": "MRSC"
    },
    4357: {
      "tag": 0x01191105,
      "vr": VR.kUI,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceFileUIDs",
      "creator": "MRSC"
    },
    4358: {
      "tag": 0x01191106,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "SourceFileDirectory",
      "creator": "MRSC"
    },
    4359: {
      "tag": 0x01191107,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SourceDataInPlaceFlag",
      "creator": "MRSC"
    },
    4360: {
      "tag": 0x01191108,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ResultVolumeindices",
      "creator": "MRSC"
    },
    4361: {
      "tag": 0x01191109,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SMOOTHBoxcarAverageKernel",
      "creator": "MRSC"
    },
    4364: {
      "tag": 0x0119110c,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FitICFunction",
      "creator": "MRSC"
    },
    4365: {
      "tag": 0x0119110d,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FitFormulaProcedure",
      "creator": "MRSC"
    },
    4366: {
      "tag": 0x0119110e,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FittingProgram",
      "creator": "MRSC"
    },
    4367: {
      "tag": 0x0119110f,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FittingProgramVersion",
      "creator": "MRSC"
    },
    4368: {
      "tag": 0x01191110,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FitType",
      "creator": "MRSC"
    },
    4369: {
      "tag": 0x01191111,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SetICFlag",
      "creator": "MRSC"
    },
    4370: {
      "tag": 0x01191112,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "InitialConditions",
      "creator": "MRSC"
    },
    4371: {
      "tag": 0x01191113,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "FitMapScaleFactors",
      "creator": "MRSC"
    },
    4384: {
      "tag": 0x01191120,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ThresholdingFlag",
      "creator": "MRSC"
    },
    4385: {
      "tag": 0x01191121,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "Threshold",
      "creator": "MRSC"
    },
    4386: {
      "tag": 0x01191122,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MaskCompression",
      "creator": "MRSC"
    },
    4387: {
      "tag": 0x01191123,
      "vr": VR.kOB,
      "vm": null,
      "action": Action.kKeep,
      "description": "FitMapMask",
      "creator": "MRSC"
    },
    4388: {
      "tag": 0x01191124,
      "vr": VR.kOB,
      "vm": null,
      "action": Action.kKeep,
      "description": "FitMapPntThreshMap",
      "creator": "MRSC"
    },
    4389: {
      "tag": 0x01191125,
      "vr": VR.kST,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PixelMaskCheckString",
      "creator": "MRSC"
    },
    4390: {
      "tag": 0x01191126,
      "vr": VR.kST,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PixelMaskSource",
      "creator": "MRSC"
    },
    4400: {
      "tag": 0x01191130,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "UpperFitLimit",
      "creator": "MRSC"
    },
    4401: {
      "tag": 0x01191131,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "LowerFitLimit",
      "creator": "MRSC"
    },
    4416: {
      "tag": 0x01191140,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "GradientMatrixMethod",
      "creator": "MRSC"
    },
    4417: {
      "tag": 0x01191141,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "GradientMatrix",
      "creator": "MRSC"
    },
    4480: {
      "tag": 0x01191180,
      "vr": VR.kSQ,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "FitMapSQ",
      "creator": "MRSC"
    },
    4481: {
      "tag": 0x01191181,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "fmSQFitNumber",
      "creator": "MRSC"
    },
    4512: {
      "tag": 0x011911a0,
      "vr": VR.kCS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PhantCalibType",
      "creator": "MRSC"
    },
    4513: {
      "tag": 0x011911a1,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "PhantCalibNParms",
      "creator": "MRSC"
    },
    4514: {
      "tag": 0x011911a2,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PhantCalibParam",
      "creator": "MRSC"
    },
    4515: {
      "tag": 0x011911a3,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PhantGoodFlags",
      "creator": "MRSC"
    },
    4516: {
      "tag": 0x011911a4,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PhantValues",
      "creator": "MRSC"
    },
    4517: {
      "tag": 0x011911a5,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PhantRefValues",
      "creator": "MRSC"
    },
    4608: {
      "tag": 0x01191200,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ImageProcessStatus",
      "creator": "MRSC"
    },
    4609: {
      "tag": 0x01191201,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SourceID",
      "creator": "MRSC"
    },
    4610: {
      "tag": 0x01191202,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "Group Version",
      "creator": "MRSC"
    },
    4611: {
      "tag": 0x01191203,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "ExecuteOnRead",
      "creator": "MRSC"
    },
    4612: {
      "tag": 0x01191204,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "NumberPasses",
      "creator": "MRSC"
    },
    4614: {
      "tag": 0x01191206,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "NumProcesses",
      "creator": "MRSC"
    },
    4616: {
      "tag": 0x01191208,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "GroupExecuteOrder",
      "creator": "MRSC"
    },
    4618: {
      "tag": 0x0119120a,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "NumberTransforms",
      "creator": "MRSC"
    },
    4619: {
      "tag": 0x0119120b,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "NumberProcesses",
      "creator": "MRSC"
    },
    4625: {
      "tag": 0x01191211,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "InvertImage",
      "creator": "MRSC"
    },
    4626: {
      "tag": 0x01191212,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SkeletonizeImage",
      "creator": "MRSC"
    },
    4627: {
      "tag": 0x01191213,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "IsotropicResolution",
      "creator": "MRSC"
    },
    4640: {
      "tag": 0x01191220,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "MedianFilterKernel",
      "creator": "MRSC"
    },
    4641: {
      "tag": 0x01191221,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "BackgroundCorrection",
      "creator": "MRSC"
    },
    4642: {
      "tag": 0x01191222,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "UnSharpMasking",
      "creator": "MRSC"
    },
    4643: {
      "tag": 0x01191223,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "LocalThresholdKernel",
      "creator": "MRSC"
    },
    4644: {
      "tag": 0x01191224,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "AbsoluteLimits",
      "creator": "MRSC"
    },
    4645: {
      "tag": 0x01191225,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "PercentileLimits",
      "creator": "MRSC"
    },
    4646: {
      "tag": 0x01191226,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "InPlaneRotation",
      "creator": "MRSC"
    },
    4647: {
      "tag": 0x01191227,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ByteScaleMinMaxTop",
      "creator": "MRSC"
    },
    4648: {
      "tag": 0x01191228,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "GlobalThreshold",
      "creator": "MRSC"
    },
    4649: {
      "tag": 0x01191229,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "IntensityScale",
      "creator": "MRSC"
    },
    4656: {
      "tag": 0x01191230,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "ReSample",
      "creator": "MRSC"
    },
    4657: {
      "tag": 0x01191231,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "OrthogonalReFormat",
      "creator": "MRSC"
    },
    4658: {
      "tag": 0x01191232,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "REBIN",
      "creator": "MRSC"
    },
    4659: {
      "tag": 0x01191233,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "WhiteTopHat",
      "creator": "MRSC"
    },
    4660: {
      "tag": 0x01191234,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "HistEqual",
      "creator": "MRSC"
    },
    4661: {
      "tag": 0x01191235,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "Crop",
      "creator": "MRSC"
    },
    4662: {
      "tag": 0x01191236,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "LPCoil",
      "creator": "MRSC"
    },
    4672: {
      "tag": 0x01191240,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCVersion",
      "creator": "MRSC"
    },
    4673: {
      "tag": 0x01191241,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCFilename",
      "creator": "MRSC"
    },
    4674: {
      "tag": 0x01191242,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "LPCCBandwidth",
      "creator": "MRSC"
    },
    4675: {
      "tag": 0x01191243,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCNoise_factor",
      "creator": "MRSC"
    },
    4676: {
      "tag": 0x01191244,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCNoise_level",
      "creator": "MRSC"
    },
    4677: {
      "tag": 0x01191245,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCNoise_mode",
      "creator": "MRSC"
    },
    4678: {
      "tag": 0x01191246,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCDirection",
      "creator": "MRSC"
    },
    4679: {
      "tag": 0x01191247,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCEdge_fill",
      "creator": "MRSC"
    },
    4680: {
      "tag": 0x01191248,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCMean_fill",
      "creator": "MRSC"
    },
    4681: {
      "tag": 0x01191249,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCPixelsearch",
      "creator": "MRSC"
    },
    4682: {
      "tag": 0x0119124a,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCIntensity_scale",
      "creator": "MRSC"
    },
    4683: {
      "tag": 0x0119124b,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCThreed",
      "creator": "MRSC"
    },
    4684: {
      "tag": 0x0119124c,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCRoi_mask",
      "creator": "MRSC"
    },
    4685: {
      "tag": 0x0119124d,
      "vr": VR.kIS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "LPCCMask_slices",
      "creator": "MRSC"
    },
    4686: {
      "tag": 0x0119124e,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCSlice_pad",
      "creator": "MRSC"
    },
    4687: {
      "tag": 0x0119124f,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCSave_type",
      "creator": "MRSC"
    },
    4688: {
      "tag": 0x01191250,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCFilter_type",
      "creator": "MRSC"
    },
    4689: {
      "tag": 0x01191251,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "LPCCMean_Multiplier",
      "creator": "MRSC"
    },
    4704: {
      "tag": 0x01191260,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionIncrement",
      "creator": "MRSC"
    },
    4705: {
      "tag": 0x01191261,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionVersion",
      "creator": "MRSC"
    },
    4706: {
      "tag": 0x01191262,
      "vr": VR.kDA,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionCorr_date",
      "creator": "MRSC"
    },
    4707: {
      "tag": 0x01191263,
      "vr": VR.kTM,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionCorr_time",
      "creator": "MRSC"
    },
    4708: {
      "tag": 0x01191264,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionMethod",
      "creator": "MRSC"
    },
    4709: {
      "tag": 0x01191265,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionOrigin",
      "creator": "MRSC"
    },
    4710: {
      "tag": 0x01191266,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionAxis_cos",
      "creator": "MRSC"
    },
    4711: {
      "tag": 0x01191267,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionNumber",
      "creator": "MRSC"
    },
    4712: {
      "tag": 0x01191268,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionSid",
      "creator": "MRSC"
    },
    4713: {
      "tag": 0x01191269,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionRange",
      "creator": "MRSC"
    },
    4714: {
      "tag": 0x0119126a,
      "vr": VR.kFD,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionSa_value",
      "creator": "MRSC"
    },
    4715: {
      "tag": 0x0119126b,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionAxis_flag",
      "creator": "MRSC"
    },
    4716: {
      "tag": 0x0119126c,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionSample_number",
      "creator": "MRSC"
    },
    4717: {
      "tag": 0x0119126d,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_SID",
      "creator": "MRSC"
    },
    4718: {
      "tag": 0x0119126e,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Version",
      "creator": "MRSC"
    },
    4719: {
      "tag": 0x0119126f,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Rot_axis_off",
      "creator": "MRSC"
    },
    4720: {
      "tag": 0x01191270,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Angle_deg",
      "creator": "MRSC"
    },
    4721: {
      "tag": 0x01191271,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Offset_in",
      "creator": "MRSC"
    },
    4722: {
      "tag": 0x01191272,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Plane_cos_ref",
      "creator": "MRSC"
    },
    4723: {
      "tag": 0x01191273,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Lps_ref",
      "creator": "MRSC"
    },
    4724: {
      "tag": 0x01191274,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Order",
      "creator": "MRSC"
    },
    4725: {
      "tag": 0x01191275,
      "vr": VR.kDS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Coeff",
      "creator": "MRSC"
    },
    4726: {
      "tag": 0x01191276,
      "vr": VR.kDA,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Coeff_date",
      "creator": "MRSC"
    },
    4727: {
      "tag": 0x01191277,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SACoilCorrectionParams_Coeff_src",
      "creator": "MRSC"
    },
    4768: {
      "tag": 0x011912a0,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltSid",
      "creator": "MRSC"
    },
    4769: {
      "tag": 0x011912a1,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltPath",
      "creator": "MRSC"
    },
    4770: {
      "tag": 0x011912a2,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltMax_images",
      "creator": "MRSC"
    },
    4771: {
      "tag": 0x011912a3,
      "vr": VR.kIS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "MinVarFiltId_locs",
      "creator": "MRSC"
    },
    4772: {
      "tag": 0x011912a4,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltScript_name",
      "creator": "MRSC"
    },
    4773: {
      "tag": 0x011912a5,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltSave_masks",
      "creator": "MRSC"
    },
    4774: {
      "tag": 0x011912a6,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltSave_idf",
      "creator": "MRSC"
    },
    4775: {
      "tag": 0x011912a7,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltMask",
      "creator": "MRSC"
    },
    4776: {
      "tag": 0x011912a8,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltIdfmask",
      "creator": "MRSC"
    },
    4777: {
      "tag": 0x011912a9,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltImage",
      "creator": "MRSC"
    },
    4778: {
      "tag": 0x011912aa,
      "vr": VR.kLO,
      "vm": null,
      "action": Action.kKeep,
      "description": "MinVarFiltIdfimages",
      "creator": "MRSC"
    },
    4779: {
      "tag": 0x011912ab,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltOutput_file",
      "creator": "MRSC"
    },
    4780: {
      "tag": 0x011912ac,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltNum_loops",
      "creator": "MRSC"
    },
    4781: {
      "tag": 0x011912ad,
      "vr": VR.kIS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "MinVarFiltKernel",
      "creator": "MRSC"
    },
    4782: {
      "tag": 0x011912ae,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltLimit_sliceFlag",
      "creator": "MRSC"
    },
    4783: {
      "tag": 0x011912af,
      "vr": VR.kSS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "MinVarFiltSlice_limits",
      "creator": "MRSC"
    },
    4784: {
      "tag": 0x011912b0,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltOutput_type",
      "creator": "MRSC"
    },
    4785: {
      "tag": 0x011912b1,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltOutput_ftype",
      "creator": "MRSC"
    },
    4786: {
      "tag": 0x011912b2,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltScaling",
      "creator": "MRSC"
    },
    4787: {
      "tag": 0x011912b3,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltScript",
      "creator": "MRSC"
    },
    4788: {
      "tag": 0x011912b4,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MinVarFiltLog",
      "creator": "MRSC"
    },
    5120: {
      "tag": 0x01191400,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsSid",
      "creator": "MRSC"
    },
    5121: {
      "tag": 0x01191401,
      "vr": VR.kUI,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsUID",
      "creator": "MRSC"
    },
    5122: {
      "tag": 0x01191402,
      "vr": VR.kTM,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsTime",
      "creator": "MRSC"
    },
    5123: {
      "tag": 0x01191403,
      "vr": VR.kDA,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsDate",
      "creator": "MRSC"
    },
    5124: {
      "tag": 0x01191404,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsVersion",
      "creator": "MRSC"
    },
    5125: {
      "tag": 0x01191405,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsVolume",
      "creator": "MRSC"
    },
    5126: {
      "tag": 0x01191406,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsOrtho",
      "creator": "MRSC"
    },
    5127: {
      "tag": 0x01191407,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsMaskedFlag",
      "creator": "MRSC"
    },
    5128: {
      "tag": 0x01191408,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsSubtractVolume",
      "creator": "MRSC"
    },
    5136: {
      "tag": 0x01191410,
      "vr": VR.kUL,
      "vm": null,
      "action": Action.kKeep,
      "description": "MIPsProtectPixels",
      "creator": "MRSC"
    },
    5137: {
      "tag": 0x01191411,
      "vr": VR.kUL,
      "vm": null,
      "action": Action.kKeep,
      "description": "MIPsIgnorePixels",
      "creator": "MRSC"
    },
    5138: {
      "tag": 0x01191412,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "MIPsProjectFlag",
      "creator": "MRSC"
    },
    5139: {
      "tag": 0x01191413,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "MIPsProjectPlaneIndices",
      "creator": "MRSC"
    },
    5376: {
      "tag": 0x01191500,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERSid",
      "creator": "MRSC"
    },
    5377: {
      "tag": 0x01191501,
      "vr": VR.kUI,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERUID",
      "creator": "MRSC"
    },
    5378: {
      "tag": 0x01191502,
      "vr": VR.kTM,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERTime",
      "creator": "MRSC"
    },
    5379: {
      "tag": 0x01191503,
      "vr": VR.kDA,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERDate",
      "creator": "MRSC"
    },
    5380: {
      "tag": 0x01191504,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERVersion",
      "creator": "MRSC"
    },
    5381: {
      "tag": 0x01191505,
      "vr": VR.kIS,
      "vm": VM.k3,
      "action": Action.kKeep,
      "description": "SERTimePoints",
      "creator": "MRSC"
    },
    5382: {
      "tag": 0x01191506,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERByteScaled",
      "creator": "MRSC"
    },
    5383: {
      "tag": 0x01191507,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERBackground",
      "creator": "MRSC"
    },
    5384: {
      "tag": 0x01191508,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERThreshold",
      "creator": "MRSC"
    },
    5385: {
      "tag": 0x01191509,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERMaximum",
      "creator": "MRSC"
    },
    5386: {
      "tag": 0x0119150a,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERMinConPixels",
      "creator": "MRSC"
    },
    5387: {
      "tag": 0x0119150b,
      "vr": VR.kIS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERCorrectFlag",
      "creator": "MRSC"
    },
    5388: {
      "tag": 0x0119150c,
      "vr": VR.kDS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "SERAcqTimes",
      "creator": "MRSC"
    },
    5389: {
      "tag": 0x0119150d,
      "vr": VR.kDS,
      "vm": VM.k2,
      "action": Action.kKeep,
      "description": "SERTargetTimes",
      "creator": "MRSC"
    },
    5390: {
      "tag": 0x0119150e,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERTimeTolerance",
      "creator": "MRSC"
    },
    5391: {
      "tag": 0x0119150f,
      "vr": VR.kDS,
      "vm": VM.k4,
      "action": Action.kKeep,
      "description": "SERCorrectionParams",
      "creator": "MRSC"
    },
    5392: {
      "tag": 0x01191510,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERImageType",
      "creator": "MRSC"
    },
    5393: {
      "tag": 0x01191511,
      "vr": VR.kIS,
      "vm": null,
      "action": Action.kKeep,
      "description": "SEROffsets",
      "creator": "MRSC"
    },
    5394: {
      "tag": 0x01191512,
      "vr": VR.kLO,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERMaskFileName",
      "creator": "MRSC"
    },
    5395: {
      "tag": 0x01191513,
      "vr": VR.kDS,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERMaskChecksum",
      "creator": "MRSC"
    },
    5396: {
      "tag": 0x01191514,
      "vr": VR.kUI,
      "vm": VM.k1,
      "action": Action.kKeep,
      "description": "SERMaskFileUID",
      "creator": "MRSC"
    },
  }
};
