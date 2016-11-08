import 'package:core/core.dart';
import 'creator.dart';

Map manufacturers = {
  "Fuji": {
    "index": 1,
    "id": "Fuji",
    "groups": {
      0x0009: {
        "name": "k0010",
        "manufacturerId": "Fuji",
        "modality": Modality.CR,
        "creator": {
          "tag": 0x00090010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Fuji Film Private Creator ID",
          "creator": "FDMS 1.0"
        },
        "elements": {
          "k4100": {
            "tag": 0x00091004,
            "vr": VR.kSH,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Image Control Unit",
            "creator": "FDMS 1.0"
          },
          "k4101": {
            "tag": 0x00091005,
            "vr": VR.kOW,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Image UID",
            "creator": "FDMS 1.0"
          },
          "k4102": {
            "tag": 0x50f11006,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Energy Subtraction Param",
            "creator": "FDMS 1.0"
          },
          "k4104": {
            "tag": 0x50f11008,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Energy Subtraction Param. 2",
            "creator": "FDMS 1.0"
          },
          "k4105": {
            "tag": 0x50f11009,
            "vr": VR.kSL,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Afin Conversion Coefficient",
            "creator": "FDMS 1.0"
          },
          "k4108": {
            "tag": 0x0009100c,
            "vr": VR.kOW,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Film UID",
            "creator": "FDMS 1.0"
          },
          "k4112": {
            "tag": 0x00251010,
            "vr": VR.kUS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Relative Light Emission Amount Sk",
            "creator": "FDMS 1.0"
          },
          "k4224": {
            "tag": 0x00211080,
            "vr": VR.kOB,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Equipment Type-Specific Information",
            "creator": "FDMS 1.0"
          },
          "k4240": {
            "tag": 0x00091090,
            "vr": VR.kST,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Distribution Code",
            "creator": "FDMS 1.0"
          },
          "k4242": {
            "tag": 0x00091092,
            "vr": VR.kSH,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Kanji Department Name",
            "creator": "FDMS 1.0"
          },
          "k4336": {
            "tag": 0x000910f0,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Blackening Process Flag",
            "creator": "FDMS 1.0"
          },
          "k4337": {
            "tag": 0x000910f1,
            "vr": VR.kST,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Processing Information Flag",
            "creator": "FDMS 1.0"
          },
          "k16": {
            "tag": 0x50f10010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Fuji Private Creator ID",
            "creator": "FDMS 1.0"
          },
          "k4117": {
            "tag": 0x00191015,
            "vr": VR.kLO,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Kanji Body Part for Exposure",
            "creator": "FDMS 1.0"
          },
          "k4146": {
            "tag": 0x00191032,
            "vr": VR.kLO,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Kanji Menu Name",
            "creator": "FDMS 1.0"
          },
          "k4160": {
            "tag": 0x00211040,
            "vr": VR.kIS,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Image No. In the Set",
            "creator": "FDMS 1.0"
          },
          "k4176": {
            "tag": 0x00291050,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Data Compression Code",
            "creator": "FDMS 1.0"
          },
          "k4192": {
            "tag": 0x00191060,
            "vr": VR.kSH,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Radiographers Code",
            "creator": "FDMS 1.0"
          },
          "k4208": {
            "tag": 0x00191070,
            "vr": VR.kIS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Split Exposure Format",
            "creator": "FDMS 1.0"
          },
          "k4209": {
            "tag": 0x00191071,
            "vr": VR.kIS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "No. of Split Exposure Frames",
            "creator": "FDMS 1.0"
          },
          "k4225": {
            "tag": 0x00191081,
            "vr": VR.kIS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Reading Sensitivity Center",
            "creator": "FDMS 1.0"
          },
          "k4144": {
            "tag": 0x00211030,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kRemove,
            "description": "Set No.",
            "creator": "FDMS 1.0"
          },
          "k4113": {
            "tag": 0x00251011,
            "vr": VR.kUS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Term of Correction for Each IP Type St",
            "creator": "FDMS 1.0"
          },
          "k4114": {
            "tag": 0x00251012,
            "vr": VR.kUS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Reading Gain Gp",
            "creator": "FDMS 1.0"
          },
          "k4103": {
            "tag": 0x50f11007,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Subtraction Registration Result",
            "creator": "FDMS 1.0"
          },
          "k4106": {
            "tag": 0x50f1100a,
            "vr": VR.kSH,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "FNC Parameters",
            "creator": "FDMS 1.0"
          },
          "k4128": {
            "tag": 0x50f11020,
            "vr": VR.kCS,
            "vm": VM.kUnknown,
            "action": Action.kKeep,
            "description": "Image Processing Modification Flag",
            "creator": "FDMS 1.0"
          },
        }
      }
    }
  },
  "GE": {
    "groups": {
      0x0009: {
        "name": "k0010",
        "manufacturerId": "GE",
        "modality": Modality.PT,
        "creator": {
          "tag": 0x00090010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "GEHC Private Creator ID",
          "creator": "GEMS_PETD_01"
        },
        "elements": {
          "k4097": {
            "tag": 0x00211001,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET raw_data_type",
            "creator": "GEMS_PETD_01"
          },
          "k4098": {
            "tag": 0x00231002,
            "vr": null,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET raw_data_blob",
            "creator": "GEMS_PETD_01"
          },
          "k4099": {
            "tag": 0x00191003,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET software_version",
            "creator": "GEMS_PETD_01"
          },
          "k4100": {
            "tag": 0x00191004,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET cal_datetime",
            "creator": "GEMS_PETD_01"
          },
          "k4101": {
            "tag": 0x00191005,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET cal_type",
            "creator": "GEMS_PETD_01"
          },
          "k4102": {
            "tag": 0x00191006,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET cal_description",
            "creator": "GEMS_PETD_01"
          },
          "k4103": {
            "tag": 0x00191007,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET cal_hardware",
            "creator": "GEMS_PETD_01"
          },
          "k4104": {
            "tag": 0x00191008,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET coefficients",
            "creator": "GEMS_PETD_01"
          },
          "k4105": {
            "tag": 0x00191009,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET activity_factor_hr",
            "creator": "GEMS_PETD_01"
          },
          "k4106": {
            "tag": 0x0019100a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET activity_factor_hs",
            "creator": "GEMS_PETD_01"
          },
          "k4107": {
            "tag": 0x0019100b,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET activity_factor_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4108": {
            "tag": 0x0019100c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET scan_id",
            "creator": "GEMS_PETD_01"
          },
          "k4109": {
            "tag": 0x0019100d,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET scan_datetime",
            "creator": "GEMS_PETD_01"
          },
          "k4110": {
            "tag": 0x0019100e,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET hosp_identifier",
            "creator": "GEMS_PETD_01"
          },
          "k4111": {
            "tag": 0x0019100f,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET meas_activity",
            "creator": "GEMS_PETD_01"
          },
          "k4112": {
            "tag": 0x00191010,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET meas_datetime",
            "creator": "GEMS_PETD_01"
          },
          "k4113": {
            "tag": 0x00191011,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_filter_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4114": {
            "tag": 0x00191012,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_cutoff_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4115": {
            "tag": 0x00191013,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET default_flag",
            "creator": "GEMS_PETD_01"
          },
          "k4116": {
            "tag": 0x00191014,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET archived",
            "creator": "GEMS_PETD_01"
          },
          "k4117": {
            "tag": 0x00191015,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET wc_cal_rec_method",
            "creator": "GEMS_PETD_01"
          },
          "k4118": {
            "tag": 0x00191016,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET activity_factor_2d",
            "creator": "GEMS_PETD_01"
          },
          "k4119": {
            "tag": 0x00191017,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET isotope",
            "creator": "GEMS_PETD_01"
          },
          "k4120": {
            "tag": 0x00191018,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "WCC Image Set ID",
            "creator": "GEMS_PETD_01"
          },
          "k4121": {
            "tag": 0x00091019,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET scan_mode",
            "creator": "GEMS_PETD_01"
          },
          "k4122": {
            "tag": 0x0015101a,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Physio Gating Type",
            "creator": "GEMS_PETD_01"
          },
          "k4123": {
            "tag": 0x0015101b,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Total Number of Bins",
            "creator": "GEMS_PETD_01"
          },
          "k4124": {
            "tag": 0x0015101c,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "% Phase Value",
            "creator": "GEMS_PETD_01"
          },
          "k4125": {
            "tag": 0x0015101d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Phase Matched Series",
            "creator": "GEMS_PETD_01"
          },
          "k4126": {
            "tag": 0x0015101e,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CTAC Percent Value",
            "creator": "GEMS_PETD_01"
          },
          "k4127": {
            "tag": 0x0015101f,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET Recon Parameters Exists",
            "creator": "GEMS_PETD_01"
          },
          "k4128": {
            "tag": 0x00151020,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "First Packet Number",
            "creator": "GEMS_PETD_01"
          },
          "k4129": {
            "tag": 0x00151021,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IR Loop Filter Ratio",
            "creator": "GEMS_PETD_01"
          },
          "k4130": {
            "tag": 0x00151022,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IR Loop Filter Correction",
            "creator": "GEMS_PETD_01"
          },
          "k4131": {
            "tag": 0x00151023,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter FlagU",
            "creator": "GEMS_PETD_01"
          },
          "k4132": {
            "tag": 0x00151024,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter CutoffU",
            "creator": "GEMS_PETD_01"
          },
          "k4133": {
            "tag": 0x00151025,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter OrderU",
            "creator": "GEMS_PETD_01"
          },
          "k4134": {
            "tag": 0x00151026,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter FlagV",
            "creator": "GEMS_PETD_01"
          },
          "k4135": {
            "tag": 0x00151027,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter OrderV",
            "creator": "GEMS_PETD_01"
          },
          "k4136": {
            "tag": 0x00151028,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BP3d Filter CutoffV",
            "creator": "GEMS_PETD_01"
          },
          "k4137": {
            "tag": 0x00151029,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Decay Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4138": {
            "tag": 0x0009102a,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET collimation",
            "creator": "GEMS_PETD_01"
          },
          "k4139": {
            "tag": 0x0009102b,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET scan_fov",
            "creator": "GEMS_PETD_01"
          },
          "k4140": {
            "tag": 0x0009102c,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_fov",
            "creator": "GEMS_PETD_01"
          },
          "k4141": {
            "tag": 0x0009102d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET event_separation",
            "creator": "GEMS_PETD_01"
          },
          "k4142": {
            "tag": 0x0015102e,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Image filter 3d flag",
            "creator": "GEMS_PETD_01"
          },
          "k4143": {
            "tag": 0x0015102f,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "WCC Cal Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4144": {
            "tag": 0x00151030,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Emission Scatter Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4145": {
            "tag": 0x00151031,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Algorithm",
            "creator": "GEMS_PETD_01"
          },
          "k4146": {
            "tag": 0x00151032,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Normalization Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4147": {
            "tag": 0x00151033,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Emission Deadtime Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4148": {
            "tag": 0x00151034,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Emission Random Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4149": {
            "tag": 0x00151035,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Blank Scan Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4150": {
            "tag": 0x00091036,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET tracer_name",
            "creator": "GEMS_PETD_01"
          },
          "k4151": {
            "tag": 0x00091037,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET batch_description",
            "creator": "GEMS_PETD_01"
          },
          "k4152": {
            "tag": 0x00091038,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET tracer_activity",
            "creator": "GEMS_PETD_01"
          },
          "k4153": {
            "tag": 0x00151039,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Event histogram Format",
            "creator": "GEMS_PETD_01"
          },
          "k4154": {
            "tag": 0x0015103a,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Number of Detector Rows",
            "creator": "GEMS_PETD_01"
          },
          "k4155": {
            "tag": 0x0015103b,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Number of Detector Columns",
            "creator": "GEMS_PETD_01"
          },
          "k4156": {
            "tag": 0x0015103c,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Matrix Size",
            "creator": "GEMS_PETD_01"
          },
          "k4157": {
            "tag": 0x0015103d,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET Sharp IR Flag",
            "creator": "GEMS_PETD_01"
          },
          "k4158": {
            "tag": 0x0015103e,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET Scatter Limit",
            "creator": "GEMS_PETD_01"
          },
          "k4159": {
            "tag": 0x0009103f,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET half_life",
            "creator": "GEMS_PETD_01"
          },
          "k4160": {
            "tag": 0x00091040,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET positron_fraction",
            "creator": "GEMS_PETD_01"
          },
          "k4161": {
            "tag": 0x00091041,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source1_holder",
            "creator": "GEMS_PETD_01"
          },
          "k4162": {
            "tag": 0x00091042,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source1_activity",
            "creator": "GEMS_PETD_01"
          },
          "k4163": {
            "tag": 0x00091043,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET source1_meas_dt",
            "creator": "GEMS_PETD_01"
          },
          "k4164": {
            "tag": 0x00091044,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET source1_radnuclide",
            "creator": "GEMS_PETD_01"
          },
          "k4165": {
            "tag": 0x00091045,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source1_half_life",
            "creator": "GEMS_PETD_01"
          },
          "k4166": {
            "tag": 0x00091046,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source2_holder",
            "creator": "GEMS_PETD_01"
          },
          "k4167": {
            "tag": 0x00091047,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source2_activity",
            "creator": "GEMS_PETD_01"
          },
          "k4168": {
            "tag": 0x00091048,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET source2_meas_dt",
            "creator": "GEMS_PETD_01"
          },
          "k4169": {
            "tag": 0x00091049,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source2_radnuclide",
            "creator": "GEMS_PETD_01"
          },
          "k4170": {
            "tag": 0x0009104a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source2_half_life",
            "creator": "GEMS_PETD_01"
          },
          "k4171": {
            "tag": 0x0009104b,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source_speed",
            "creator": "GEMS_PETD_01"
          },
          "k4172": {
            "tag": 0x0009104c,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET source_location",
            "creator": "GEMS_PETD_01"
          },
          "k4173": {
            "tag": 0x0009104d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET emission_present",
            "creator": "GEMS_PETD_01"
          },
          "k4174": {
            "tag": 0x0009104e,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET lower_axial_acc",
            "creator": "GEMS_PETD_01"
          },
          "k4175": {
            "tag": 0x0009104f,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET upper_axial_acc",
            "creator": "GEMS_PETD_01"
          },
          "k4176": {
            "tag": 0x00091050,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET lower_coinc_limit",
            "creator": "GEMS_PETD_01"
          },
          "k4177": {
            "tag": 0x00091051,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET upper_coinc_limit",
            "creator": "GEMS_PETD_01"
          },
          "k4178": {
            "tag": 0x00091052,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET coinc_delay_offset",
            "creator": "GEMS_PETD_01"
          },
          "k4179": {
            "tag": 0x00091053,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET coinc_output_mode",
            "creator": "GEMS_PETD_01"
          },
          "k4180": {
            "tag": 0x00091054,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET upper_energy_limit",
            "creator": "GEMS_PETD_01"
          },
          "k4181": {
            "tag": 0x00091055,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET lower_energy_limit",
            "creator": "GEMS_PETD_01"
          },
          "k4182": {
            "tag": 0x00091056,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET normal_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4183": {
            "tag": 0x00091057,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET normal_2d_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4184": {
            "tag": 0x00091058,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET blank_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4185": {
            "tag": 0x00091059,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET wc_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4186": {
            "tag": 0x0009105a,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET derived",
            "creator": "GEMS_PETD_01"
          },
          "k4187": {
            "tag": 0x0009105b,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET contrast_agent",
            "creator": "GEMS_PETD_01"
          },
          "k4188": {
            "tag": 0x0009105c,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET frame_id",
            "creator": "GEMS_PETD_01"
          },
          "k4189": {
            "tag": 0x0009105d,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET scan_id",
            "creator": "GEMS_PETD_01"
          },
          "k4190": {
            "tag": 0x0009105e,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET exam_id",
            "creator": "GEMS_PETD_01"
          },
          "k4191": {
            "tag": 0x0009105f,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "PET patient_id",
            "creator": "GEMS_PETD_01"
          },
          "k4192": {
            "tag": 0x00091060,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET compatible_version",
            "creator": "GEMS_PETD_01"
          },
          "k4193": {
            "tag": 0x00091061,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET software_version",
            "creator": "GEMS_PETD_01"
          },
          "k4194": {
            "tag": 0x00091062,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET where_is_frame",
            "creator": "GEMS_PETD_01"
          },
          "k4195": {
            "tag": 0x00091063,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET frame_size",
            "creator": "GEMS_PETD_01"
          },
          "k4196": {
            "tag": 0x00091064,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET file_exists",
            "creator": "GEMS_PETD_01"
          },
          "k4197": {
            "tag": 0x00091065,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET patient_entry",
            "creator": "GEMS_PETD_01"
          },
          "k4198": {
            "tag": 0x00091066,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET table_height",
            "creator": "GEMS_PETD_01"
          },
          "k4199": {
            "tag": 0x00091067,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET table_z_position",
            "creator": "GEMS_PETD_01"
          },
          "k4200": {
            "tag": 0x00091068,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET landmark_datetime",
            "creator": "GEMS_PETD_01"
          },
          "k4201": {
            "tag": 0x00091069,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET slice_count",
            "creator": "GEMS_PETD_01"
          },
          "k4202": {
            "tag": 0x0009106a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET start_location",
            "creator": "GEMS_PETD_01"
          },
          "k4203": {
            "tag": 0x0009106b,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_delay",
            "creator": "GEMS_PETD_01"
          },
          "k4204": {
            "tag": 0x0009106c,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET acq_start",
            "creator": "GEMS_PETD_01"
          },
          "k4205": {
            "tag": 0x0009106d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_duration",
            "creator": "GEMS_PETD_01"
          },
          "k4206": {
            "tag": 0x0009106e,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_bin_dur",
            "creator": "GEMS_PETD_01"
          },
          "k4207": {
            "tag": 0x0009106f,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_bin_start",
            "creator": "GEMS_PETD_01"
          },
          "k4208": {
            "tag": 0x00091070,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET actual_stop_cond",
            "creator": "GEMS_PETD_01"
          },
          "k4209": {
            "tag": 0x00091071,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET total_prompts",
            "creator": "GEMS_PETD_01"
          },
          "k4210": {
            "tag": 0x00091072,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET total_delays",
            "creator": "GEMS_PETD_01"
          },
          "k4211": {
            "tag": 0x00091073,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET frame_valid",
            "creator": "GEMS_PETD_01"
          },
          "k4212": {
            "tag": 0x00091074,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET validity_info",
            "creator": "GEMS_PETD_01"
          },
          "k4213": {
            "tag": 0x00091075,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET archived",
            "creator": "GEMS_PETD_01"
          },
          "k4214": {
            "tag": 0x00091076,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET compression",
            "creator": "GEMS_PETD_01"
          },
          "k4215": {
            "tag": 0x00091077,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET uncompressed_size",
            "creator": "GEMS_PETD_01"
          },
          "k4216": {
            "tag": 0x00091078,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET accum_bin_dur",
            "creator": "GEMS_PETD_01"
          },
          "k4217": {
            "tag": 0x00091079,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET compatible_version",
            "creator": "GEMS_PETD_01"
          },
          "k4218": {
            "tag": 0x0009107a,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET software_version",
            "creator": "GEMS_PETD_01"
          },
          "k4219": {
            "tag": 0x0009107b,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET is_datetime",
            "creator": "GEMS_PETD_01"
          },
          "k4220": {
            "tag": 0x0009107c,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET is_source",
            "creator": "GEMS_PETD_01"
          },
          "k4221": {
            "tag": 0x0009107d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET is_contents",
            "creator": "GEMS_PETD_01"
          },
          "k4222": {
            "tag": 0x0009107e,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET is_type",
            "creator": "GEMS_PETD_01"
          },
          "k4223": {
            "tag": 0x0009107f,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET is_reference",
            "creator": "GEMS_PETD_01"
          },
          "k4224": {
            "tag": 0x00091080,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET multi_patient",
            "creator": "GEMS_PETD_01"
          },
          "k4225": {
            "tag": 0x00091081,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET number_of_normals",
            "creator": "GEMS_PETD_01"
          },
          "k4226": {
            "tag": 0x00091082,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET color_map_id",
            "creator": "GEMS_PETD_01"
          },
          "k4227": {
            "tag": 0x00091083,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET window_level_type",
            "creator": "GEMS_PETD_01"
          },
          "k4228": {
            "tag": 0x00091084,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET rotate",
            "creator": "GEMS_PETD_01"
          },
          "k4229": {
            "tag": 0x00091085,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET flip",
            "creator": "GEMS_PETD_01"
          },
          "k4230": {
            "tag": 0x00091086,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET zoom",
            "creator": "GEMS_PETD_01"
          },
          "k4231": {
            "tag": 0x00091087,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET pan_x",
            "creator": "GEMS_PETD_01"
          },
          "k4232": {
            "tag": 0x00091088,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET pan_y",
            "creator": "GEMS_PETD_01"
          },
          "k4233": {
            "tag": 0x00091089,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET window_level_min",
            "creator": "GEMS_PETD_01"
          },
          "k4234": {
            "tag": 0x0009108a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET window_level_max",
            "creator": "GEMS_PETD_01"
          },
          "k4235": {
            "tag": 0x0009108b,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET recon_method",
            "creator": "GEMS_PETD_01"
          },
          "k4236": {
            "tag": 0x0009108c,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET attenuation",
            "creator": "GEMS_PETD_01"
          },
          "k4237": {
            "tag": 0x0009108d,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET atten_coefficient",
            "creator": "GEMS_PETD_01"
          },
          "k4238": {
            "tag": 0x0009108e,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_filter",
            "creator": "GEMS_PETD_01"
          },
          "k4239": {
            "tag": 0x0009108f,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_filter_cutoff",
            "creator": "GEMS_PETD_01"
          },
          "k4240": {
            "tag": 0x00091090,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_filter_order",
            "creator": "GEMS_PETD_01"
          },
          "k4241": {
            "tag": 0x00091091,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_center_l",
            "creator": "GEMS_PETD_01"
          },
          "k4242": {
            "tag": 0x00091092,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_center_p",
            "creator": "GEMS_PETD_01"
          },
          "k4243": {
            "tag": 0x00091093,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET atten_smooth",
            "creator": "GEMS_PETD_01"
          },
          "k4244": {
            "tag": 0x00091094,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET atten_smooth_param",
            "creator": "GEMS_PETD_01"
          },
          "k4245": {
            "tag": 0x00091095,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET angle_smooth_param",
            "creator": "GEMS_PETD_01"
          },
          "k4246": {
            "tag": 0x00091096,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET wellcountercal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4247": {
            "tag": 0x00091097,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET trans_scan_id",
            "creator": "GEMS_PETD_01"
          },
          "k4248": {
            "tag": 0x00091098,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET norm_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4249": {
            "tag": 0x00091099,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET blnk_cal_id",
            "creator": "GEMS_PETD_01"
          },
          "k4250": {
            "tag": 0x0009109a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET cac_edge_threshold",
            "creator": "GEMS_PETD_01"
          },
          "k4251": {
            "tag": 0x0009109b,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET cac_skull_offset",
            "creator": "GEMS_PETD_01"
          },
          "k4252": {
            "tag": 0x0009109c,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET emiss_sub_id",
            "creator": "GEMS_PETD_01"
          },
          "k4253": {
            "tag": 0x0009109d,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET radial_filter_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4254": {
            "tag": 0x0009109e,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET radial_cutoff_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4255": {
            "tag": 0x0009109f,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_filter_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4256": {
            "tag": 0x000910a0,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_cutoff_3d",
            "creator": "GEMS_PETD_01"
          },
          "k4257": {
            "tag": 0x000910a1,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_start",
            "creator": "GEMS_PETD_01"
          },
          "k4258": {
            "tag": 0x000910a2,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_spacing",
            "creator": "GEMS_PETD_01"
          },
          "k4259": {
            "tag": 0x000910a3,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET axial_angles_used",
            "creator": "GEMS_PETD_01"
          },
          "k4260": {
            "tag": 0x000910a4,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET compatible_version",
            "creator": "GEMS_PETD_01"
          },
          "k4261": {
            "tag": 0x000910a5,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET software_version",
            "creator": "GEMS_PETD_01"
          },
          "k4262": {
            "tag": 0x000910a6,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET slice_number",
            "creator": "GEMS_PETD_01"
          },
          "k4263": {
            "tag": 0x000910a7,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET total_counts",
            "creator": "GEMS_PETD_01"
          },
          "k4264": {
            "tag": 0x000910a8,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "PET other_atts",
            "creator": "GEMS_PETD_01"
          },
          "k4265": {
            "tag": 0x000910a9,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET other_atts_size",
            "creator": "GEMS_PETD_01"
          },
          "k4266": {
            "tag": 0x000910aa,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET archived",
            "creator": "GEMS_PETD_01"
          },
          "k4267": {
            "tag": 0x000910ab,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_center_x",
            "creator": "GEMS_PETD_01"
          },
          "k4268": {
            "tag": 0x000910ac,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET bp_center_y",
            "creator": "GEMS_PETD_01"
          },
          "k4269": {
            "tag": 0x000910ad,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET trans_frame_id",
            "creator": "GEMS_PETD_01"
          },
          "k4270": {
            "tag": 0x000910ae,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET tpluse_frame_id",
            "creator": "GEMS_PETD_01"
          },
          "k4273": {
            "tag": 0x000910b1,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET profile_spacing",
            "creator": "GEMS_PETD_01"
          },
          "k4274": {
            "tag": 0x000910b2,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_num_iterations",
            "creator": "GEMS_PETD_01"
          },
          "k4275": {
            "tag": 0x000910b3,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_num_subsets",
            "creator": "GEMS_PETD_01"
          },
          "k4276": {
            "tag": 0x000910b4,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_recon_fov",
            "creator": "GEMS_PETD_01"
          },
          "k4277": {
            "tag": 0x000910b5,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_corr_model",
            "creator": "GEMS_PETD_01"
          },
          "k4278": {
            "tag": 0x000910b6,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_loop_filter",
            "creator": "GEMS_PETD_01"
          },
          "k4279": {
            "tag": 0x000910b7,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_pre_filt_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4280": {
            "tag": 0x000910b8,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_loop_filt_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4281": {
            "tag": 0x000910b9,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET response_filt_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4282": {
            "tag": 0x000910ba,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET post_filter",
            "creator": "GEMS_PETD_01"
          },
          "k4283": {
            "tag": 0x000910bb,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET post_filt_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4284": {
            "tag": 0x000910bc,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_regularize",
            "creator": "GEMS_PETD_01"
          },
          "k4285": {
            "tag": 0x000910bd,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET regularize_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4286": {
            "tag": 0x000910be,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ac_bp_filter",
            "creator": "GEMS_PETD_01"
          },
          "k4287": {
            "tag": 0x000910bf,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ac_bp_filt_cut_off",
            "creator": "GEMS_PETD_01"
          },
          "k4288": {
            "tag": 0x000910c0,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ac_bp_filt_order",
            "creator": "GEMS_PETD_01"
          },
          "k4289": {
            "tag": 0x000910c1,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ac_img_smooth",
            "creator": "GEMS_PETD_01"
          },
          "k4290": {
            "tag": 0x000910c2,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ac_img_smooth_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4291": {
            "tag": 0x000910c3,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET scatter_method",
            "creator": "GEMS_PETD_01"
          },
          "k4292": {
            "tag": 0x000910c4,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET scatter_num_iter",
            "creator": "GEMS_PETD_01"
          },
          "k4293": {
            "tag": 0x000910c5,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET scatter_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4294": {
            "tag": 0x000910c6,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET seg_qc_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4295": {
            "tag": 0x000910c7,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET overlap",
            "creator": "GEMS_PETD_01"
          },
          "k4296": {
            "tag": 0x000910c8,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET ovlp_frm_id",
            "creator": "GEMS_PETD_01"
          },
          "k4297": {
            "tag": 0x000910c9,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET ovlp_trans_frm_id",
            "creator": "GEMS_PETD_01"
          },
          "k4298": {
            "tag": 0x000910ca,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET ovlp_tpulse_frm_id",
            "creator": "GEMS_PETD_01"
          },
          "k4299": {
            "tag": 0x000910cb,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_x_axis_trans",
            "creator": "GEMS_PETD_01"
          },
          "k4300": {
            "tag": 0x000910cc,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_x_axis_tilt",
            "creator": "GEMS_PETD_01"
          },
          "k4301": {
            "tag": 0x000910cd,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_y_axis_trans",
            "creator": "GEMS_PETD_01"
          },
          "k4302": {
            "tag": 0x000910ce,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_y_axis_swivel",
            "creator": "GEMS_PETD_01"
          },
          "k4303": {
            "tag": 0x000910cf,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_z_axis_trans",
            "creator": "GEMS_PETD_01"
          },
          "k4304": {
            "tag": 0x000910d0,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET vqc_z_axis_roll",
            "creator": "GEMS_PETD_01"
          },
          "k4305": {
            "tag": 0x000910d1,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET ctac_conv_scale",
            "creator": "GEMS_PETD_01"
          },
          "k4306": {
            "tag": 0x000910d2,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET image_set_id",
            "creator": "GEMS_PETD_01"
          },
          "k4307": {
            "tag": 0x000910d3,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET constrast_route",
            "creator": "GEMS_PETD_01"
          },
          "k4308": {
            "tag": 0x000910d4,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET ctac_conv_scale",
            "creator": "GEMS_PETD_01"
          },
          "k4309": {
            "tag": 0x000910d5,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET loop_filter_parm",
            "creator": "GEMS_PETD_01"
          },
          "k4310": {
            "tag": 0x000910d6,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET image_one_loc",
            "creator": "GEMS_PETD_01"
          },
          "k4311": {
            "tag": 0x000910d7,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET image_index_loc",
            "creator": "GEMS_PETD_01"
          },
          "k4312": {
            "tag": 0x000910d8,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET frame_number",
            "creator": "GEMS_PETD_01"
          },
          "k4313": {
            "tag": 0x000910d9,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET list_file_exists",
            "creator": "GEMS_PETD_01"
          },
          "k4314": {
            "tag": 0x000910da,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET where_is_list_frame",
            "creator": "GEMS_PETD_01"
          },
          "k4315": {
            "tag": 0x000910db,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_z_filter_flag",
            "creator": "GEMS_PETD_01"
          },
          "k4316": {
            "tag": 0x000910dc,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET ir_z_filter_ratio",
            "creator": "GEMS_PETD_01"
          },
          "k4317": {
            "tag": 0x000910dd,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET num_of_rr_interval",
            "creator": "GEMS_PETD_01"
          },
          "k4318": {
            "tag": 0x000910de,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET num_of_time_slots",
            "creator": "GEMS_PETD_01"
          },
          "k4319": {
            "tag": 0x000910df,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET num_of_slices",
            "creator": "GEMS_PETD_01"
          },
          "k4320": {
            "tag": 0x000910e0,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET num_of_time_slices",
            "creator": "GEMS_PETD_01"
          },
          "k4321": {
            "tag": 0x000910e1,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET unlisted_scan",
            "creator": "GEMS_PETD_01"
          },
          "k4322": {
            "tag": 0x000910e2,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET rest_stress",
            "creator": "GEMS_PETD_01"
          },
          "k4323": {
            "tag": 0x000910e3,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET phase percentage",
            "creator": "GEMS_PETD_01"
          },
          "k4324": {
            "tag": 0x000910e4,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Recon Protocol",
            "creator": "GEMS_PETD_01"
          },
          "k4325": {
            "tag": 0x000910e5,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET left shift",
            "creator": "GEMS_PETD_01"
          },
          "k4326": {
            "tag": 0x000910e6,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET posterior shift",
            "creator": "GEMS_PETD_01"
          },
          "k4327": {
            "tag": 0x000910e7,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET superior shift",
            "creator": "GEMS_PETD_01"
          },
          "k4328": {
            "tag": 0x000910e8,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_bin_num",
            "creator": "GEMS_PETD_01"
          },
          "k4329": {
            "tag": 0x000910e9,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET acq_bin_dur_percent",
            "creator": "GEMS_PETD_01"
          },
          "k4330": {
            "tag": 0x000910ea,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "3D Filter flag",
            "creator": "GEMS_PETD_01"
          },
          "k4331": {
            "tag": 0x000910eb,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "3D Filter cutoff",
            "creator": "GEMS_PETD_01"
          },
          "k4332": {
            "tag": 0x000910ec,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "3D Filter order",
            "creator": "GEMS_PETD_01"
          },
          "k4336": {
            "tag": 0x000910f0,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Reformat group",
            "creator": "GEMS_PETD_01"
          },
          "k4337": {
            "tag": 0x000910f1,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PET prompt gamma",
            "creator": "GEMS_PETD_01"
          },
          "k4338": {
            "tag": 0x000910f2,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PET tracerInjection_UID",
            "creator": "GEMS_PETD_01"
          },
          "k16": {
            "tag": 0x00230010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GEHC Private Creator ID",
            "creator": "GEMS_PETD_01"
          },
        }
      }
    }
  },
  "Hitachi": {
    "groups": {
      0x0009: {
        "name": "k0010",
        "manufacturerId": "Hitachi",
        "modality": Modality.MR,
        "creator": {
          "tag": 0x00090010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Private Creator",
          "creator": "MMCPrivate"
        },
        "elements": {
          "k4097": {
            "tag": 0x00711001,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ForegroundTransparency",
            "creator": "MMCPrivate"
          },
          "k4098": {
            "tag": 0x00711002,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IsDisplayBackgroundImage",
            "creator": "MMCPrivate"
          },
          "k4099": {
            "tag": 0x00711003,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ForegroundHorizontalShift",
            "creator": "MMCPrivate"
          },
          "k4100": {
            "tag": 0x00711004,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ForegroundVerticalShift",
            "creator": "MMCPrivate"
          },
          "k4101": {
            "tag": 0x00711005,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ForegroundRotationAngle",
            "creator": "MMCPrivate"
          },
          "k4102": {
            "tag": 0x00711006,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ForegroundMagnification",
            "creator": "MMCPrivate"
          },
          "k4103": {
            "tag": 0x00711007,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ApplicationData",
            "creator": "MMCPrivate"
          },
          "k4104": {
            "tag": 0x00411008,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SliceEncodeNumber",
            "creator": "MMCPrivate"
          },
          "k4105": {
            "tag": 0x00411009,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NsaNumber",
            "creator": "MMCPrivate"
          },
          "k4106": {
            "tag": 0x0041100a,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RawData",
            "creator": "MMCPrivate"
          },
          "k4107": {
            "tag": 0x0041100b,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RawDataMRInfo",
            "creator": "MMCPrivate"
          },
          "k4108": {
            "tag": 0x0041100c,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NumberOfVoxels",
            "creator": "MMCPrivate"
          },
          "k4109": {
            "tag": 0x0041100d,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MixingTime",
            "creator": "MMCPrivate"
          },
          "k4110": {
            "tag": 0x0041100e,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ADDiff",
            "creator": "MMCPrivate"
          },
          "k4111": {
            "tag": 0x0041100f,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ScanTime",
            "creator": "MMCPrivate"
          },
          "k4112": {
            "tag": 0x00411010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NumPreSat",
            "creator": "MMCPrivate"
          },
          "k4113": {
            "tag": 0x00411011,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "IsStoredToPortableMedia",
            "creator": "MMCPrivate"
          },
          "k4114": {
            "tag": 0x00411012,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Voi1",
            "creator": "MMCPrivate"
          },
          "k4115": {
            "tag": 0x00411013,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Voi2",
            "creator": "MMCPrivate"
          },
          "k4116": {
            "tag": 0x00411014,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VoxelSize",
            "creator": "MMCPrivate"
          },
          "k4117": {
            "tag": 0x00411015,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FreqPoint",
            "creator": "MMCPrivate"
          },
          "k4118": {
            "tag": 0x00411016,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LowOrderShim",
            "creator": "MMCPrivate"
          },
          "k4119": {
            "tag": 0x00411017,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "EccLevel",
            "creator": "MMCPrivate"
          },
          "k4120": {
            "tag": 0x00411018,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FwhmHz",
            "creator": "MMCPrivate"
          },
          "k4121": {
            "tag": 0x00411019,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FwhmPpm",
            "creator": "MMCPrivate"
          },
          "k4122": {
            "tag": 0x0041101a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "WaterSupRate",
            "creator": "MMCPrivate"
          },
          "k4123": {
            "tag": 0x0009101b,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "IsDefault",
            "creator": "MMCPrivate"
          },
          "k4124": {
            "tag": 0x0029101c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IsScalableWindowLevel",
            "creator": "MMCPrivate"
          },
          "k4125": {
            "tag": 0x0029101d,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ThreeDSettingLineAngle",
            "creator": "MMCPrivate"
          },
          "k4126": {
            "tag": 0x0029101e,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MPGTotalAxis",
            "creator": "MMCPrivate"
          },
          "k4127": {
            "tag": 0x0029101f,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MPGAxisNumber",
            "creator": "MMCPrivate"
          },
          "k4128": {
            "tag": 0x00291020,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MultiEchoNumber",
            "creator": "MMCPrivate"
          },
          "k4129": {
            "tag": 0x00291021,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviAverageGateWidth",
            "creator": "MMCPrivate"
          },
          "k4130": {
            "tag": 0x00291022,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ShimCompensateValue",
            "creator": "MMCPrivate"
          },
          "k4131": {
            "tag": 0x00291023,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GCOffset",
            "creator": "MMCPrivate"
          },
          "k4132": {
            "tag": 0x00291024,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviMaxGateWidth",
            "creator": "MMCPrivate"
          },
          "k4133": {
            "tag": 0x00291025,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviMinGateWidth",
            "creator": "MMCPrivate"
          },
          "k4134": {
            "tag": 0x00291026,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviMaxGatePosition",
            "creator": "MMCPrivate"
          },
          "k4135": {
            "tag": 0x00291027,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviMinGatePosition",
            "creator": "MMCPrivate"
          },
          "k4136": {
            "tag": 0x00291028,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TimeDuration",
            "creator": "MMCPrivate"
          },
          "k4137": {
            "tag": 0x00291029,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TablePosition",
            "creator": "MMCPrivate"
          },
          "k4138": {
            "tag": 0x0029102a,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviInitialGateWidth",
            "creator": "MMCPrivate"
          },
          "k4139": {
            "tag": 0x0029102b,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviFinalGateWidth",
            "creator": "MMCPrivate"
          },
          "k4140": {
            "tag": 0x0029102c,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviInitialGatePosition",
            "creator": "MMCPrivate"
          },
          "k4141": {
            "tag": 0x0029102d,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviFinalGatePosition",
            "creator": "MMCPrivate"
          },
          "k4142": {
            "tag": 0x0029102e,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NaviAverageGatePosition",
            "creator": "MMCPrivate"
          },
          "k4143": {
            "tag": 0x0029102f,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "ImageAppData",
            "creator": "MMCPrivate"
          },
          "k4144": {
            "tag": 0x00291030,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "DiffusionBValue",
            "creator": "MMCPrivate"
          },
          "k4145": {
            "tag": 0x00291031,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SharedFunctionalGroupsSequence",
            "creator": "MMCPrivate"
          },
          "k4146": {
            "tag": 0x00291032,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PerFrameFunctionalGroupsSequence",
            "creator": "MMCPrivate"
          },
          "k4147": {
            "tag": 0x00291033,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LossyImageCompressionRatio",
            "creator": "MMCPrivate"
          },
          "k4148": {
            "tag": 0x00291034,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "InstanceCreatorUID",
            "creator": "MMCPrivate"
          },
          "k4149": {
            "tag": 0x00291035,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RelatedGeneralSOPClassUID",
            "creator": "MMCPrivate"
          },
          "k4150": {
            "tag": 0x00291036,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "OriginalSpecializedSOPClassUID",
            "creator": "MMCPrivate"
          },
          "k4151": {
            "tag": 0x00291037,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "TimezoneOffsetFromUTC",
            "creator": "MMCPrivate"
          },
          "k4152": {
            "tag": 0x00291038,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SOPInstanceStatus",
            "creator": "MMCPrivate"
          },
          "k4153": {
            "tag": 0x00291039,
            "vr": VR.kDT,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SOPAuthorizationDateandTime",
            "creator": "MMCPrivate"
          },
          "k4154": {
            "tag": 0x0029103a,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SOPAuthorizationComment",
            "creator": "MMCPrivate"
          },
          "k4155": {
            "tag": 0x0029103b,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "AuthorizationEquipmentCertificationNumber",
            "creator": "MMCPrivate"
          },
          "k4156": {
            "tag": 0x0029103c,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ConcatenationFrameOffsetNumber",
            "creator": "MMCPrivate"
          },
          "k4157": {
            "tag": 0x0029103d,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RepresentativeFrameNumber",
            "creator": "MMCPrivate"
          },
          "k4158": {
            "tag": 0x0029103e,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "ConcatenationUID",
            "creator": "MMCPrivate"
          },
          "k4159": {
            "tag": 0x0029103f,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "InConcatenationNumber",
            "creator": "MMCPrivate"
          },
          "k4160": {
            "tag": 0x00291040,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CardiacSynchronizationTechnique",
            "creator": "MMCPrivate"
          },
          "k4161": {
            "tag": 0x00291041,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CardiacSignalSource",
            "creator": "MMCPrivate"
          },
          "k4162": {
            "tag": 0x00291042,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CardiacRRIntervalSpecified",
            "creator": "MMCPrivate"
          },
          "k4163": {
            "tag": 0x00291043,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CardiacBeatRejectionTechnique",
            "creator": "MMCPrivate"
          },
          "k4164": {
            "tag": 0x00291044,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LowRRValue",
            "creator": "MMCPrivate"
          },
          "k4165": {
            "tag": 0x00291045,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "HighRRValue",
            "creator": "MMCPrivate"
          },
          "k4166": {
            "tag": 0x00291046,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IntervalsAcquired",
            "creator": "MMCPrivate"
          },
          "k4167": {
            "tag": 0x00291047,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IntervalsRejected",
            "creator": "MMCPrivate"
          },
          "k4168": {
            "tag": 0x00291048,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RespiratoryMotionCompensationTechnique",
            "creator": "MMCPrivate"
          },
          "k4174": {
            "tag": 0x0029104e,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VolumeBasedCalculationTechnique",
            "creator": "MMCPrivate"
          },
          "k4175": {
            "tag": 0x0029104f,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "AcquisitionContextDescription",
            "creator": "MMCPrivate"
          },
          "k4191": {
            "tag": 0x0029105f,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TriggerDelayTime",
            "creator": "MMCPrivate"
          },
          "k4192": {
            "tag": 0x00291060,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FrameVOILUTSequence",
            "creator": "MMCPrivate"
          },
          "k4210": {
            "tag": 0x00291072,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ReceiveCoilType",
            "creator": "MMCPrivate"
          },
          "k4211": {
            "tag": 0x00291073,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QuadratureReceiveCoil",
            "creator": "MMCPrivate"
          },
          "k4212": {
            "tag": 0x00291074,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MultiCoilConfiguration",
            "creator": "MMCPrivate"
          },
          "k4213": {
            "tag": 0x00291075,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ComplexImageComponent",
            "creator": "MMCPrivate"
          },
          "k4214": {
            "tag": 0x00291076,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PulseSequenceName",
            "creator": "MMCPrivate"
          },
          "k4215": {
            "tag": 0x00291077,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "EchoPulseSequence",
            "creator": "MMCPrivate"
          },
          "k16": {
            "tag": 0x00710010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Private Creator",
            "creator": "MMCPrivate"
          },
          "k4169": {
            "tag": 0x00291049,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RespiratorySignalSource",
            "creator": "MMCPrivate"
          },
          "k4170": {
            "tag": 0x0029104a,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BulkMotionCompensationTechnique",
            "creator": "MMCPrivate"
          },
          "k4171": {
            "tag": 0x0029104b,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BulkMotionSignalSource",
            "creator": "MMCPrivate"
          },
          "k4172": {
            "tag": 0x0029104c,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelPresentation",
            "creator": "MMCPrivate"
          },
          "k4173": {
            "tag": 0x0029104d,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VolumetricProperties",
            "creator": "MMCPrivate"
          },
          "k4176": {
            "tag": 0x00291050,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ModalityLUTSequence",
            "creator": "MMCPrivate"
          },
          "k4177": {
            "tag": 0x00291051,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LUTDescriptor",
            "creator": "MMCPrivate"
          },
          "k4178": {
            "tag": 0x00291052,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LUTExplanation",
            "creator": "MMCPrivate"
          },
          "k4179": {
            "tag": 0x00291053,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LUTData",
            "creator": "MMCPrivate"
          },
          "k4180": {
            "tag": 0x00291054,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PresentationLUTShape",
            "creator": "MMCPrivate"
          },
          "k4181": {
            "tag": 0x00291055,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FrameAnatomySequence",
            "creator": "MMCPrivate"
          },
          "k4182": {
            "tag": 0x00291056,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FrameLaterality",
            "creator": "MMCPrivate"
          },
          "k4183": {
            "tag": 0x00291057,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AnatomicRegionSequence",
            "creator": "MMCPrivate"
          },
          "k4184": {
            "tag": 0x00291058,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AnatomicRegionCodeValue",
            "creator": "MMCPrivate"
          },
          "k4185": {
            "tag": 0x00291059,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AnatomicRegionCodingSchemeDesignator",
            "creator": "MMCPrivate"
          },
          "k4186": {
            "tag": 0x0029105a,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AnatomicRegionCodingSchemeVersion",
            "creator": "MMCPrivate"
          },
          "k4187": {
            "tag": 0x0029105b,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AnatomicRegionCodeMeaning",
            "creator": "MMCPrivate"
          },
          "k4188": {
            "tag": 0x0029105c,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelValueTransformationSequence",
            "creator": "MMCPrivate"
          },
          "k4189": {
            "tag": 0x0029105d,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RescaleType",
            "creator": "MMCPrivate"
          },
          "k4190": {
            "tag": 0x0029105e,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CardiacTriggerSequence",
            "creator": "MMCPrivate"
          },
          "k4193": {
            "tag": 0x00291061,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "WindowCenterAndWidthExplanation",
            "creator": "MMCPrivate"
          },
          "k4194": {
            "tag": 0x00291062,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AcquisitionContrast",
            "creator": "MMCPrivate"
          },
          "k4195": {
            "tag": 0x00291063,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRModifierSequence",
            "creator": "MMCPrivate"
          },
          "k4196": {
            "tag": 0x00291064,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ParallelAcquisitionTechnic",
            "creator": "MMCPrivate"
          },
          "k4197": {
            "tag": 0x00291065,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ParallelReductionFactorSecIn",
            "creator": "MMCPrivate"
          },
          "k4198": {
            "tag": 0x00291066,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "InversionRecovery",
            "creator": "MMCPrivate"
          },
          "k4199": {
            "tag": 0x00291067,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FlowCompensation",
            "creator": "MMCPrivate"
          },
          "k4200": {
            "tag": 0x00291068,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FlowCompensationDirection",
            "creator": "MMCPrivate"
          },
          "k4201": {
            "tag": 0x00291069,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SpatialPreSaturation",
            "creator": "MMCPrivate"
          },
          "k4202": {
            "tag": 0x0029106a,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PartialFourier",
            "creator": "MMCPrivate"
          },
          "k4203": {
            "tag": 0x0029106b,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PartialFourierDirection",
            "creator": "MMCPrivate"
          },
          "k4204": {
            "tag": 0x0029106c,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ResonantNucleus",
            "creator": "MMCPrivate"
          },
          "k4205": {
            "tag": 0x0029106d,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "KSpaceFiltering",
            "creator": "MMCPrivate"
          },
          "k4206": {
            "tag": 0x0029106e,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ApplicableSafetyStandardAgency",
            "creator": "MMCPrivate"
          },
          "k4207": {
            "tag": 0x0029106f,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ApplicableSafetyStandardDescription",
            "creator": "MMCPrivate"
          },
          "k4208": {
            "tag": 0x00291070,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRReceiveCoilSequence",
            "creator": "MMCPrivate"
          },
          "k4209": {
            "tag": 0x00291071,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ReceiveCoilManufacturerName",
            "creator": "MMCPrivate"
          },
          "k4216": {
            "tag": 0x00291078,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MultipleSpinEcho",
            "creator": "MMCPrivate"
          },
          "k4217": {
            "tag": 0x00291079,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MultiPlanarExcitation",
            "creator": "MMCPrivate"
          },
          "k4218": {
            "tag": 0x0029107a,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PhaseContrast",
            "creator": "MMCPrivate"
          },
          "k4219": {
            "tag": 0x0029107b,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TimeOfFlightContrast",
            "creator": "MMCPrivate"
          },
          "k4220": {
            "tag": 0x0029107c,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SteadyStatePulseSequence",
            "creator": "MMCPrivate"
          },
          "k4221": {
            "tag": 0x0029107d,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "EchoPlanarPulseSequence",
            "creator": "MMCPrivate"
          },
          "k4222": {
            "tag": 0x0029107e,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SpectrallySelectedSuppression",
            "creator": "MMCPrivate"
          },
          "k4223": {
            "tag": 0x0029107f,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "OversamplingPhase",
            "creator": "MMCPrivate"
          },
          "k4224": {
            "tag": 0x00291080,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SegmentedKSpaceTraversal",
            "creator": "MMCPrivate"
          },
          "k4225": {
            "tag": 0x00291081,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CoverageOfKSpace",
            "creator": "MMCPrivate"
          },
          "k4226": {
            "tag": 0x00291082,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRTimingAndRelatedParametersSequence",
            "creator": "MMCPrivate"
          },
          "k4227": {
            "tag": 0x00291083,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RFEchoTrainLength",
            "creator": "MMCPrivate"
          },
          "k4228": {
            "tag": 0x00291084,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GradientEchoTrainLength",
            "creator": "MMCPrivate"
          },
          "k4229": {
            "tag": 0x00291085,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GradientOutputType",
            "creator": "MMCPrivate"
          },
          "k4230": {
            "tag": 0x00291086,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GradientOutput",
            "creator": "MMCPrivate"
          },
          "k4231": {
            "tag": 0x00291087,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRFOVGeometrySequence",
            "creator": "MMCPrivate"
          },
          "k4232": {
            "tag": 0x00291088,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRAcquisitionFrequencyEncodingSteps",
            "creator": "MMCPrivate"
          },
          "k4233": {
            "tag": 0x00291089,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRAcquisitionPhaseEncodingStepsInPlane",
            "creator": "MMCPrivate"
          },
          "k4234": {
            "tag": 0x0029108a,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRAcquisitionPhaseEncodingStepsOutOfPlane",
            "creator": "MMCPrivate"
          },
          "k4235": {
            "tag": 0x0029108b,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRTransmitCoilSequence",
            "creator": "MMCPrivate"
          },
          "k4236": {
            "tag": 0x0029108c,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TransmitCoilName",
            "creator": "MMCPrivate"
          },
          "k4237": {
            "tag": 0x0029108d,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TransmitCoilManufacturerName",
            "creator": "MMCPrivate"
          },
          "k4238": {
            "tag": 0x0029108e,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TransmitCoilType",
            "creator": "MMCPrivate"
          },
          "k4239": {
            "tag": 0x0029108f,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MREchoSequence",
            "creator": "MMCPrivate"
          },
          "k4240": {
            "tag": 0x00291090,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "EffectiveEchoTime",
            "creator": "MMCPrivate"
          },
          "k4241": {
            "tag": 0x00291091,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRMetaboliteMapSequence",
            "creator": "MMCPrivate"
          },
          "k4242": {
            "tag": 0x00291092,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapDescription",
            "creator": "MMCPrivate"
          },
          "k4243": {
            "tag": 0x00291093,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapCodeSequence",
            "creator": "MMCPrivate"
          },
          "k4244": {
            "tag": 0x00291094,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapCodeValue",
            "creator": "MMCPrivate"
          },
          "k4245": {
            "tag": 0x00291095,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapCodingSchemeDesignator",
            "creator": "MMCPrivate"
          },
          "k4246": {
            "tag": 0x00291096,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapCodingSchemeVersion",
            "creator": "MMCPrivate"
          },
          "k4247": {
            "tag": 0x00291097,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapCodeMeaning",
            "creator": "MMCPrivate"
          },
          "k4248": {
            "tag": 0x00291098,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRImagingModifierSequence",
            "creator": "MMCPrivate"
          },
          "k4249": {
            "tag": 0x00291099,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MagnetizationTransfer",
            "creator": "MMCPrivate"
          },
          "k4250": {
            "tag": 0x0029109a,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BloodSignalNulling",
            "creator": "MMCPrivate"
          },
          "k4251": {
            "tag": 0x0029109b,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Tagging",
            "creator": "MMCPrivate"
          },
          "k4252": {
            "tag": 0x0029109c,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TagSpacingFirstDimension",
            "creator": "MMCPrivate"
          },
          "k4253": {
            "tag": 0x0029109d,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TagSpacingSecondDimension",
            "creator": "MMCPrivate"
          },
          "k4254": {
            "tag": 0x0029109e,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TagAngleFirstAxis",
            "creator": "MMCPrivate"
          },
          "k4255": {
            "tag": 0x0029109f,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TagAngleSecondAxis",
            "creator": "MMCPrivate"
          },
          "k4256": {
            "tag": 0x002910a0,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TagThickness",
            "creator": "MMCPrivate"
          },
          "k4257": {
            "tag": 0x002910a1,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TaggingDelay",
            "creator": "MMCPrivate"
          },
          "k4258": {
            "tag": 0x002910a2,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "TransmitterFrequency",
            "creator": "MMCPrivate"
          },
          "k4259": {
            "tag": 0x002910a3,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelBandwidth",
            "creator": "MMCPrivate"
          },
          "k4260": {
            "tag": 0x002910a4,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRVelocityEncodingSequence",
            "creator": "MMCPrivate"
          },
          "k4261": {
            "tag": 0x002910a5,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VelocityEncodingDirection",
            "creator": "MMCPrivate"
          },
          "k4262": {
            "tag": 0x002910a6,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VelocityEncodingMinimumValue",
            "creator": "MMCPrivate"
          },
          "k4263": {
            "tag": 0x002910a7,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VelocityEncodingMaximumValue",
            "creator": "MMCPrivate"
          },
          "k4264": {
            "tag": 0x002910a8,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MRImageFrameTypeSequence",
            "creator": "MMCPrivate"
          },
          "k4265": {
            "tag": 0x002910a9,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FrameType",
            "creator": "MMCPrivate"
          },
          "k4266": {
            "tag": 0x002910aa,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelPresentation",
            "creator": "MMCPrivate"
          },
          "k4267": {
            "tag": 0x002910ab,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VolumetricProperties",
            "creator": "MMCPrivate"
          },
          "k4268": {
            "tag": 0x002910ac,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VolumeBasedCalculationTechnique",
            "creator": "MMCPrivate"
          },
          "k4285": {
            "tag": 0x002910bd,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BackgroundImageInstanceUID",
            "creator": "MMCPrivate"
          },
          "k4286": {
            "tag": 0x002910be,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "IsStoredToPortableMedia",
            "creator": "MMCPrivate"
          },
          "k4287": {
            "tag": 0x002910bf,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Voi1",
            "creator": "MMCPrivate"
          },
          "k4289": {
            "tag": 0x002910c1,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Voi2",
            "creator": "MMCPrivate"
          },
          "k4290": {
            "tag": 0x002910c2,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MixingTime",
            "creator": "MMCPrivate"
          },
          "k4291": {
            "tag": 0x002910c3,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SelectiveIRPosition",
            "creator": "MMCPrivate"
          },
          "k4292": {
            "tag": 0x002910c4,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SelectiveIRRow",
            "creator": "MMCPrivate"
          },
          "k4293": {
            "tag": 0x002910c5,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SelectiveIRColumn",
            "creator": "MMCPrivate"
          },
          "k4294": {
            "tag": 0x002910c6,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SelectiveIROrientation",
            "creator": "MMCPrivate"
          },
          "k4295": {
            "tag": 0x002910c7,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SelectiveIRThickness",
            "creator": "MMCPrivate"
          },
          "k4296": {
            "tag": 0x002910c8,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RephaseOrderSlice",
            "creator": "MMCPrivate"
          },
          "k4297": {
            "tag": 0x002910c9,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RephaseOrderPhase",
            "creator": "MMCPrivate"
          },
          "k4298": {
            "tag": 0x002910ca,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "RephaseOrderFreq",
            "creator": "MMCPrivate"
          },
          "k4299": {
            "tag": 0x002910cb,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MetaboliteMapDescription",
            "creator": "MMCPrivate"
          },
          "k4300": {
            "tag": 0x002910cc,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "volumeLocalizationSeq",
            "creator": "MMCPrivate"
          },
          "k4301": {
            "tag": 0x002910cd,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SlabThickness",
            "creator": "MMCPrivate"
          },
          "k4302": {
            "tag": 0x002910ce,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SlabOrientation",
            "creator": "MMCPrivate"
          },
          "k4303": {
            "tag": 0x002910cf,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MidSlabPosition",
            "creator": "MMCPrivate"
          },
          "k4304": {
            "tag": 0x002910d0,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AcqModeSliceDir",
            "creator": "MMCPrivate"
          },
          "k4305": {
            "tag": 0x002910d1,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "IRThicknessRatio",
            "creator": "MMCPrivate"
          },
          "k4306": {
            "tag": 0x002910d2,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "BBIRThicknessRatio",
            "creator": "MMCPrivate"
          },
          "k4307": {
            "tag": 0x002910d3,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "DeltaAngle",
            "creator": "MMCPrivate"
          },
          "k4308": {
            "tag": 0x002910d4,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MultiFrameFrameNumber",
            "creator": "MMCPrivate"
          },
          "k4309": {
            "tag": 0x002910d5,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "EnhancedSopInstanceUid",
            "creator": "MMCPrivate"
          },
          "k4310": {
            "tag": 0x002910d6,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PolarityOfPhaseEncoding",
            "creator": "MMCPrivate"
          },
          "k4311": {
            "tag": 0x002910d7,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "PresentationStates",
            "creator": "MMCPrivate"
          },
        }
      }
    }
  },
  "Hologic": {
    "groups": {
      0x0011: {
        "name": "k0010",
        "manufacturerId": "Hologic",
        "modality": Modality.MG,
        "creator": {
          "tag": 0x00110010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kRemove,
          "description": "Private Creator ID",
          "creator": "HIPPA Private Creator"
        },
        "elements": {
          "k16": {
            "tag": 0x00190010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Private Creator ID",
            "creator": "LORAD Selenium"
          },
        }
      }
    }
  },
  "CTP": {
    "groups": {
      0x0013: {
        "name": "k0010",
        "manufacturerId": "CTP",
        "modality": null,
        "creator": {
          "tag": 0x00130010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "CTP Private Creator ID",
          "creator": "CTP"
        },
        "elements": {
          "k4112": {
            "tag": 0x00131010,
            "vr": VR.kUN,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Project Name",
            "creator": "CTP"
          },
          "k4113": {
            "tag": 0x00131011,
            "vr": VR.kUN,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Trial Name",
            "creator": "CTP"
          },
          "k4114": {
            "tag": 0x00131012,
            "vr": VR.kUN,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Site Name",
            "creator": "CTP"
          },
          "k4115": {
            "tag": 0x00131013,
            "vr": VR.kUN,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Site ID",
            "creator": "CTP"
          },
          "k4116": {
            "tag": 0x00131014,
            "vr": VR.kUN,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Visibility",
            "creator": "CTP"
          },
        }
      }
    }
  },
  "ADAC": {
    "groups": {
      0x0019: {
        "name": "k0010",
        "manufacturerId": "ADAC",
        "modality": Modality.NM,
        "creator": {
          "tag": 0x00190010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Private Creator Group 0019",
          "creator": "ADAC_IMG"
        },
        "elements": {
          "k4098": {
            "tag": 0x00191002,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "ADAC Pegasys File Size",
            "creator": "ADAC_IMG"
          },
          "k4129": {
            "tag": 0x00e11021,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Dose Length Product (in mGy-cm)",
            "creator": "ELSCINT1"
          },
          "k4161": {
            "tag": 0x00191041,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kRemove,
            "description": "ADAC Header/Image Size",
            "creator": "ADAC_IMG"
          },
          "k4193": {
            "tag": 0x00191061,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "ADAC Pegasys Headers",
            "creator": "ADAC_IMG"
          },
          "k16": {
            "tag": 0x00e10010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Philips Private Creator ID",
            "creator": "ELSCINT1"
          },
        }
      }
    }
  },
  "Philips": {
    "groups": {
      0x2001: {
        "name": "k0010",
        "manufacturerId": "Philips",
        "modality": Modality.MR,
        "creator": {
          "tag": 0x20010010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Private Creator Group 2001",
          "creator": "Philips Imaging DD 001"
        },
        "elements": {
          "k4097": {
            "tag": 0x20011001,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Chemical Shift",
            "creator": "Philips Imaging DD 001"
          },
          "k4098": {
            "tag": 0x20011002,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Chemical Shift Number MR",
            "creator": "Philips Imaging DD 001"
          },
          "k4099": {
            "tag": 0x20011003,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Diffusion b-value",
            "creator": "Philips Imaging DD 001"
          },
          "k4100": {
            "tag": 0x20011004,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Diffusion Direction",
            "creator": "Philips Imaging DD 001"
          },
          "k4102": {
            "tag": 0x20011006,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Image Enhanced",
            "creator": "Philips Imaging DD 001"
          },
          "k4103": {
            "tag": 0x20011007,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Image Type ED ES",
            "creator": "Philips Imaging DD 001"
          },
          "k4104": {
            "tag": 0x20011008,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Phase Number",
            "creator": "Philips Imaging DD 001"
          },
          "k4105": {
            "tag": 0x20011009,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Image Prepulse Delay",
            "creator": "Philips Imaging DD 001"
          },
          "k4106": {
            "tag": 0x2001100a,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": null,
            "description": "Slice Number MR",
            "creator": "Philips Imaging DD 001"
          },
          "k4107": {
            "tag": 0x2001100b,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Slice Orientation",
            "creator": "Philips Imaging DD 001"
          },
          "k4108": {
            "tag": 0x2001100c,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Arrhythmia Rejection",
            "creator": "Philips Imaging DD 001"
          },
          "k4110": {
            "tag": 0x2001100e,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Cardiac Cycled",
            "creator": "Philips Imaging DD 001"
          },
          "k4111": {
            "tag": 0x2001100f,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Cardiac Gate Width",
            "creator": "Philips Imaging DD 001"
          },
          "k4112": {
            "tag": 0x20011010,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Cardiac Sync",
            "creator": "Philips Imaging DD 001"
          },
          "k4113": {
            "tag": 0x20011011,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Diffusion Echo Time",
            "creator": "Philips Imaging DD 001"
          },
          "k4114": {
            "tag": 0x20011012,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Dynamic Series",
            "creator": "Philips Imaging DD 001"
          },
          "k4115": {
            "tag": 0x20011013,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "EPI Factor",
            "creator": "Philips Imaging DD 001"
          },
          "k4116": {
            "tag": 0x20011014,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Echoes",
            "creator": "Philips Imaging DD 001"
          },
          "k4117": {
            "tag": 0x20011015,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Locations",
            "creator": "Philips Imaging DD 001"
          },
          "k4118": {
            "tag": 0x20011016,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of PC Directions",
            "creator": "Philips Imaging DD 001"
          },
          "k4119": {
            "tag": 0x20011017,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Phases MR",
            "creator": "Philips Imaging DD 001"
          },
          "k4120": {
            "tag": 0x20011018,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Slices MR",
            "creator": "Philips Imaging DD 001"
          },
          "k4121": {
            "tag": 0x20011019,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Partial Matrix Scanned",
            "creator": "Philips Imaging DD 001"
          },
          "k4122": {
            "tag": 0x2001101a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "PC Velocity",
            "creator": "Philips Imaging DD 001"
          },
          "k4123": {
            "tag": 0x2001101b,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Prepulse Delay",
            "creator": "Philips Imaging DD 001"
          },
          "k4124": {
            "tag": 0x2001101c,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Prepulse Type",
            "creator": "Philips Imaging DD 001"
          },
          "k4125": {
            "tag": 0x2001101d,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": null,
            "description": "Reconstruction Number MR",
            "creator": "Philips Imaging DD 001"
          },
          "k4127": {
            "tag": 0x2001101f,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Respiration Sync",
            "creator": "Philips Imaging DD 001"
          },
          "k4128": {
            "tag": 0x20051020,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Chemical Shift",
            "creator": "Philips MR Imaging DD 001"
          },
          "k4129": {
            "tag": 0x20011021,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "SPIR",
            "creator": "Philips Imaging DD 001"
          },
          "k4130": {
            "tag": 0x20011022,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Water Fat Shift",
            "creator": "Philips Imaging DD 001"
          },
          "k4131": {
            "tag": 0x20011023,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Flip Angle Philips",
            "creator": "Philips Imaging DD 001"
          },
          "k4132": {
            "tag": 0x20011024,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Series is Interactive",
            "creator": "Philips Imaging DD 001"
          },
          "k4133": {
            "tag": 0x20011025,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Echo Time Display",
            "creator": "Philips Imaging DD 001"
          },
          "k4141": {
            "tag": 0x2001102d,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Number of Slices",
            "creator": "Philips Imaging DD 001"
          },
          "k4146": {
            "tag": 0x20011032,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Radial Angle",
            "creator": "Philips Imaging DD 001"
          },
          "k4147": {
            "tag": 0x20011033,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Radial Axis",
            "creator": "Philips Imaging DD 001"
          },
          "k4149": {
            "tag": 0x20011035,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Slice Number",
            "creator": "Philips Imaging DD 001"
          },
          "k4150": {
            "tag": 0x20011036,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Type",
            "creator": "Philips Imaging DD 001"
          },
          "k4184": {
            "tag": 0x20011058,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Constrast Transfer Taste",
            "creator": "Philips Imaging DD 001"
          },
          "k4191": {
            "tag": 0x2001105f,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Stack Sequence",
            "creator": "Philips Imaging DD 001"
          },
          "k4192": {
            "tag": 0x20011060,
            "vr": VR.kSL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Stacks",
            "creator": "Philips Imaging DD 001"
          },
          "k4193": {
            "tag": 0x20011061,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Series Transmitted",
            "creator": "Philips Imaging DD 001"
          },
          "k4195": {
            "tag": 0x20011063,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Examination Source",
            "creator": "Philips Imaging DD 001"
          },
          "k4219": {
            "tag": 0x2001107b,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": null,
            "description": "Acquisition no",
            "creator": "Philips Imaging DD 001"
          },
          "k4225": {
            "tag": 0x20011081,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "no_dynamic_scans",
            "creator": "Philips Imaging DD 001"
          },
          "k4257": {
            "tag": 0x200510a1,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Syncra Scan Type",
            "creator": "Philips MR Imaging DD 001"
          },
          "k4296": {
            "tag": 0x200110c8,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "ExamCard Name",
            "creator": "Philips Imaging DD 001"
          },
          "k4337": {
            "tag": 0x200110f1,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Prospective Motion Correction",
            "creator": "Philips Imaging DD 001"
          },
          "k4338": {
            "tag": 0x200110f2,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Retrospective Motion Correction",
            "creator": "Philips Imaging DD 001"
          },
          "k16": {
            "tag": 0x20050010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Private Creator Group 2005",
            "creator": "Philips MR Imaging DD 001"
          },
          "k4272": {
            "tag": 0x200510b0,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Diffusion Direction RL",
            "creator": "Philips MR Imaging DD 001"
          },
          "k4273": {
            "tag": 0x200510b1,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Diffusion Direction AP",
            "creator": "Philips MR Imaging DD 001"
          },
          "k4274": {
            "tag": 0x200510b2,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Diffusion Direction FH",
            "creator": "Philips MR Imaging DD 001"
          },
        }
      },
      0x00e1: {
        "name": "k0010",
        "manufacturerId": "Philips",
        "modality": null,
        "creator": {
          "tag": 0x00e10010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Private Creator Group",
          "creator": "ELSCINT1"
        },
        "elements": {
          "k4129": {
            "tag": 0x00e11021,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ELSCINT1_DLP_TOTAL",
            "creator": "ELSCINT1"
          },
          "k4290": {
            "tag": 0x705310c2,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "PET-CT Multi Modality Name",
            "creator": "Philips PET Private Group"
          },
          "k16": {
            "tag": 0x70530010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Private Creator Group 7053",
            "creator": "Philips PET Private Group"
          },
          "k4096": {
            "tag": 0x70531000,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SUV Scale Factor",
            "creator": "Philips PET Private Group"
          },
          "k4097": {
            "tag": 0x70531001,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1001",
            "creator": "Philips PET Private Group"
          },
          "k4098": {
            "tag": 0x70531002,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1002",
            "creator": "Philips PET Private Group"
          },
          "k4099": {
            "tag": 0x70531003,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Original Image file name",
            "creator": "Philips PET Private Group"
          },
          "k4101": {
            "tag": 0x70531005,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "File Name",
            "creator": "Philips PET Private Group"
          },
          "k4102": {
            "tag": 0x70531006,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Private",
            "creator": "Philips PET Private Group"
          },
          "k4103": {
            "tag": 0x70531007,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Acquisition File Sequence",
            "creator": "Philips PET Private Group"
          },
          "k4105": {
            "tag": 0x70531009,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Activity Concentration Scale Factor",
            "creator": "Philips PET Private Group"
          },
          "k4115": {
            "tag": 0x70531013,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1013",
            "creator": "Philips PET Private Group"
          },
          "k4116": {
            "tag": 0x70531014,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1014",
            "creator": "Philips PET Private Group"
          },
          "k4117": {
            "tag": 0x70531015,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1015",
            "creator": "Philips PET Private Group"
          },
          "k4118": {
            "tag": 0x70531016,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1016",
            "creator": "Philips PET Private Group"
          },
          "k4119": {
            "tag": 0x70531017,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1017",
            "creator": "Philips PET Private Group"
          },
          "k4120": {
            "tag": 0x70531018,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Philips Private 7053 1018",
            "creator": "Philips PET Private Group"
          },
        }
      }
    }
  },
  "Siemens": {
    "groups": {
      0x0029: {
        "name": "k0010",
        "manufacturerId": "Siemens",
        "modality": Modality.MR,
        "creator": {
          "tag": 0x00290010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kRemove,
          "description": "Siemens Private Creator ID",
          "creator": "SIEMENS CSA NON-IMAGE"
        },
        "elements": {
          "k4104": {
            "tag": 0x00291008,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data Type",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k4105": {
            "tag": 0x00291009,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data Version",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k4112": {
            "tag": 0x7fe11010,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k17": {
            "tag": 0x00290011,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SIemens Private Creator ID",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4360": {
            "tag": 0x00291108,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Image Header Type",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4361": {
            "tag": 0x00291109,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Image Header Version",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4368": {
            "tag": 0x00291110,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Image Header Info",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4376": {
            "tag": 0x00291118,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Series Header Type",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4377": {
            "tag": 0x00291119,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Series Header Version",
            "creator": "SIEMENS CSA HEADER"
          },
          "k4384": {
            "tag": 0x00291120,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Series Header Info",
            "creator": "SIEMENS CSA HEADER"
          },
          "k20": {
            "tag": 0x00290014,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5128": {
            "tag": 0x00291408,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report Type",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5129": {
            "tag": 0x00291409,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5141": {
            "tag": 0x00291415,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SR Variant",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5143": {
            "tag": 0x00291417,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SC SOP Instance UID",
            "creator": "SIEMENS CSA REPORT"
          },
          "k21": {
            "tag": 0x00290015,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS CSA ENVELOPE"
          },
          "k5392": {
            "tag": 0x00291510,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report Data",
            "creator": "SIEMENS CSA ENVELOPE"
          },
          "k5393": {
            "tag": 0x00291511,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report Presentation",
            "creator": "SIEMENS CSA ENVELOPE"
          },
          "k18": {
            "tag": 0x00290012,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4616": {
            "tag": 0x00291208,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "MedCom Header Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4617": {
            "tag": 0x00291209,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "MedCom Header Version",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4624": {
            "tag": 0x00291210,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MedCom Header Info",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4640": {
            "tag": 0x00291220,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MedCom History Information",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4657": {
            "tag": 0x00291231,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 1",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4658": {
            "tag": 0x00291232,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "PMTF Information 2",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4659": {
            "tag": 0x00291233,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "PMTF Information 3",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4660": {
            "tag": 0x00291234,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 4",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4661": {
            "tag": 0x00291235,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "PMTF Information 5",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4672": {
            "tag": 0x00291240,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Sequence",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4673": {
            "tag": 0x00291241,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4674": {
            "tag": 0x00291242,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4675": {
            "tag": 0x00291243,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Version",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4676": {
            "tag": 0x00291244,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Info",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4688": {
            "tag": 0x00291250,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kRemove,
            "description": "Workflow Control Flags",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4689": {
            "tag": 0x00291251,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Archive Management Flag Keep Online",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4690": {
            "tag": 0x00291252,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Archive Management Flag Do Not Archive",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4691": {
            "tag": 0x00291253,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Image Location Status",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4692": {
            "tag": 0x00291254,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Estimated Retrieve Time",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4693": {
            "tag": 0x00291255,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Data Size of Retrieved Images",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4720": {
            "tag": 0x00291270,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Link Sequence",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4721": {
            "tag": 0x00291271,
            "vr": VR.kAT,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Tag",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4722": {
            "tag": 0x00291272,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Tag Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4723": {
            "tag": 0x00291273,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Value Length",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4724": {
            "tag": 0x00291274,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object Device Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4725": {
            "tag": 0x00291275,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object Device Location",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4726": {
            "tag": 0x00291276,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k22": {
            "tag": 0x00290016,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM HEADER2"
          },
          "k5728": {
            "tag": 0x00291660,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Series Work Flow Status",
            "creator": "SIEMENS MEDCOM HEADER2"
          },
          "k19": {
            "tag": 0x00290013,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4872": {
            "tag": 0x00291308,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Type",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4873": {
            "tag": 0x00291309,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Version",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4880": {
            "tag": 0x00291310,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Info",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k16": {
            "tag": 0x7fe10010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
        }
      },
      0x0019: {
        "name": "k0010",
        "manufacturerId": "Siemens",
        "modality": Modality.NM,
        "creator": {
          "tag": 0x00190010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Siemens Private Creator ID",
          "creator": "Siemens MED NM"
        },
        "elements": {
          "k4111": {
            "tag": 0x0061100f,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Focal Scaling",
            "creator": "SIEMENS MED NM"
          },
          "k4261": {
            "tag": 0x001910a5,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Number of repeats per phase",
            "creator": "Siemens MED NM"
          },
          "k4262": {
            "tag": 0x001910a6,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Cycles per repeat",
            "creator": "Siemens MED NM"
          },
          "k4263": {
            "tag": 0x001910a7,
            "vr": VR.kSL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Repeat start time",
            "creator": "Siemens MED NM"
          },
          "k4264": {
            "tag": 0x001910a8,
            "vr": VR.kSL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Repeat stop time",
            "creator": "Siemens MED NM"
          },
          "k4265": {
            "tag": 0x001910a9,
            "vr": VR.kSL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Effective repeat time",
            "creator": "Siemens MED NM"
          },
          "k4266": {
            "tag": 0x001910aa,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Acquired cycles per repeat",
            "creator": "Siemens MED NM"
          },
          "k16": {
            "tag": 0x7fe30010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MED NM"
          },
          "k4096": {
            "tag": 0x00391000,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Toshiba CBF activity results",
            "creator": "SIEMENS MED NM"
          },
          "k4097": {
            "tag": 0x00611001,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Principal Ray Offset",
            "creator": "SIEMENS MED NM"
          },
          "k4104": {
            "tag": 0x00571008,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Frame reference time",
            "creator": "SIEMENS MED NM"
          },
          "k4105": {
            "tag": 0x00611009,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Principal Ray Angle",
            "creator": "SIEMENS MED NM"
          },
          "k4112": {
            "tag": 0x00611010,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Y Focal Scaling",
            "creator": "SIEMENS MED NM"
          },
          "k4120": {
            "tag": 0x00331018,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "NCO Data for detector 1 (n = number of view s)",
            "creator": "SIEMENS MED NM"
          },
          "k4121": {
            "tag": 0x00611019,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "X Heart Center",
            "creator": "SIEMENS MED NM"
          },
          "k4128": {
            "tag": 0x00331020,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Bed correction angle",
            "creator": "SIEMENS MED NM"
          },
          "k17": {
            "tag": 0x00290011,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k4360": {
            "tag": 0x00291108,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data Type",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k4361": {
            "tag": 0x00291109,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data Version",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k4368": {
            "tag": 0x00291110,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "CSA Data Info",
            "creator": "SIEMENS CSA NON-IMAGE"
          },
          "k18": {
            "tag": 0x00290012,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4616": {
            "tag": 0x00291208,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "MedCom Header Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4617": {
            "tag": 0x00291209,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "MedCom Header Version",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4624": {
            "tag": 0x00291210,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MedCom Header Info",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4640": {
            "tag": 0x00291220,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MedCom History Information",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4657": {
            "tag": 0x00291231,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 1",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4658": {
            "tag": 0x00291232,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 2",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4659": {
            "tag": 0x00291233,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 3",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4660": {
            "tag": 0x00291234,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 4",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4661": {
            "tag": 0x00291235,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "PMTF Information 5",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4672": {
            "tag": 0x00291240,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Sequence",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4673": {
            "tag": 0x00291241,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4674": {
            "tag": 0x00291242,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4675": {
            "tag": 0x00291243,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Version",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4676": {
            "tag": 0x00291244,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Application Header Info",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4688": {
            "tag": 0x00291250,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kRemove,
            "description": "Workflow Control Flags",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4689": {
            "tag": 0x00291251,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Archive Management Flag Keep Online",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4690": {
            "tag": 0x00291252,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Archive Management Flag Do Not Archive",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4691": {
            "tag": 0x00291253,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Image Location Status",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4692": {
            "tag": 0x00291254,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Estimated Retrieve Time",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4693": {
            "tag": 0x00291255,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Data Size of Retrieved Images",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4720": {
            "tag": 0x00291270,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Link Sequence",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4721": {
            "tag": 0x00291271,
            "vr": VR.kAT,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Tag",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4722": {
            "tag": 0x00291272,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Tag Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4723": {
            "tag": 0x00291273,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Value Length",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4724": {
            "tag": 0x00291274,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object Device Type",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4725": {
            "tag": 0x00291275,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object Device Location",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k4726": {
            "tag": 0x00291276,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Referenced Object ID",
            "creator": "SIEMENS MEDCOM HEADER"
          },
          "k22": {
            "tag": 0x00290016,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM HEADER2"
          },
          "k5728": {
            "tag": 0x00291660,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Series Work Flow Status",
            "creator": "SIEMENS MEDCOM HEADER2"
          },
          "k19": {
            "tag": 0x00290013,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4872": {
            "tag": 0x00291308,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Type",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4873": {
            "tag": 0x00291309,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Version",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k4880": {
            "tag": 0x00291310,
            "vr": VR.kOB,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "MEDCOM OOG Info",
            "creator": "SIEMENS MEDCOM OOG"
          },
          "k20": {
            "tag": 0x00290014,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Siemens Private Creator ID",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5128": {
            "tag": 0x00291408,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report Type",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5129": {
            "tag": 0x00291409,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Syngo Report",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5141": {
            "tag": 0x00291415,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SR Variant",
            "creator": "SIEMENS CSA REPORT"
          },
          "k5143": {
            "tag": 0x00291417,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "SC SOP Instance UID",
            "creator": "SIEMENS CSA REPORT"
          },
          "k4113": {
            "tag": 0x00611011,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Motion Correction Shift",
            "creator": "SIEMENS MED NM"
          },
          "k4116": {
            "tag": 0x7fe31014,
            "vr": VR.kOW,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Minimum pixel in frame",
            "creator": "SIEMENS MED NM"
          },
          "k4117": {
            "tag": 0x7fe31015,
            "vr": VR.kOW,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Maximum pixel in frame",
            "creator": "SIEMENS MED NM"
          },
          "k4129": {
            "tag": 0x00611021,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Recon Range",
            "creator": "SIEMENS MED NM"
          },
          "k4130": {
            "tag": 0x00611022,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Orientation",
            "creator": "SIEMENS MED NM"
          },
          "k4131": {
            "tag": 0x00611023,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Recon Selected Angular Range",
            "creator": "SIEMENS MED NM"
          },
          "k4132": {
            "tag": 0x00611024,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Transverse Angle",
            "creator": "SIEMENS MED NM"
          },
          "k4133": {
            "tag": 0x00611025,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Sagittal Angle",
            "creator": "SIEMENS MED NM"
          },
          "k4136": {
            "tag": 0x00611028,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon X Image Center",
            "creator": "SIEMENS MED NM"
          },
          "k4137": {
            "tag": 0x7fe31029,
            "vr": VR.kOW,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Number of R-Waves in frame",
            "creator": "SIEMENS MED NM"
          },
          "k4144": {
            "tag": 0x00611030,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Method Mode",
            "creator": "SIEMENS MED NM"
          },
          "k4145": {
            "tag": 0x00611031,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Lower Window Weights",
            "creator": "SIEMENS MED NM"
          },
          "k4146": {
            "tag": 0x00611032,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Upper Window Weights",
            "creator": "SIEMENS MED NM"
          },
          "k4147": {
            "tag": 0x00611033,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Window Mode",
            "creator": "SIEMENS MED NM"
          },
          "k4148": {
            "tag": 0x00611034,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Filter",
            "creator": "SIEMENS MED NM"
          },
          "k4149": {
            "tag": 0x00611035,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Recon RawTomo Input Uid",
            "creator": "SIEMENS MED NM"
          },
          "k4150": {
            "tag": 0x00611036,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Recon CT Input Uid",
            "creator": "SIEMENS MED NM"
          },
          "k4151": {
            "tag": 0x00611037,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Z Mask Size",
            "creator": "SIEMENS MED NM"
          },
          "k4152": {
            "tag": 0x00611038,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon X Mask Center",
            "creator": "SIEMENS MED NM"
          },
          "k4098": {
            "tag": 0x00571002,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Dose calibration factor",
            "creator": "SIEMENS MED NM"
          },
          "k4099": {
            "tag": 0x00571003,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Units",
            "creator": "SIEMENS MED NM"
          },
          "k4100": {
            "tag": 0x00571004,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Decay correction",
            "creator": "SIEMENS MED NM"
          },
          "k4101": {
            "tag": 0x00611005,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Y Principal Ray Offset",
            "creator": "SIEMENS MED NM"
          },
          "k4102": {
            "tag": 0x00571006,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Rescale intercept",
            "creator": "SIEMENS MED NM"
          },
          "k4103": {
            "tag": 0x00571007,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Rescale Slope",
            "creator": "SIEMENS MED NM"
          },
          "k4106": {
            "tag": 0x0061100a,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Y Principal Ray Angle",
            "creator": "SIEMENS MED NM"
          },
          "k4107": {
            "tag": 0x0061100b,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Short Focal Length",
            "creator": "SIEMENS MED NM"
          },
          "k4222": {
            "tag": 0x0055107e,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Collimator thickness",
            "creator": "SIEMENS MED NM"
          },
          "k4223": {
            "tag": 0x0055107f,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Collimator angular resolution",
            "creator": "SIEMENS MED NM"
          },
          "k4288": {
            "tag": 0x005510c0,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Useful Field of View",
            "creator": "SIEMENS MED NM"
          },
          "k4108": {
            "tag": 0x0061100c,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Y Short Focal Length",
            "creator": "SIEMENS MED NM"
          },
          "k4110": {
            "tag": 0x0061100e,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "Y Long Focal Length",
            "creator": "SIEMENS MED NM"
          },
          "k4109": {
            "tag": 0x0061100d,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeep,
            "description": "X Long Focal Length",
            "creator": "SIEMENS MED NM"
          },
          "k4122": {
            "tag": 0x0061101a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Y Heart Center",
            "creator": "SIEMENS MED NM"
          },
          "k4123": {
            "tag": 0x0061101b,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Z Heart Center",
            "creator": "SIEMENS MED NM"
          },
          "k4124": {
            "tag": 0x0061101c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Image Pixel Content Type",
            "creator": "SIEMENS MED NM"
          },
          "k4125": {
            "tag": 0x0061101d,
            "vr": VR.kSS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Auto Save Corrected Series",
            "creator": "SIEMENS MED NM"
          },
          "k4126": {
            "tag": 0x0061101e,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Distorted Series Instance UID",
            "creator": "SIEMENS MED NM"
          },
          "k4134": {
            "tag": 0x00611026,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon X Mask Size",
            "creator": "SIEMENS MED NM"
          },
          "k4135": {
            "tag": 0x00611027,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Y Mask Size",
            "creator": "SIEMENS MED NM"
          },
          "k4138": {
            "tag": 0x0061102a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Z Image Center",
            "creator": "SIEMENS MED NM"
          },
          "k4139": {
            "tag": 0x0061102b,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon X Zoom",
            "creator": "SIEMENS MED NM"
          },
          "k4140": {
            "tag": 0x0061102c,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Y Zoom",
            "creator": "SIEMENS MED NM"
          },
          "k4141": {
            "tag": 0x0061102d,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Threshold",
            "creator": "SIEMENS MED NM"
          },
          "k4142": {
            "tag": 0x0061102e,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Output Pixel Size",
            "creator": "SIEMENS MED NM"
          },
          "k4143": {
            "tag": 0x0061102f,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "Scatter Estimation Method",
            "creator": "SIEMENS MED NM"
          },
          "k4153": {
            "tag": 0x00611039,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Y Mask Center",
            "creator": "SIEMENS MED NM"
          },
          "k4154": {
            "tag": 0x0061103a,
            "vr": VR.kFL,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Recon Z Mask Center",
            "creator": "SIEMENS MED NM"
          },
          "k4177": {
            "tag": 0x00611051,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Raw Tomo Series UID",
            "creator": "SIEMENS MED NM"
          },
          "k4178": {
            "tag": 0x00611052,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "LowRes CT Series UID",
            "creator": "SIEMENS MED NM"
          },
          "k4179": {
            "tag": 0x00611053,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "HighRes CT Series UID",
            "creator": "SIEMENS MED NM"
          },
        }
      }
    }
  },
  "Toshiba": {
    "groups": {
      0x7005: {
        "name": "k0010",
        "manufacturerId": "Toshiba",
        "modality": Modality.CT,
        "creator": {
          "tag": 0x70050010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Toshiba Private Creator ID",
          "creator": "TOSHIBA_MEC_CT3"
        },
        "elements": {
          "k4096": {
            "tag": 0x70051000,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "CT Private Data 1",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4099": {
            "tag": 0x70051003,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Cardiac R-R Mean Time",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4100": {
            "tag": 0x70051004,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Cardiac Reconstruction Gating Phase in Percent",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4101": {
            "tag": 0x70051005,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Cardiac Reconstruction Gating Phase in ms",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4102": {
            "tag": 0x70051006,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Cardiac Reconstruction Mode",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4103": {
            "tag": 0x70051007,
            "vr": VR.kDS,
            "vm": VM.k2,
            "action": Action.kKeepXX,
            "description": "Reconstruction Center",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4104": {
            "tag": 0x70051008,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Detector Slice Thickness in mm",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4105": {
            "tag": 0x70051009,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Number of Detector rows to Reconstruct",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4106": {
            "tag": 0x7005100a,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Table Speed in mm/rot",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4107": {
            "tag": 0x7005100b,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Filter",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4108": {
            "tag": 0x7005100c,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Reconstruction Correction Type",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4109": {
            "tag": 0x7005100d,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Organ",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4110": {
            "tag": 0x7005100e,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "File Type Remarks",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4111": {
            "tag": 0x7005100f,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Direction",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4112": {
            "tag": 0x70051010,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "CT Private Data 2",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4113": {
            "tag": 0x70051011,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Series Comment",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4114": {
            "tag": 0x70051012,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Position",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4115": {
            "tag": 0x70051013,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Expert Plan No.",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4116": {
            "tag": 0x70051014,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Reconstruction ROI No.",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4117": {
            "tag": 0x70051015,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Special Helical ACQ No.",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4118": {
            "tag": 0x70051016,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Volume UID",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4119": {
            "tag": 0x70051017,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Total Frame Count in the Volume",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4120": {
            "tag": 0x70051018,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Frame No.",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4121": {
            "tag": 0x70051019,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Frame Sort Key",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4122": {
            "tag": 0x7005101a,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Frame Sort Order",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4123": {
            "tag": 0x7005101b,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "(L1) Convolution Kernel, (L2) Convolution Kernel for Series Record",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4124": {
            "tag": 0x7005101c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "(L1) Contrast/Bolus Agent, (L2) Contrast/Bolus Agent for Series Record",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4125": {
            "tag": 0x7005101d,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Reconstruction Number",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4126": {
            "tag": 0x7005101e,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Raw Data Number",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4127": {
            "tag": 0x7005101f,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Volume Number",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4128": {
            "tag": 0x70051020,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Local Series Number",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4129": {
            "tag": 0x70051021,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Decrease in Artifact Filter",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4130": {
            "tag": 0x70051022,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Reconstruction Interval",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4131": {
            "tag": 0x70051023,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Pitch Factor",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4132": {
            "tag": 0x70051024,
            "vr": VR.kDA,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "The Acquisition Date of NRA",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4133": {
            "tag": 0x70051025,
            "vr": VR.kUL,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Large Data File Attribute",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4134": {
            "tag": 0x70051026,
            "vr": VR.kCS,
            "vm": null,
            "action": Action.kReplace,
            "description": "Large Data File Name",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4136": {
            "tag": 0x70051028,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kRemove,
            "description": "Enhanced CT Private Sequence",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4137": {
            "tag": 0x70051029,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Frame UID",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4144": {
            "tag": 0x70051030,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Main Modality in Study",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4149": {
            "tag": 0x70051035,
            "vr": VR.kDS,
            "vm": VM.k2,
            "action": Action.kKeepXX,
            "description": "Scan Range",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4150": {
            "tag": 0x70051036,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "CT Private Data 3",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4151": {
            "tag": 0x70051037,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Total Frames",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4152": {
            "tag": 0x70051038,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Start Frame",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4153": {
            "tag": 0x70051039,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "End Frame",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4160": {
            "tag": 0x70051040,
            "vr": VR.kFD,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "DLP (Dose Length Product)",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4161": {
            "tag": 0x70051041,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Raw Slice Information",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4162": {
            "tag": 0x70051042,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Local Frame No",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4163": {
            "tag": 0x70051043,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeepXX,
            "description": "Volume Vector",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4164": {
            "tag": 0x70051044,
            "vr": VR.kUS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Volume Type",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4165": {
            "tag": 0x70051045,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Relative Table Position of 4D Volume",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4166": {
            "tag": 0x70051046,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Absolute Table Position of 4D Volume",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4167": {
            "tag": 0x70051047,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeepXX,
            "description": "Slice Pitch of 4D Volume",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4168": {
            "tag": 0x70051048,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Respiratory Gating Inf.",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4169": {
            "tag": 0x70051049,
            "vr": VR.kSH,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Respiration Phase",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4337": {
            "tag": 0x700510f1,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Protect Mark for Image, Curve or Private Record",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4338": {
            "tag": 0x700510f2,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Protect Mark for Series Record",
            "creator": "TOSHIBA_MEC_CT3"
          },
          "k4339": {
            "tag": 0x700510f3,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kReplace,
            "description": "Protect Mark for Study Record",
            "creator": "TOSHIBA_MEC_CT3"
          },
        }
      },
      0x700d: {
        "name": "k0010",
        "manufacturerId": "Toshiba",
        "modality": Modality.MR,
        "creator": {
          "tag": 0x700d0010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "Toshiba Private Creator ID",
          "creator": "TOSHIBA_MEC_MR3"
        },
        "elements": {
          "k4096": {
            "tag": 0x700d1000,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Scale Factor",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4097": {
            "tag": 0x700d1001,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "Acquisition Order",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4098": {
            "tag": 0x700d1002,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Orientation Vector",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4099": {
            "tag": 0x700d1003,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Flip Flag",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4100": {
            "tag": 0x700d1004,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "Rotate Information",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4101": {
            "tag": 0x700d1005,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "FOV",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4102": {
            "tag": 0x700d1006,
            "vr": VR.kUS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Image Matrix",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4103": {
            "tag": 0x700d1007,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "Image Information",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4104": {
            "tag": 0x700d1008,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kRemove,
            "description": "Original Data",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4105": {
            "tag": 0x700d1009,
            "vr": VR.kSS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Original Data Flag",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4224": {
            "tag": 0x700d1080,
            "vr": VR.kUS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Number of PAC channel",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4225": {
            "tag": 0x700d1081,
            "vr": VR.kUS,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Reference mode",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4226": {
            "tag": 0x700d1082,
            "vr": VR.kSQ,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Gain value group for MRS",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4232": {
            "tag": 0x700d1088,
            "vr": VR.kUL,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Flag of water Sat pulse",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4233": {
            "tag": 0x700d1089,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Selected contrast TE",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4234": {
            "tag": 0x700d108a,
            "vr": VR.kSQ,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Raw Data Set Sequence",
            "creator": "TOSHIBA_MEC_MR3"
          },
          "k4241": {
            "tag": 0x700d1091,
            "vr": VR.kFL,
            "vm": null,
            "action": Action.kKeepXX,
            "description": "Receiver gain of prescan",
            "creator": "TOSHIBA_MEC_MR3"
          },
        }
      }
    }
  },
  "UCSF": {
    "groups": {
      0x0117: {
        "name": "k0010",
        "manufacturerId": "UCSF",
        "modality": Modality.MR,
        "creator": {
          "tag": 0x01170010,
          "vr": VR.kLO,
          "vm": VM.k1,
          "action": Action.kKeep,
          "description": "UCSFBIRPGroupIDString",
          "creator": "MRSC"
        },
        "elements": {
          "k4112": {
            "tag": 0x01191010,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelDataType",
            "creator": "MRSC"
          },
          "k4114": {
            "tag": 0x01191012,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ParameterDims",
            "creator": "MRSC"
          },
          "k4116": {
            "tag": 0x01171014,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PESERParameterName",
            "creator": "MRSC"
          },
          "k4118": {
            "tag": 0x01171016,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PESERParameterDescription",
            "creator": "MRSC"
          },
          "k4120": {
            "tag": 0x01191018,
            "vr": VR.kIS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "GAINS",
            "creator": "MRSC"
          },
          "k4121": {
            "tag": 0x01171019,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PESERParameterIntegerValue",
            "creator": "MRSC"
          },
          "k4122": {
            "tag": 0x0117101a,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "PESERParameterStringValue",
            "creator": "MRSC"
          },
          "k4128": {
            "tag": 0x01191020,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceFileNames",
            "creator": "MRSC"
          },
          "k4130": {
            "tag": 0x01191022,
            "vr": VR.kIS,
            "vm": VM.k6,
            "action": Action.kKeep,
            "description": "SourceCropLimits",
            "creator": "MRSC"
          },
          "k4132": {
            "tag": 0x01191024,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceVolumeIndices",
            "creator": "MRSC"
          },
          "k4144": {
            "tag": 0x01191030,
            "vr": VR.kDS,
            "vm": VM.k9,
            "action": Action.kKeep,
            "description": "DirectionCosines",
            "creator": "MRSC"
          },
          "k4145": {
            "tag": 0x01191031,
            "vr": VR.kCS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "PatientOrientation3",
            "creator": "MRSC"
          },
          "k4146": {
            "tag": 0x01171032,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "AcquisitionStartTimes",
            "creator": "MRSC"
          },
          "k4147": {
            "tag": 0x01171033,
            "vr": VR.kTM,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "InjectionTime",
            "creator": "MRSC"
          },
          "k4148": {
            "tag": 0x01171034,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "EffectiveAcquisitionDelay",
            "creator": "MRSC"
          },
          "k4149": {
            "tag": 0x01171035,
            "vr": VR.kIS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "SERTimingIndices",
            "creator": "MRSC"
          },
          "k4154": {
            "tag": 0x0117103a,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AcquisitionTimingMethod",
            "creator": "MRSC"
          },
          "k4155": {
            "tag": 0x0117103b,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "AcquisitionTimingComments",
            "creator": "MRSC"
          },
          "k4161": {
            "tag": 0x01191041,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SlicePosition",
            "creator": "MRSC"
          },
          "k4162": {
            "tag": 0x01171042,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "VOILPSCenter",
            "creator": "MRSC"
          },
          "k4163": {
            "tag": 0x01171043,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "VOILPSWidthHalfLength",
            "creator": "MRSC"
          },
          "k4164": {
            "tag": 0x01171044,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "VOILPSHeightHalfLength",
            "creator": "MRSC"
          },
          "k4165": {
            "tag": 0x01171045,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "VOILPSDepthHalfLength",
            "creator": "MRSC"
          },
          "k4166": {
            "tag": 0x01171046,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "VOILPSType",
            "creator": "MRSC"
          },
          "k4176": {
            "tag": 0x01191050,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "VolumeLabels",
            "creator": "MRSC"
          },
          "k4177": {
            "tag": 0x01191051,
            "vr": VR.kDA,
            "vm": null,
            "action": Action.kKeep,
            "description": "AcquisitionDate",
            "creator": "MRSC"
          },
          "k4178": {
            "tag": 0x01191052,
            "vr": VR.kTM,
            "vm": null,
            "action": Action.kKeep,
            "description": "AcquisitionTime",
            "creator": "MRSC"
          },
          "k4179": {
            "tag": 0x01171053,
            "vr": VR.kUS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ProjectedROIXVerts",
            "creator": "MRSC"
          },
          "k4180": {
            "tag": 0x01171054,
            "vr": VR.kUS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ProjectedROIYVerts",
            "creator": "MRSC"
          },
          "k4181": {
            "tag": 0x01171055,
            "vr": VR.kUS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "ProjectedROIZRange",
            "creator": "MRSC"
          },
          "k4182": {
            "tag": 0x01171056,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ProjectedROIType",
            "creator": "MRSC"
          },
          "k4186": {
            "tag": 0x0117105a,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ProjectedROILabel",
            "creator": "MRSC"
          },
          "k4257": {
            "tag": 0x011910a1,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_GRAD_Y",
            "creator": "MRSC"
          },
          "k4258": {
            "tag": 0x011910a2,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_GRAD_Z",
            "creator": "MRSC"
          },
          "k4259": {
            "tag": 0x011910a3,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_PW_X",
            "creator": "MRSC"
          },
          "k4260": {
            "tag": 0x011910a4,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_PW_Y",
            "creator": "MRSC"
          },
          "k4272": {
            "tag": 0x011910b0,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CoilCorrectionMethod",
            "creator": "MRSC"
          },
          "k4273": {
            "tag": 0x011910b1,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PolyFitOrder",
            "creator": "MRSC"
          },
          "k4274": {
            "tag": 0x011910b2,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PolyFitCoeff",
            "creator": "MRSC"
          },
          "k4275": {
            "tag": 0x011710b3,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FTVPixelCount",
            "creator": "MRSC"
          },
          "k4276": {
            "tag": 0x011710b4,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FTVcc",
            "creator": "MRSC"
          },
          "k4277": {
            "tag": 0x011710b5,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FTVLabel",
            "creator": "MRSC"
          },
          "k4288": {
            "tag": 0x011910c0,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QCMinimumLimits",
            "creator": "MRSC"
          },
          "k4289": {
            "tag": 0x011910c1,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QCMaximumLimits",
            "creator": "MRSC"
          },
          "k4290": {
            "tag": 0x011710c2,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QualityControlValue",
            "creator": "MRSC"
          },
          "k4291": {
            "tag": 0x011710c3,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QualityControlMeaning",
            "creator": "MRSC"
          },
          "k4292": {
            "tag": 0x011710c4,
            "vr": VR.kLT,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "QualityControlComment",
            "creator": "MRSC"
          },
          "k4293": {
            "tag": 0x011710c5,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ProtocolCompliantFlag",
            "creator": "MRSC"
          },
          "k4294": {
            "tag": 0x011710c6,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "ProtocolNotCompliantReasons",
            "creator": "MRSC"
          },
          "k4295": {
            "tag": 0x011710c7,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ImagesAnalyzable",
            "creator": "MRSC"
          },
          "k4296": {
            "tag": 0x011710c8,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "ProtocolNotCAnalyzableReasons",
            "creator": "MRSC"
          },
          "k16": {
            "tag": 0x01190010,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIACQID",
            "creator": "MRSC"
          },
          "k17": {
            "tag": 0x01190011,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIFITMAPID",
            "creator": "MRSC"
          },
          "k18": {
            "tag": 0x01190012,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MI-IPID",
            "creator": "MRSC"
          },
          "k20": {
            "tag": 0x01190014,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsIDString",
            "creator": "MRSC"
          },
          "k21": {
            "tag": 0x01190015,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERIDString",
            "creator": "MRSC"
          },
          "k4096": {
            "tag": 0x01191000,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Version",
            "creator": "MRSC"
          },
          "k4102": {
            "tag": 0x01191006,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinimumPixelValue",
            "creator": "MRSC"
          },
          "k4103": {
            "tag": 0x01191007,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MaximumPixelValue",
            "creator": "MRSC"
          },
          "k4113": {
            "tag": 0x01191011,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ImageIDNumbers",
            "creator": "MRSC"
          },
          "k4115": {
            "tag": 0x01191013,
            "vr": VR.kCS,
            "vm": null,
            "action": Action.kKeep,
            "description": "VariableParameter",
            "creator": "MRSC"
          },
          "k4129": {
            "tag": 0x01191021,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SourceCropFlag",
            "creator": "MRSC"
          },
          "k4131": {
            "tag": 0x01191023,
            "vr": VR.kUI,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceFileUIDs",
            "creator": "MRSC"
          },
          "k4133": {
            "tag": 0x01191025,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceVolumeLabels",
            "creator": "MRSC"
          },
          "k4152": {
            "tag": 0x01191038,
            "vr": VR.kDS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "PixelGap",
            "creator": "MRSC"
          },
          "k4192": {
            "tag": 0x01191060,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SecCptrUser",
            "creator": "MRSC"
          },
          "k4193": {
            "tag": 0x01191061,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SecCptrApplication",
            "creator": "MRSC"
          },
          "k4208": {
            "tag": 0x01191070,
            "vr": VR.kAT,
            "vm": null,
            "action": Action.kKeep,
            "description": "VariableParamTags",
            "creator": "MRSC"
          },
          "k4209": {
            "tag": 0x01191071,
            "vr": VR.kCS,
            "vm": null,
            "action": Action.kKeep,
            "description": "VariableParamNames",
            "creator": "MRSC"
          },
          "k4224": {
            "tag": 0x01191080,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TR",
            "creator": "MRSC"
          },
          "k4225": {
            "tag": 0x01191081,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TE",
            "creator": "MRSC"
          },
          "k4226": {
            "tag": 0x01191082,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TI",
            "creator": "MRSC"
          },
          "k4227": {
            "tag": 0x01191083,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TSL",
            "creator": "MRSC"
          },
          "k4232": {
            "tag": 0x01191088,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "FlipAngle",
            "creator": "MRSC"
          },
          "k4240": {
            "tag": 0x01191090,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TemporalIndex",
            "creator": "MRSC"
          },
          "k4241": {
            "tag": 0x01191091,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "TemporalValue",
            "creator": "MRSC"
          },
          "k4256": {
            "tag": 0x011910a0,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_GRAD_X",
            "creator": "MRSC"
          },
          "k4261": {
            "tag": 0x011910a5,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_PW_Z",
            "creator": "MRSC"
          },
          "k4262": {
            "tag": 0x011910a6,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_TIME_X",
            "creator": "MRSC"
          },
          "k4263": {
            "tag": 0x011910a7,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_TIME_Y",
            "creator": "MRSC"
          },
          "k4264": {
            "tag": 0x011910a8,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DIFF_TIME_Z",
            "creator": "MRSC"
          },
          "k4265": {
            "tag": 0x011910a9,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "DiffBValues",
            "creator": "MRSC"
          },
          "k4304": {
            "tag": 0x011910d0,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "CheckString",
            "creator": "MRSC"
          },
          "k4305": {
            "tag": 0x011910d1,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "Source",
            "creator": "MRSC"
          },
          "k4336": {
            "tag": 0x011910f0,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kKeep,
            "description": "SampleHeader",
            "creator": "MRSC"
          },
          "k4351": {
            "tag": 0x011910ff,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "UserInfo",
            "creator": "MRSC"
          },
          "k4352": {
            "tag": 0x01191100,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FitMapModuleVersion",
            "creator": "MRSC"
          },
          "k4353": {
            "tag": 0x01191101,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceFileNames",
            "creator": "MRSC"
          },
          "k4354": {
            "tag": 0x01191102,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceVolumeIndices",
            "creator": "MRSC"
          },
          "k4355": {
            "tag": 0x01191103,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ParameterValues",
            "creator": "MRSC"
          },
          "k4356": {
            "tag": 0x01191104,
            "vr": VR.kAT,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ParameterTag",
            "creator": "MRSC"
          },
          "k4357": {
            "tag": 0x01191105,
            "vr": VR.kUI,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceFileUIDs",
            "creator": "MRSC"
          },
          "k4358": {
            "tag": 0x01191106,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "SourceFileDirectory",
            "creator": "MRSC"
          },
          "k4359": {
            "tag": 0x01191107,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SourceDataInPlaceFlag",
            "creator": "MRSC"
          },
          "k4360": {
            "tag": 0x01191108,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ResultVolumeindices",
            "creator": "MRSC"
          },
          "k4361": {
            "tag": 0x01191109,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SMOOTHBoxcarAverageKernel",
            "creator": "MRSC"
          },
          "k4364": {
            "tag": 0x0119110c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FitICFunction",
            "creator": "MRSC"
          },
          "k4365": {
            "tag": 0x0119110d,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FitFormulaProcedure",
            "creator": "MRSC"
          },
          "k4366": {
            "tag": 0x0119110e,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FittingProgram",
            "creator": "MRSC"
          },
          "k4367": {
            "tag": 0x0119110f,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FittingProgramVersion",
            "creator": "MRSC"
          },
          "k4368": {
            "tag": 0x01191110,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FitType",
            "creator": "MRSC"
          },
          "k4369": {
            "tag": 0x01191111,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SetICFlag",
            "creator": "MRSC"
          },
          "k4370": {
            "tag": 0x01191112,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "InitialConditions",
            "creator": "MRSC"
          },
          "k4371": {
            "tag": 0x01191113,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "FitMapScaleFactors",
            "creator": "MRSC"
          },
          "k4384": {
            "tag": 0x01191120,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ThresholdingFlag",
            "creator": "MRSC"
          },
          "k4385": {
            "tag": 0x01191121,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Threshold",
            "creator": "MRSC"
          },
          "k4386": {
            "tag": 0x01191122,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MaskCompression",
            "creator": "MRSC"
          },
          "k4387": {
            "tag": 0x01191123,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kKeep,
            "description": "FitMapMask",
            "creator": "MRSC"
          },
          "k4388": {
            "tag": 0x01191124,
            "vr": VR.kOB,
            "vm": null,
            "action": Action.kKeep,
            "description": "FitMapPntThreshMap",
            "creator": "MRSC"
          },
          "k4389": {
            "tag": 0x01191125,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelMaskCheckString",
            "creator": "MRSC"
          },
          "k4390": {
            "tag": 0x01191126,
            "vr": VR.kST,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PixelMaskSource",
            "creator": "MRSC"
          },
          "k4400": {
            "tag": 0x01191130,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "UpperFitLimit",
            "creator": "MRSC"
          },
          "k4401": {
            "tag": 0x01191131,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "LowerFitLimit",
            "creator": "MRSC"
          },
          "k4416": {
            "tag": 0x01191140,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "GradientMatrixMethod",
            "creator": "MRSC"
          },
          "k4417": {
            "tag": 0x01191141,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "GradientMatrix",
            "creator": "MRSC"
          },
          "k4480": {
            "tag": 0x01191180,
            "vr": VR.kSQ,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "FitMapSQ",
            "creator": "MRSC"
          },
          "k4481": {
            "tag": 0x01191181,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "fmSQFitNumber",
            "creator": "MRSC"
          },
          "k4512": {
            "tag": 0x011911a0,
            "vr": VR.kCS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PhantCalibType",
            "creator": "MRSC"
          },
          "k4513": {
            "tag": 0x011911a1,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "PhantCalibNParms",
            "creator": "MRSC"
          },
          "k4514": {
            "tag": 0x011911a2,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PhantCalibParam",
            "creator": "MRSC"
          },
          "k4515": {
            "tag": 0x011911a3,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PhantGoodFlags",
            "creator": "MRSC"
          },
          "k4516": {
            "tag": 0x011911a4,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PhantValues",
            "creator": "MRSC"
          },
          "k4517": {
            "tag": 0x011911a5,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PhantRefValues",
            "creator": "MRSC"
          },
          "k4608": {
            "tag": 0x01191200,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ImageProcessStatus",
            "creator": "MRSC"
          },
          "k4609": {
            "tag": 0x01191201,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SourceID",
            "creator": "MRSC"
          },
          "k4610": {
            "tag": 0x01191202,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "Group Version",
            "creator": "MRSC"
          },
          "k4611": {
            "tag": 0x01191203,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "ExecuteOnRead",
            "creator": "MRSC"
          },
          "k4612": {
            "tag": 0x01191204,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NumberPasses",
            "creator": "MRSC"
          },
          "k4614": {
            "tag": 0x01191206,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "NumProcesses",
            "creator": "MRSC"
          },
          "k4616": {
            "tag": 0x01191208,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "GroupExecuteOrder",
            "creator": "MRSC"
          },
          "k4618": {
            "tag": 0x0119120a,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "NumberTransforms",
            "creator": "MRSC"
          },
          "k4619": {
            "tag": 0x0119120b,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "NumberProcesses",
            "creator": "MRSC"
          },
          "k4625": {
            "tag": 0x01191211,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "InvertImage",
            "creator": "MRSC"
          },
          "k4626": {
            "tag": 0x01191212,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SkeletonizeImage",
            "creator": "MRSC"
          },
          "k4627": {
            "tag": 0x01191213,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "IsotropicResolution",
            "creator": "MRSC"
          },
          "k4640": {
            "tag": 0x01191220,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "MedianFilterKernel",
            "creator": "MRSC"
          },
          "k4641": {
            "tag": 0x01191221,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "BackgroundCorrection",
            "creator": "MRSC"
          },
          "k4642": {
            "tag": 0x01191222,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "UnSharpMasking",
            "creator": "MRSC"
          },
          "k4643": {
            "tag": 0x01191223,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "LocalThresholdKernel",
            "creator": "MRSC"
          },
          "k4644": {
            "tag": 0x01191224,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "AbsoluteLimits",
            "creator": "MRSC"
          },
          "k4645": {
            "tag": 0x01191225,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "PercentileLimits",
            "creator": "MRSC"
          },
          "k4646": {
            "tag": 0x01191226,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "InPlaneRotation",
            "creator": "MRSC"
          },
          "k4647": {
            "tag": 0x01191227,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ByteScaleMinMaxTop",
            "creator": "MRSC"
          },
          "k4648": {
            "tag": 0x01191228,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "GlobalThreshold",
            "creator": "MRSC"
          },
          "k4649": {
            "tag": 0x01191229,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "IntensityScale",
            "creator": "MRSC"
          },
          "k4656": {
            "tag": 0x01191230,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "ReSample",
            "creator": "MRSC"
          },
          "k4657": {
            "tag": 0x01191231,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "OrthogonalReFormat",
            "creator": "MRSC"
          },
          "k4658": {
            "tag": 0x01191232,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "REBIN",
            "creator": "MRSC"
          },
          "k4659": {
            "tag": 0x01191233,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "WhiteTopHat",
            "creator": "MRSC"
          },
          "k4660": {
            "tag": 0x01191234,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "HistEqual",
            "creator": "MRSC"
          },
          "k4661": {
            "tag": 0x01191235,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "Crop",
            "creator": "MRSC"
          },
          "k4662": {
            "tag": 0x01191236,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "LPCoil",
            "creator": "MRSC"
          },
          "k4672": {
            "tag": 0x01191240,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCVersion",
            "creator": "MRSC"
          },
          "k4673": {
            "tag": 0x01191241,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCFilename",
            "creator": "MRSC"
          },
          "k4674": {
            "tag": 0x01191242,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "LPCCBandwidth",
            "creator": "MRSC"
          },
          "k4675": {
            "tag": 0x01191243,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCNoise_factor",
            "creator": "MRSC"
          },
          "k4676": {
            "tag": 0x01191244,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCNoise_level",
            "creator": "MRSC"
          },
          "k4677": {
            "tag": 0x01191245,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCNoise_mode",
            "creator": "MRSC"
          },
          "k4678": {
            "tag": 0x01191246,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCDirection",
            "creator": "MRSC"
          },
          "k4679": {
            "tag": 0x01191247,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCEdge_fill",
            "creator": "MRSC"
          },
          "k4680": {
            "tag": 0x01191248,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCMean_fill",
            "creator": "MRSC"
          },
          "k4681": {
            "tag": 0x01191249,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCPixelsearch",
            "creator": "MRSC"
          },
          "k4682": {
            "tag": 0x0119124a,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCIntensity_scale",
            "creator": "MRSC"
          },
          "k4683": {
            "tag": 0x0119124b,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCThreed",
            "creator": "MRSC"
          },
          "k4684": {
            "tag": 0x0119124c,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCRoi_mask",
            "creator": "MRSC"
          },
          "k4685": {
            "tag": 0x0119124d,
            "vr": VR.kIS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "LPCCMask_slices",
            "creator": "MRSC"
          },
          "k4686": {
            "tag": 0x0119124e,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCSlice_pad",
            "creator": "MRSC"
          },
          "k4687": {
            "tag": 0x0119124f,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCSave_type",
            "creator": "MRSC"
          },
          "k4688": {
            "tag": 0x01191250,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCFilter_type",
            "creator": "MRSC"
          },
          "k4689": {
            "tag": 0x01191251,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "LPCCMean_Multiplier",
            "creator": "MRSC"
          },
          "k4704": {
            "tag": 0x01191260,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionIncrement",
            "creator": "MRSC"
          },
          "k4705": {
            "tag": 0x01191261,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionVersion",
            "creator": "MRSC"
          },
          "k4706": {
            "tag": 0x01191262,
            "vr": VR.kDA,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionCorr_date",
            "creator": "MRSC"
          },
          "k4707": {
            "tag": 0x01191263,
            "vr": VR.kTM,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionCorr_time",
            "creator": "MRSC"
          },
          "k4708": {
            "tag": 0x01191264,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionMethod",
            "creator": "MRSC"
          },
          "k4709": {
            "tag": 0x01191265,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionOrigin",
            "creator": "MRSC"
          },
          "k4710": {
            "tag": 0x01191266,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionAxis_cos",
            "creator": "MRSC"
          },
          "k4711": {
            "tag": 0x01191267,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionNumber",
            "creator": "MRSC"
          },
          "k4712": {
            "tag": 0x01191268,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionSid",
            "creator": "MRSC"
          },
          "k4713": {
            "tag": 0x01191269,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionRange",
            "creator": "MRSC"
          },
          "k4714": {
            "tag": 0x0119126a,
            "vr": VR.kFD,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionSa_value",
            "creator": "MRSC"
          },
          "k4715": {
            "tag": 0x0119126b,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionAxis_flag",
            "creator": "MRSC"
          },
          "k4716": {
            "tag": 0x0119126c,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionSample_number",
            "creator": "MRSC"
          },
          "k4717": {
            "tag": 0x0119126d,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_SID",
            "creator": "MRSC"
          },
          "k4718": {
            "tag": 0x0119126e,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Version",
            "creator": "MRSC"
          },
          "k4719": {
            "tag": 0x0119126f,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Rot_axis_off",
            "creator": "MRSC"
          },
          "k4720": {
            "tag": 0x01191270,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Angle_deg",
            "creator": "MRSC"
          },
          "k4721": {
            "tag": 0x01191271,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Offset_in",
            "creator": "MRSC"
          },
          "k4722": {
            "tag": 0x01191272,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Plane_cos_ref",
            "creator": "MRSC"
          },
          "k4723": {
            "tag": 0x01191273,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Lps_ref",
            "creator": "MRSC"
          },
          "k4724": {
            "tag": 0x01191274,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Order",
            "creator": "MRSC"
          },
          "k4725": {
            "tag": 0x01191275,
            "vr": VR.kDS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Coeff",
            "creator": "MRSC"
          },
          "k4726": {
            "tag": 0x01191276,
            "vr": VR.kDA,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Coeff_date",
            "creator": "MRSC"
          },
          "k4727": {
            "tag": 0x01191277,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SACoilCorrectionParams_Coeff_src",
            "creator": "MRSC"
          },
          "k4768": {
            "tag": 0x011912a0,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltSid",
            "creator": "MRSC"
          },
          "k4769": {
            "tag": 0x011912a1,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltPath",
            "creator": "MRSC"
          },
          "k4770": {
            "tag": 0x011912a2,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltMax_images",
            "creator": "MRSC"
          },
          "k4771": {
            "tag": 0x011912a3,
            "vr": VR.kIS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "MinVarFiltId_locs",
            "creator": "MRSC"
          },
          "k4772": {
            "tag": 0x011912a4,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltScript_name",
            "creator": "MRSC"
          },
          "k4773": {
            "tag": 0x011912a5,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltSave_masks",
            "creator": "MRSC"
          },
          "k4774": {
            "tag": 0x011912a6,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltSave_idf",
            "creator": "MRSC"
          },
          "k4775": {
            "tag": 0x011912a7,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltMask",
            "creator": "MRSC"
          },
          "k4776": {
            "tag": 0x011912a8,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltIdfmask",
            "creator": "MRSC"
          },
          "k4777": {
            "tag": 0x011912a9,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltImage",
            "creator": "MRSC"
          },
          "k4778": {
            "tag": 0x011912aa,
            "vr": VR.kLO,
            "vm": null,
            "action": Action.kKeep,
            "description": "MinVarFiltIdfimages",
            "creator": "MRSC"
          },
          "k4779": {
            "tag": 0x011912ab,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltOutput_file",
            "creator": "MRSC"
          },
          "k4780": {
            "tag": 0x011912ac,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltNum_loops",
            "creator": "MRSC"
          },
          "k4781": {
            "tag": 0x011912ad,
            "vr": VR.kIS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "MinVarFiltKernel",
            "creator": "MRSC"
          },
          "k4782": {
            "tag": 0x011912ae,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltLimit_sliceFlag",
            "creator": "MRSC"
          },
          "k4783": {
            "tag": 0x011912af,
            "vr": VR.kSS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "MinVarFiltSlice_limits",
            "creator": "MRSC"
          },
          "k4784": {
            "tag": 0x011912b0,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltOutput_type",
            "creator": "MRSC"
          },
          "k4785": {
            "tag": 0x011912b1,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltOutput_ftype",
            "creator": "MRSC"
          },
          "k4786": {
            "tag": 0x011912b2,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltScaling",
            "creator": "MRSC"
          },
          "k4787": {
            "tag": 0x011912b3,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltScript",
            "creator": "MRSC"
          },
          "k4788": {
            "tag": 0x011912b4,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MinVarFiltLog",
            "creator": "MRSC"
          },
          "k5120": {
            "tag": 0x01191400,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsSid",
            "creator": "MRSC"
          },
          "k5121": {
            "tag": 0x01191401,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsUID",
            "creator": "MRSC"
          },
          "k5122": {
            "tag": 0x01191402,
            "vr": VR.kTM,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsTime",
            "creator": "MRSC"
          },
          "k5123": {
            "tag": 0x01191403,
            "vr": VR.kDA,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsDate",
            "creator": "MRSC"
          },
          "k5124": {
            "tag": 0x01191404,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsVersion",
            "creator": "MRSC"
          },
          "k5125": {
            "tag": 0x01191405,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsVolume",
            "creator": "MRSC"
          },
          "k5126": {
            "tag": 0x01191406,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsOrtho",
            "creator": "MRSC"
          },
          "k5127": {
            "tag": 0x01191407,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsMaskedFlag",
            "creator": "MRSC"
          },
          "k5128": {
            "tag": 0x01191408,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsSubtractVolume",
            "creator": "MRSC"
          },
          "k5136": {
            "tag": 0x01191410,
            "vr": VR.kUL,
            "vm": null,
            "action": Action.kKeep,
            "description": "MIPsProtectPixels",
            "creator": "MRSC"
          },
          "k5137": {
            "tag": 0x01191411,
            "vr": VR.kUL,
            "vm": null,
            "action": Action.kKeep,
            "description": "MIPsIgnorePixels",
            "creator": "MRSC"
          },
          "k5138": {
            "tag": 0x01191412,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "MIPsProjectFlag",
            "creator": "MRSC"
          },
          "k5139": {
            "tag": 0x01191413,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "MIPsProjectPlaneIndices",
            "creator": "MRSC"
          },
          "k5376": {
            "tag": 0x01191500,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERSid",
            "creator": "MRSC"
          },
          "k5377": {
            "tag": 0x01191501,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERUID",
            "creator": "MRSC"
          },
          "k5378": {
            "tag": 0x01191502,
            "vr": VR.kTM,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERTime",
            "creator": "MRSC"
          },
          "k5379": {
            "tag": 0x01191503,
            "vr": VR.kDA,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERDate",
            "creator": "MRSC"
          },
          "k5380": {
            "tag": 0x01191504,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERVersion",
            "creator": "MRSC"
          },
          "k5381": {
            "tag": 0x01191505,
            "vr": VR.kIS,
            "vm": VM.k3,
            "action": Action.kKeep,
            "description": "SERTimePoints",
            "creator": "MRSC"
          },
          "k5382": {
            "tag": 0x01191506,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERByteScaled",
            "creator": "MRSC"
          },
          "k5383": {
            "tag": 0x01191507,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERBackground",
            "creator": "MRSC"
          },
          "k5384": {
            "tag": 0x01191508,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERThreshold",
            "creator": "MRSC"
          },
          "k5385": {
            "tag": 0x01191509,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERMaximum",
            "creator": "MRSC"
          },
          "k5386": {
            "tag": 0x0119150a,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERMinConPixels",
            "creator": "MRSC"
          },
          "k5387": {
            "tag": 0x0119150b,
            "vr": VR.kIS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERCorrectFlag",
            "creator": "MRSC"
          },
          "k5388": {
            "tag": 0x0119150c,
            "vr": VR.kDS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "SERAcqTimes",
            "creator": "MRSC"
          },
          "k5389": {
            "tag": 0x0119150d,
            "vr": VR.kDS,
            "vm": VM.k2,
            "action": Action.kKeep,
            "description": "SERTargetTimes",
            "creator": "MRSC"
          },
          "k5390": {
            "tag": 0x0119150e,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERTimeTolerance",
            "creator": "MRSC"
          },
          "k5391": {
            "tag": 0x0119150f,
            "vr": VR.kDS,
            "vm": VM.k4,
            "action": Action.kKeep,
            "description": "SERCorrectionParams",
            "creator": "MRSC"
          },
          "k5392": {
            "tag": 0x01191510,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERImageType",
            "creator": "MRSC"
          },
          "k5393": {
            "tag": 0x01191511,
            "vr": VR.kIS,
            "vm": null,
            "action": Action.kKeep,
            "description": "SEROffsets",
            "creator": "MRSC"
          },
          "k5394": {
            "tag": 0x01191512,
            "vr": VR.kLO,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERMaskFileName",
            "creator": "MRSC"
          },
          "k5395": {
            "tag": 0x01191513,
            "vr": VR.kDS,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERMaskChecksum",
            "creator": "MRSC"
          },
          "k5396": {
            "tag": 0x01191514,
            "vr": VR.kUI,
            "vm": VM.k1,
            "action": Action.kKeep,
            "description": "SERMaskFileUID",
            "creator": "MRSC"
          },
        }
      }
    }
  }
};
