// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.

// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.

import 'package:tag/tag.dart';

import 'action.dart';

class GEMSPrivateTag extends PrivateCreatorTag {
  static const String manufacturerId = "GEMS";
  static const Modality modality = Modality.kPT;
  final String creatorId = "GEMS_PETD_01";

  const GEMSPrivateElement(int tag, VR vr, VM vm, Action action, String description)
      : super(tag, vr, vm, action, description);

  String get json => super.toJson(creatorId);

  static const k0010 =
  const GEMSPrivateElement(0x00090010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k1001 =
  const GEMSPrivateElement(
      0x00091001, VR.kLO, VM.k2, Action.kReplace, "GE Discovery PET Implementation Version Name");
  static const k1002 =
  const GEMSPrivateElement(0x00091002, VR.kLO, VM.k1, Action.kRemove, "PET patient_id");
  static const k1003 = const GEMSPrivateElement(0x00091003, VR.kSH, VM.k1, Action.kKeep, "PET "
      "compatible_version");
  static const k1004 = const GEMSPrivateElement(0x00091004, VR.kSH, VM.k1, Action.kKeep, "PET "
      "Patient.software_version");
  static const k1005 = const GEMSPrivateElement(0x00091005, VR.kDT, VM.k1, Action.kReplace, "PET "
      "patient_datetime");
  static const k1006 = const GEMSPrivateElement(0x00091006, VR.kSL, VM.k1, Action.kKeep, "PET type");
  static const k1007 = const GEMSPrivateElement(0x00091007, VR.kUI, VM.k1, Action.kReplace, "PET "
      "exam_id");
  static const k1008 = const GEMSPrivateElement(0x00091008, VR.kSH, VM.k1, Action.kReplace, "PET "
      "compatible_version");
  static const k1009 = const GEMSPrivateElement(0x00091009, VR.kSH, VM.k1, Action.kReplace, "PET "
      "software_version");
  static const k100a = const GEMSPrivateElement(0x0009100a, VR.kUI, VM.k1, Action.kReplace, "PET "
      "scan_id");
  static const k100b = const GEMSPrivateElement(0x0009100b, VR.kSH, VM.k1, Action.kReplace, "PET "
      "compatible_version");
  static const k100c = const GEMSPrivateElement(0x0009100c, VR.kSH, VM.k1, Action.kReplace, "PET "
      "software_version");
  static const k100d = const GEMSPrivateElement(0x0009100d, VR.kDT, VM.k1, Action.kReplace, "PET "
      "scan_datetime");
  static const k100e = const GEMSPrivateElement(0x0009100e, VR.kDT, VM.k1, Action.kReplace, "PET "
      "scan_ready");
  static const k100f = const GEMSPrivateElement(0x0009100f, VR.kST, VM.k1, Action.kReplace, "PET "
      "scan_description");
  static const k1010 = const GEMSPrivateElement(0x00091010, VR.kLO, VM.k1, Action.kRemove, "PET "
      "hospital_name");
  static const k1011 = const GEMSPrivateElement(0x00091011, VR.kLO, VM.k1, Action.kReplace, "PET "
      "scanner_desc");
  static const k1012 = const GEMSPrivateElement(0x00091012, VR.kLO, VM.k1, Action.kReplace, "PET "
      "manufacturer");
  static const k1013 = const GEMSPrivateElement(0x00091013, VR.kUI, VM.k1, Action.kReplace, "PET "
      "for_identifier");
  static const k1014 = const GEMSPrivateElement(0x00091014, VR.kLO, VM.k1, Action.kReplace, "PET "
      "landmark_name");
  static const k1015 = const GEMSPrivateElement(0x00091015, VR.kSH, VM.k1, Action.kReplace, "PET "
      "landmark_abbrev");
  static const k1016 = const GEMSPrivateElement(0x00091016, VR.kSL, VM.k1, Action.kKeep, "PET "
      "patient_position");
  static const k1017 = const GEMSPrivateElement(0x00091017, VR.kSL, VM.k1, Action.kKeep, "PET "
      "scan_perspective");
  static const k1018 = const GEMSPrivateElement(0x00091018, VR.kSL, VM.k1, Action.kKeep, "PET "
      "scan_type");
  static const k1019 = const GEMSPrivateElement(0x00091019, VR.kSL, VM.k1, Action.kKeep, "PET "
      "scan_mode");
  static const k101a = const GEMSPrivateElement(0x0009101a, VR.kSL, VM.k1, Action.kKeep, "PET "
      "start_condition");
  static const k101b = const GEMSPrivateElement(0x0009101b, VR.kSL, VM.k1, Action.kKeep, "PET "
      "start_cond_data");
  static const k101c = const GEMSPrivateElement(0x0009101c, VR.kSL, VM.k1, Action.kKeep, "PET "
      "sel_stop_cond");
  static const k101d = const GEMSPrivateElement(0x0009101d, VR.kSL, VM.k1, Action.kKeep, "PET "
      "sel_stop_cond_data");
  static const k101e = const GEMSPrivateElement(0x0009101e, VR.kSL, VM.k1, Action.kKeep, "PET "
      "collect_deadtime");
  static const k101f = const GEMSPrivateElement(0x0009101f, VR.kSL, VM.k1, Action.kKeep, "PET "
      "collect_singles");
  static const k1020 = const GEMSPrivateElement(0x00091020, VR.kSL, VM.k1, Action.kKeep, "PET "
      "collect_countrate");
  static const k1021 = const GEMSPrivateElement(0x00091021, VR.kSL, VM.k1, Action.kKeep, "PET "
      "countrate_period");
  static const k1022 = const GEMSPrivateElement(0x00091022, VR.kSL, VM.k1, Action.kKeep, "PET "
      "delayed_events");
  static const k1023 = const GEMSPrivateElement(0x00091023, VR.kSL, VM.k1, Action.kKeep, "PET "
      "delayed_bias");
  static const k1024 = const GEMSPrivateElement(0x00091024, VR.kSL, VM.k1, Action.kKeep, "PET "
      "word_size");
  static const k1025 = const GEMSPrivateElement(0x00091025, VR.kSL, VM.k1, Action.kKeep, "PET "
      "axial_acceptance");
  static const k1026 = const GEMSPrivateElement(0x00091026, VR.kSL, VM.k1, Action.kKeep, "PET "
      "axial_angle_3d");
  static const k1027 = const GEMSPrivateElement(0x00091027, VR.kSL, VM.k1, Action.kKeep, "PET "
      "theta_compression");
  static const k1028 = const GEMSPrivateElement(0x00091028, VR.kSL, VM.k1, Action.kKeep, "PET "
      "axial_compression");
  static const k1029 = const GEMSPrivateElement(0x00091029, VR.kFL, VM.k1, Action.kKeep, "PET "
      "gantry_tilt_angle");
  static const k102a = const GEMSPrivateElement(0x0009102a, VR.kSL, VM.k1, Action.kKeep, "PET "
      "collimation");
  static const k102b = const GEMSPrivateElement(0x0009102b, VR.kSL, VM.k1, Action.kKeep, "PET "
      "scan_fov");
  static const k102c = const GEMSPrivateElement(0x0009102c, VR.kSL, VM.k1, Action.kKeep, "PET "
      "axial_fov");
  static const k102d = const GEMSPrivateElement(0x0009102d, VR.kSL, VM.k1, Action.kKeep, "PET "
      "event_separation");
  static const k102e = const GEMSPrivateElement(0x0009102e, VR.kSL, VM.k1, Action.kKeep, "PET "
      "mask_width");
  static const k102f = const GEMSPrivateElement(0x0009102f, VR.kSL, VM.k1, Action.kKeep, "PET "
      "binning_mode");
  static const k = const GEMSPrivateElement(
      0x00091030, VR.kSL, VM.k1, Action.kKeep, "PET trig_rej_method");
  static const k = const GEMSPrivateElement(
      0x00091031, VR.kSL, VM.k1, Action.kKeep, "PET number_for_reject");
  static const k = const GEMSPrivateElement(
      0x00091032, VR.kSL, VM.k1, Action.kKeep, "PET lower_reject_limit");
  static const k = const GEMSPrivateElement(
      0x00091033, VR.kSL, VM.k1, Action.kKeep, "PET upper_reject_limit");
  static const k = const GEMSPrivateElement(
      0x00091034, VR.kSL, VM.k1, Action.kKeep, "PET triggers_acquired");
  static const k = const GEMSPrivateElement(
      0x00091035, VR.kSL, VM.k1, Action.kKeep, "PET triggers_rejected");
  static const k = const GEMSPrivateElement(
      0x00091036, VR.kLO, VM.k1, Action.kReplace, "PET tracer_name");
  static const k = const GEMSPrivateElement(
      0x00091037, VR.kLO, VM.k1, Action.kReplace, "PET batch_description");
  static const k = const GEMSPrivateElement(
      0x00091038, VR.kFL, VM.k1, Action.kKeep, "PET tracer_activity");
  static const k = const GEMSPrivateElement(
      0x00091039, VR.kDT, VM.k1, Action.kReplace, "PET meas_datetime");
  static const k = const GEMSPrivateElement(
      0x0009103a, VR.kFL, VM.k1, Action.kKeep, "PET pre_inj_volume");
  static const k = const GEMSPrivateElement(
      0x0009103b, VR.kDT, VM.k1, Action.kReplace, "PET admin_datetime");
  static const k = const GEMSPrivateElement(
      0x0009103c, VR.kFL, VM.k1, Action.kKeep, "PET post_inj_activity");
  static const k = const GEMSPrivateElement(
      0x0009103d, VR.kDT, VM.k1, Action.kReplace, "PET post_inj_datetime");
  static const k = const GEMSPrivateElement(
      0x0009103e, VR.kSH, VM.k1, Action.kReplace, "PET radionuclide_name");
  static const k = const GEMSPrivateElement(
      0x0009103f, VR.kFL, VM.k1, Action.kKeep, "PET half_life");
  static const k = const GEMSPrivateElement(
      0x00091040, VR.kFL, VM.k1, Action.kKeep, "PET positron_fraction");
  static const k = const GEMSPrivateElement(
      0x00091041, VR.kSL, VM.k1, Action.kKeep, "PET source1_holder");
  static const k = const GEMSPrivateElement(
      0x00091042, VR.kFL, VM.k1, Action.kKeep, "PET source1_activity");
  static const k = const GEMSPrivateElement(
      0x00091043, VR.kDT, VM.k1, Action.kReplace, "PET source1_meas_dt");
  static const k = const GEMSPrivateElement(
      0x00091044, VR.kSH, VM.k1, Action.kReplace, "PET source1_radnuclide");
  static const k = const GEMSPrivateElement(
      0x00091045, VR.kFL, VM.k1, Action.kKeep, "PET source1_half_life");
  static const k = const GEMSPrivateElement(
      0x00091046, VR.kSL, VM.k1, Action.kKeep, "PET source2_holder");
  static const k = const GEMSPrivateElement(
      0x00091047, VR.kFL, VM.k1, Action.kKeep, "PET source2_activity");
  static const k = const GEMSPrivateElement(
      0x00091048, VR.kDT, VM.k1, Action.kReplace, "PET source2_meas_dt");
  static const k = const GEMSPrivateElement(
      0x00091049, VR.kSH, VM.k1, Action.kKeep, "PET source2_radnuclide");
  static const k = const GEMSPrivateElement(
      0x0009104a, VR.kFL, VM.k1, Action.kKeep, "PET source2_half_life");
  static const k = const GEMSPrivateElement(
      0x0009104b, VR.kSL, VM.k1, Action.kKeep, "PET source_speed");
  static const k = const GEMSPrivateElement(
      0x0009104c, VR.kFL, VM.k1, Action.kKeep, "PET source_location");
  static const k = const GEMSPrivateElement(
      0x0009104d, VR.kSL, VM.k1, Action.kKeep, "PET emission_present");
  static const k = const GEMSPrivateElement(
      0x0009104e, VR.kSL, VM.k1, Action.kKeep, "PET lower_axial_acc");
  static const k = const GEMSPrivateElement(
      0x0009104f, VR.kSL, VM.k1, Action.kKeep, "PET upper_axial_acc");
  static const k = const GEMSPrivateElement(
      0x00091050, VR.kSL, VM.k1, Action.kKeep, "PET lower_coinc_limit");
  static const k = const GEMSPrivateElement(
      0x00091051, VR.kSL, VM.k1, Action.kKeep, "PET upper_coinc_limit");
  static const k = const GEMSPrivateElement(
      0x00091052, VR.kSL, VM.k1, Action.kKeep, "PET coinc_delay_offset");
  static const k = const GEMSPrivateElement(
      0x00091053, VR.kSL, VM.k1, Action.kKeep, "PET coinc_output_mode");
  static const k = const GEMSPrivateElement(
      0x00091054, VR.kSL, VM.k1, Action.kKeep, "PET upper_energy_limit");
  static const k = const GEMSPrivateElement(
      0x00091055, VR.kSL, VM.k1, Action.kKeep, "PET lower_energy_limit");
  static const k = const GEMSPrivateElement(
      0x00091056, VR.kUI, VM.k1, Action.kReplace, "PET normal_cal_id");
  static const k = const GEMSPrivateElement(
      0x00091057, VR.kUI, VM.k1, Action.kReplace, "PET normal_2d_cal_id");
  static const k = const GEMSPrivateElement(
      0x00091058, VR.kUI, VM.k1, Action.kReplace, "PET blank_cal_id");
  static const k = const GEMSPrivateElement(
      0x00091059, VR.kUI, VM.k1, Action.kReplace, "PET wc_cal_id");
  static const k = const GEMSPrivateElement(0x0009105a, VR.kSL, VM.k1, Action.kKeep, "PET derived");
  static const k = const GEMSPrivateElement(
      0x0009105b, VR.kLO, VM.k1, Action.kReplace, "PET contrast_agent");
  static const k = const GEMSPrivateElement(
      0x0009105c, VR.kUI, VM.k1, Action.kReplace, "PET frame_id");
  static const k = const GEMSPrivateElement(
      0x0009105d, VR.kUI, VM.k1, Action.kReplace, "PET scan_id");
  static const k = const GEMSPrivateElement(
      0x0009105e, VR.kUI, VM.k1, Action.kReplace, "PET exam_id");
  static const k = const GEMSPrivateElement(
      0x0009105f, VR.kLO, VM.k1, Action.kRemove, "PET patient_id");
  static const k = const GEMSPrivateElement(
      0x00091060, VR.kSH, VM.k1, Action.kReplace, "PET compatible_version");
  static const k = const GEMSPrivateElement(
      0x00091061, VR.kSH, VM.k1, Action.kReplace, "PET software_version");
  static const k = const GEMSPrivateElement(
      0x00091062, VR.kST, VM.k1, Action.kReplace, "PET where_is_frame");
  static const k = const GEMSPrivateElement(
      0x00091063, VR.kSL, VM.k1, Action.kKeep, "PET frame_size");
  static const k = const GEMSPrivateElement(
      0x00091064, VR.kSL, VM.k1, Action.kKeep, "PET file_exists");
  static const k = const GEMSPrivateElement(
      0x00091065, VR.kSL, VM.k1, Action.kKeep, "PET patient_entry");
  static const k = const GEMSPrivateElement(
      0x00091066, VR.kFL, VM.k1, Action.kKeep, "PET table_height");
  static const k = const GEMSPrivateElement(
      0x00091067, VR.kFL, VM.k1, Action.kKeep, "PET table_z_position");
  static const k = const GEMSPrivateElement(
      0x00091068, VR.kDT, VM.k1, Action.kReplace, "PET landmark_datetime");
  static const k = const GEMSPrivateElement(
      0x00091069, VR.kSL, VM.k1, Action.kKeep, "PET slice_count");
  static const k = const GEMSPrivateElement(
      0x0009106a, VR.kFL, VM.k1, Action.kKeep, "PET start_location");
  static const k = const GEMSPrivateElement(
      0x0009106b, VR.kSL, VM.k1, Action.kKeep, "PET acq_delay");
  static const k = const GEMSPrivateElement(
      0x0009106c, VR.kDT, VM.k1, Action.kReplace, "PET acq_start");
  static const k = const GEMSPrivateElement(
      0x0009106d, VR.kSL, VM.k1, Action.kKeep, "PET acq_duration");
  static const k = const GEMSPrivateElement(
      0x0009106e, VR.kSL, VM.k1, Action.kKeep, "PET acq_bin_dur");
  static const k = const GEMSPrivateElement(
      0x0009106f, VR.kSL, VM.k1, Action.kKeep, "PET acq_bin_start");
  static const k = const GEMSPrivateElement(
      0x00091070, VR.kSL, VM.k1, Action.kKeep, "PET actual_stop_cond");
  static const k = const GEMSPrivateElement(
      0x00091071, VR.kFD, VM.k1, Action.kKeep, "PET total_prompts");
  static const k = const GEMSPrivateElement(
      0x00091072, VR.kFD, VM.k1, Action.kKeep, "PET total_delays");
  static const k = const GEMSPrivateElement(
      0x00091073, VR.kSL, VM.k1, Action.kKeep, "PET frame_valid");
  static const k = const GEMSPrivateElement(
      0x00091074, VR.kSL, VM.k1, Action.kKeep, "PET validity_info");
  static const k = const GEMSPrivateElement(
      0x00091075, VR.kSL, VM.k1, Action.kKeep, "PET archived");
  static const k = const GEMSPrivateElement(
      0x00091076, VR.kSL, VM.k1, Action.kKeep, "PET compression");
  static const k = const GEMSPrivateElement(
      0x00091077, VR.kSL, VM.k1, Action.kKeep, "PET uncompressed_size");
  static const k = const GEMSPrivateElement(
      0x00091078, VR.kSL, VM.k1, Action.kKeep, "PET accum_bin_dur");
  static const k = const GEMSPrivateElement(
      0x00091079, VR.kSH, VM.k1, Action.kReplace, "PET compatible_version");
  static const k = const GEMSPrivateElement(
      0x0009107a, VR.kSH, VM.k1, Action.kReplace, "PET software_version");
  static const k = const GEMSPrivateElement(
      0x0009107b, VR.kDT, VM.k1, Action.kReplace, "PET is_datetime");
  static const k = const GEMSPrivateElement(
      0x0009107c, VR.kSL, VM.k1, Action.kKeep, "PET is_source");
  static const k = const GEMSPrivateElement(
      0x0009107d, VR.kSL, VM.k1, Action.kKeep, "PET is_contents");
  static const k = const GEMSPrivateElement(0x0009107e, VR.kSL, VM.k1, Action.kKeep, "PET is_type");
  static const k = const GEMSPrivateElement(
      0x0009107f, VR.kDS, VM.k1, Action.kKeep, "PET is_reference");
  static const k = const GEMSPrivateElement(
      0x00091080, VR.kSL, VM.k1, Action.kKeep, "PET multi_patient");
  static const k = const GEMSPrivateElement(
      0x00091081, VR.kSL, VM.k1, Action.kKeep, "PET number_of_normals");
  static const k = const GEMSPrivateElement(
      0x00091082, VR.kUI, VM.k1, Action.kReplace, "PET color_map_id");
  static const k = const GEMSPrivateElement(
      0x00091083, VR.kSL, VM.k1, Action.kKeep, "PET window_level_type");
  static const k = const GEMSPrivateElement(0x00091084, VR.kFL, VM.k1, Action.kKeep, "PET rotate");
  static const k = const GEMSPrivateElement(0x00091085, VR.kSL, VM.k1, Action.kKeep, "PET flip");
  static const k = const GEMSPrivateElement(0x00091086, VR.kFL, VM.k1, Action.kKeep, "PET zoom");
  static const k = const GEMSPrivateElement(0x00091087, VR.kSL, VM.k1, Action.kKeep, "PET pan_x");
  static const k = const GEMSPrivateElement(0x00091088, VR.kSL, VM.k1, Action.kKeep, "PET pan_y");
  static const k = const GEMSPrivateElement(
      0x00091089, VR.kFL, VM.k1, Action.kKeep, "PET window_level_min");
  static const k = const GEMSPrivateElement(
      0x0009108a, VR.kFL, VM.k1, Action.kKeep, "PET window_level_max");
  static const k = const GEMSPrivateElement(
      0x0009108b, VR.kSL, VM.k1, Action.kKeep, "PET recon_method");
  static const k = const GEMSPrivateElement(
      0x0009108c, VR.kSL, VM.k1, Action.kKeep, "PET attenuation");
  static const k = const GEMSPrivateElement(
      0x0009108d, VR.kFL, VM.k1, Action.kKeep, "PET atten_coefficient");
  static const k = const GEMSPrivateElement(
      0x0009108e, VR.kSL, VM.k1, Action.kKeep, "PET bp_filter");
  static const k = const GEMSPrivateElement(
      0x0009108f, VR.kFL, VM.k1, Action.kKeep, "PET bp_filter_cutoff");
  static const k = const GEMSPrivateElement(
      0x00091090, VR.kSL, VM.k1, Action.kKeep, "PET bp_filter_order");
  static const k = const GEMSPrivateElement(
      0x00091091, VR.kFL, VM.k1, Action.kKeep, "PET bp_center_l");
  static const k = const GEMSPrivateElement(
      0x00091092, VR.kFL, VM.k1, Action.kKeep, "PET bp_center_p");
  static const k = const GEMSPrivateElement(
      0x00091093, VR.kSL, VM.k1, Action.kKeep, "PET atten_smooth");
  static const k = const GEMSPrivateElement(
      0x00091094, VR.kSL, VM.k1, Action.kKeep, "PET atten_smooth_param");
  static const k = const GEMSPrivateElement(
      0x00091095, VR.kSL, VM.k1, Action.kKeep, "PET angle_smooth_param");
  static const k = const GEMSPrivateElement(
      0x00091096, VR.kUI, VM.k1, Action.kReplace, "PET wellcountercal_id");
  static const k = const GEMSPrivateElement(
      0x00091097, VR.kUI, VM.k1, Action.kReplace, "PET trans_scan_id");
  static const k = const GEMSPrivateElement(
      0x00091098, VR.kUI, VM.k1, Action.kReplace, "PET norm_cal_id");
  static const k = const GEMSPrivateElement(
      0x00091099, VR.kUI, VM.k1, Action.kReplace, "PET blnk_cal_id");
  static const k = const GEMSPrivateElement(
      0x0009109a, VR.kFL, VM.k1, Action.kKeep, "PET cac_edge_threshold");
  static const k = const GEMSPrivateElement(
      0x0009109b, VR.kFL, VM.k1, Action.kKeep, "PET cac_skull_offset");
  static const k = const GEMSPrivateElement(
      0x0009109c, VR.kUI, VM.k1, Action.kReplace, "PET emiss_sub_id");
  static const k = const GEMSPrivateElement(
      0x0009109d, VR.kSL, VM.k1, Action.kKeep, "PET radial_filter_3d");
  static const k = const GEMSPrivateElement(
      0x0009109e, VR.kFL, VM.k1, Action.kKeep, "PET radial_cutoff_3d");
  static const k = const GEMSPrivateElement(
      0x0009109f, VR.kSL, VM.k1, Action.kKeep, "PET axial_filter_3d");
  static const k = const GEMSPrivateElement(
      0x000910a0, VR.kFL, VM.k1, Action.kKeep, "PET axial_cutoff_3d");
  static const k = const GEMSPrivateElement(
      0x000910a1, VR.kFL, VM.k1, Action.kKeep, "PET axial_start");
  static const k = const GEMSPrivateElement(
      0x000910a2, VR.kFL, VM.k1, Action.kKeep, "PET axial_spacing");
  static const k = const GEMSPrivateElement(
      0x000910a3, VR.kSL, VM.k1, Action.kKeep, "PET axial_angles_used");
  static const k = const GEMSPrivateElement(
      0x000910a4, VR.kSH, VM.k1, Action.kReplace, "PET compatible_version");
  static const k = const GEMSPrivateElement(
      0x000910a5, VR.kSH, VM.k1, Action.kReplace, "PET software_version");
  static const k = const GEMSPrivateElement(
      0x000910a6, VR.kSL, VM.k1, Action.kKeep, "PET slice_number");
  static const k = const GEMSPrivateElement(
      0x000910a7, VR.kFL, VM.k1, Action.kKeep, "PET total_counts");
  static const k = const GEMSPrivateElement(
      0x000910a8, VR.kOB, VM.k1, Action.kRemove, "PET other_atts");
  static const k = const GEMSPrivateElement(
      0x000910a9, VR.kSL, VM.k1, Action.kKeep, "PET other_atts_size");
  static const k = const GEMSPrivateElement(
      0x000910aa, VR.kSL, VM.k1, Action.kKeep, "PET archived");
  static const k = const GEMSPrivateElement(
      0x000910ab, VR.kFL, VM.k1, Action.kKeep, "PET bp_center_x");
  static const k = const GEMSPrivateElement(
      0x000910ac, VR.kFL, VM.k1, Action.kKeep, "PET bp_center_y");
  static const k = const GEMSPrivateElement(
      0x000910ad, VR.kUI, VM.k1, Action.kReplace, "PET trans_frame_id");
  static const k = const GEMSPrivateElement(
      0x000910ae, VR.kUI, VM.k1, Action.kReplace, "PET tpluse_frame_id");
  static const k = const GEMSPrivateElement(
      0x000910b1, VR.kFL, VM.k1, Action.kKeep, "PET profile_spacing");
  static const k = const GEMSPrivateElement(
      0x000910b2, VR.kSL, VM.k1, Action.kKeep, "PET ir_num_iterations");
  static const k = const GEMSPrivateElement(
      0x000910b3, VR.kSL, VM.k1, Action.kKeep, "PET ir_num_subsets");
  static const k = const GEMSPrivateElement(
      0x000910b4, VR.kFL, VM.k1, Action.kKeep, "PET ir_recon_fov");
  static const k = const GEMSPrivateElement(
      0x000910b5, VR.kSL, VM.k1, Action.kKeep, "PET ir_corr_model");
  static const k = const GEMSPrivateElement(
      0x000910b6, VR.kSL, VM.k1, Action.kKeep, "PET ir_loop_filter");
  static const k = const GEMSPrivateElement(
      0x000910b7, VR.kFL, VM.k1, Action.kKeep, "PET ir_pre_filt_parm");
  static const k = const GEMSPrivateElement(
      0x000910b8, VR.kSL, VM.k1, Action.kKeep, "PET ir_loop_filt_parm");
  static const k = const GEMSPrivateElement(
      0x000910b9, VR.kFL, VM.k1, Action.kKeep, "PET response_filt_parm");
  static const k = const GEMSPrivateElement(
      0x000910ba, VR.kSL, VM.k1, Action.kKeep, "PET post_filter");
  static const k = const GEMSPrivateElement(
      0x000910bb, VR.kFL, VM.k1, Action.kKeep, "PET post_filt_parm");
  static const k = const GEMSPrivateElement(
      0x000910bc, VR.kSL, VM.k1, Action.kKeep, "PET ir_regularize");
  static const k = const GEMSPrivateElement(
      0x000910bd, VR.kFL, VM.k1, Action.kKeep, "PET regularize_parm");
  static const k = const GEMSPrivateElement(
      0x000910be, VR.kSL, VM.k1, Action.kKeep, "PET ac_bp_filter");
  static const k = const GEMSPrivateElement(
      0x000910bf, VR.kFL, VM.k1, Action.kKeep, "PET ac_bp_filt_cut_off");
  static const k = const GEMSPrivateElement(
      0x000910c0, VR.kSL, VM.k1, Action.kKeep, "PET ac_bp_filt_order");
  static const k = const GEMSPrivateElement(
      0x000910c1, VR.kSL, VM.k1, Action.kKeep, "PET ac_img_smooth");
  static const k = const GEMSPrivateElement(
      0x000910c2, VR.kFL, VM.k1, Action.kKeep, "PET ac_img_smooth_parm");
  static const k = const GEMSPrivateElement(
      0x000910c3, VR.kSL, VM.k1, Action.kKeep, "PET scatter_method");
  static const k = const GEMSPrivateElement(
      0x000910c4, VR.kSL, VM.k1, Action.kKeep, "PET scatter_num_iter");
  static const k = const GEMSPrivateElement(
      0x000910c5, VR.kFL, VM.k1, Action.kKeep, "PET scatter_parm");
  static const k = const GEMSPrivateElement(
      0x000910c6, VR.kFL, VM.k1, Action.kKeep, "PET seg_qc_parm");
  static const k = const GEMSPrivateElement(0x000910c7, VR.kSL, VM.k1, Action.kKeep, "PET overlap");
  static const k = const GEMSPrivateElement(
      0x000910c8, VR.kUI, VM.k1, Action.kReplace, "PET ovlp_frm_id");
  static const k = const GEMSPrivateElement(
      0x000910c9, VR.kUI, VM.k1, Action.kReplace, "PET ovlp_trans_frm_id");
  static const k = const GEMSPrivateElement(
      0x000910ca, VR.kUI, VM.k1, Action.kReplace, "PET ovlp_tpulse_frm_id");
  static const k = const GEMSPrivateElement(
      0x000910cb, VR.kFL, VM.k1, Action.kKeep, "PET vqc_x_axis_trans");
  static const k = const GEMSPrivateElement(
      0x000910cc, VR.kFL, VM.k1, Action.kKeep, "PET vqc_x_axis_tilt");
  static const k = const GEMSPrivateElement(
      0x000910cd, VR.kFL, VM.k1, Action.kKeep, "PET vqc_y_axis_trans");
  static const k = const GEMSPrivateElement(
      0x000910ce, VR.kFL, VM.k1, Action.kKeep, "PET vqc_y_axis_swivel");
  static const k = const GEMSPrivateElement(
      0x000910cf, VR.kFL, VM.k1, Action.kKeep, "PET vqc_z_axis_trans");
  static const k = const GEMSPrivateElement(
      0x000910d0, VR.kFL, VM.k1, Action.kKeep, "PET vqc_z_axis_roll");
  static const k = const GEMSPrivateElement(
      0x000910d1, VR.kLO, VM.k1, Action.kReplace, "PET ctac_conv_scale");
  static const k = const GEMSPrivateElement(
      0x000910d2, VR.kUI, VM.k1, Action.kReplace, "PET image_set_id");
  static const k = const GEMSPrivateElement(
      0x000910d3, VR.kSL, VM.k1, Action.kKeep, "PET constrast_route");
  static const k = const GEMSPrivateElement(
      0x000910d4, VR.kLO, VM.k1, Action.kReplace, "PET ctac_conv_scale");
  static const k = const GEMSPrivateElement(
      0x000910d5, VR.kFL, VM.k1, Action.kKeep, "PET loop_filter_parm");
  static const k = const GEMSPrivateElement(
      0x000910d6, VR.kFL, VM.k1, Action.kKeep, "PET image_one_loc");
  static const k = const GEMSPrivateElement(
      0x000910d7, VR.kFL, VM.k1, Action.kKeep, "PET image_index_loc");
  static const k = const GEMSPrivateElement(
      0x000910d8, VR.kSL, VM.k1, Action.kKeep, "PET frame_number");
  static const k = const GEMSPrivateElement(
      0x000910d9, VR.kSL, VM.k1, Action.kKeep, "PET list_file_exists");
  static const k = const GEMSPrivateElement(
      0x000910da, VR.kST, VM.k1, Action.kKeep, "PET where_is_list_frame");
  static const k = const GEMSPrivateElement(
      0x000910db, VR.kSL, VM.k1, Action.kKeep, "PET ir_z_filter_flag");
  static const k = const GEMSPrivateElement(
      0x000910dc, VR.kFL, VM.k1, Action.kKeep, "PET ir_z_filter_ratio");
  static const k = const GEMSPrivateElement(
      0x000910dd, VR.kUS, VM.k1, Action.kKeep, "PET num_of_rr_interval");
  static const k = const GEMSPrivateElement(
      0x000910de, VR.kUS, VM.k1, Action.kKeep, "PET num_of_time_slots");
  static const k = const GEMSPrivateElement(
      0x000910df, VR.kUS, VM.k1, Action.kKeep, "PET num_of_slices");
  static const k = const GEMSPrivateElement(
      0x000910e0, VR.kUS, VM.k1, Action.kKeep, "PET num_of_time_slices");
  static const k = const GEMSPrivateElement(
      0x000910e1, VR.kSL, VM.k1, Action.kKeep, "PET unlisted_scan");
  static const k = const GEMSPrivateElement(
      0x000910e2, VR.kSL, VM.k1, Action.kKeep, "PET rest_stress");
  static const k = const GEMSPrivateElement(
      0x000910e3, VR.kFL, VM.k1, Action.kKeep, "PET phase percentage");
  static const k = const GEMSPrivateElement(
      0x000910e4, VR.kST, VM.k1, Action.kReplace, "Recon Protocol");
  static const k = const GEMSPrivateElement(
      0x000910e5, VR.kFL, VM.k1, Action.kKeep, "PET left shift");
  static const k = const GEMSPrivateElement(
      0x000910e6, VR.kFL, VM.k1, Action.kKeep, "PET posterior shift");
  static const k = const GEMSPrivateElement(
      0x000910e7, VR.kFL, VM.k1, Action.kKeep, "PET superior shift");
  static const k = const GEMSPrivateElement(
      0x000910e8, VR.kSL, VM.k1, Action.kKeep, "PET acq_bin_num");
  static const k = const GEMSPrivateElement(
      0x000910e9, VR.kFL, VM.k1, Action.kKeep, "PET acq_bin_dur_percent");
  static const k = const GEMSPrivateElement(
      0x000910ea, VR.kSL, VM.k1, Action.kKeep, "3D Filter flag");
  static const k = const GEMSPrivateElement(
      0x000910eb, VR.kFL, VM.k1, Action.kKeep, "3D Filter cutoff");
  static const k = const GEMSPrivateElement(
      0x000910ec, VR.kSL, VM.k1, Action.kKeep, "3D Filter order");
  static const k = const GEMSPrivateElement(
      0x000910f0, VR.kUI, VM.k1, Action.kReplace, "Reformat group");
  static const k = const GEMSPrivateElement(
      0x000910f1, VR.kSL, VM.k1, Action.kKeep, "PET prompt gamma");
  static const k = const GEMSPrivateElement(
      0x000910f2, VR.kUI, VM.k1, Action.kReplace, "PET tracerInjection_UID");
  static const k = const GEMSPrivateElement(
      0x00110010, VR.kLO, VM.k1, Action.kRemove, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00111001, VR.kSQ, VM.k1, Action.kRemove, "PET ROI Sequence");
  static const k = const GEMSPrivateElement(
      0x00111002, VR.kUI, VM.k1, Action.kRemove, "PET ROI.roi_id");
  static const k = const GEMSPrivateElement(
      0x00111003, VR.kUI, VM.k1, Action.kRemove, "PET ROI.image_id");
  static const k = const GEMSPrivateElement(
      0x00111004, VR.kUI, VM.k1, Action.kRemove, "PET ROI.compatible_version");
  static const k = const GEMSPrivateElement(
      0x00111005, VR.kSH, VM.k1, Action.kRemove, "PET ROI.software_version");
  static const k = const GEMSPrivateElement(
      0x00111006, VR.kLO, VM.k1, Action.kRemove, "PET ROI.roi_name");
  static const k = const GEMSPrivateElement(
      0x00111007, VR.kDT, VM.k1, Action.kRemove, "PET ROI.roi_datetime");
  static const k = const GEMSPrivateElement(
      0x00111008, VR.kSL, VM.k1, Action.kRemove, "PET ROI.roi_type");
  static const k = const GEMSPrivateElement(
      0x00111009, VR.kFL, VM.k1, Action.kRemove, "PET ROI.center_x");
  static const k = const GEMSPrivateElement(
      0x0011100A, VR.kFL, VM.k1, Action.kRemove, "PET ROI.center_y");
  static const k = const GEMSPrivateElement(
      0x0011100B, VR.kFL, VM.k1, Action.kRemove, "PET ROI.width");
  static const k = const GEMSPrivateElement(
      0x0011100C, VR.kFL, VM.k1, Action.kRemove, "PET ROI.height");
  static const k = const GEMSPrivateElement(
      0x0011100D, VR.kFL, VM.k1, Action.kRemove, "PET ROI.angle");
  static const k = const GEMSPrivateElement(
      0x0011100E, VR.kSL, VM.k1, Action.kRemove, "PET ROI.number_of_points");
  static const k = const GEMSPrivateElement(
      0x0011100F, VR.kOB, VM.k1, Action.kRemove, "PET ROI.roi_data");
  static const k = const GEMSPrivateElement(
      0x00111010, VR.kSL, VM.k1, Action.kRemove, "PET ROI.roi_size");
  static const k = const GEMSPrivateElement(
      0x00111011, VR.kLO, VM.k1, Action.kRemove, "PET ROI.color");
  static const k = const GEMSPrivateElement(
      0x00111012, VR.kSL, VM.k1, Action.kRemove, "PET ROI.line_type");
  static const k = const GEMSPrivateElement(
      0x00111013, VR.kSL, VM.k1, Action.kRemove, "PET ROI.line_width");
  static const k = const GEMSPrivateElement(
      0x00111014, VR.kSL, VM.k1, Action.kRemove, "PET ROI.roi_number");
  static const k = const GEMSPrivateElement(
      0x00111015, VR.kSL, VM.k1, Action.kRemove, "PET ROI.convex");
  static const k = const GEMSPrivateElement(
      0x00111016, VR.kSL, VM.k1, Action.kRemove, "PET ROI.atten_cor_flag");
  static const k = const GEMSPrivateElement(
      0x00130010, VR.kLO, VM.k1, Action.kRemove, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00131001, VR.kSQ, VM.k1, Action.kRemove, "PET Annotation Sequence");
  static const k = const GEMSPrivateElement(
      0x00131002, VR.kUI, VM.k1, Action.kRemove, "PET Annotation.annotation_id");
  static const k = const GEMSPrivateElement(
      0x00131003, VR.kUI, VM.k1, Action.kRemove, "PET Annotation.image_id");
  static const k = const GEMSPrivateElement(
      0x00131004, VR.kSH, VM.k1, Action.kRemove, "PET Annotation.compatible_version");
  static const k = const GEMSPrivateElement(
      0x00131005, VR.kSH, VM.k1, Action.kRemove, "PET Annotation.software_version");
  static const k = const GEMSPrivateElement(
      0x00131006, VR.kSL, VM.k1, Action.kRemove, "PET Annotation.type");
  static const k = const GEMSPrivateElement(
      0x00131007, VR.kLO, VM.k1, Action.kRemove, "PET Annotation.font_name");
  static const k = const GEMSPrivateElement(
      0x00131008, VR.kSH, VM.k1, Action.kRemove, "PET Annotation.font_size");
  static const k = const GEMSPrivateElement(
      0x00131009, VR.kLO, VM.k1, Action.kRemove, "PET Annotation.foreground_color");
  static const k = const GEMSPrivateElement(
      0x0013100A, VR.kLO, VM.k1, Action.kRemove, "PET Annotation.background_color");
  static const k = const GEMSPrivateElement(
      0x0013100B, VR.kSL, VM.k1, Action.kRemove, "PET Annotation.coordinate_system");
  static const k = const GEMSPrivateElement(
      0x0013100C, VR.kFL, VM.k1, Action.kRemove, "PET Annotation.start_x");
  static const k = const GEMSPrivateElement(
      0x0013100D, VR.kFL, VM.k1, Action.kRemove, "PET Annotation.start_y");
  static const k = const GEMSPrivateElement(
      0x0013100E, VR.kFL, VM.k1, Action.kRemove, "PET Annotation.end_x");
  static const k = const GEMSPrivateElement(
      0x0013100F, VR.kFL, VM.k1, Action.kRemove, "PET Annotation.end_y");
  static const k = const GEMSPrivateElement(
      0x00131010, VR.kSL, VM.k1, Action.kRemove, "PET Annotation.start_symbol");
  static const k = const GEMSPrivateElement(
      0x00131011, VR.kSL, VM.k1, Action.kRemove, "PET Annotation.end_symbol");
  static const k = const GEMSPrivateElement(
      0x00131012, VR.kOB, VM.k1, Action.kRemove, "PET Annotation.annotation_data");
  static const k = const GEMSPrivateElement(
      0x00131013, VR.kSL, VM.k1, Action.kRemove, "PET Annotation.annotation.size");
  static const k = const GEMSPrivateElement(
      0x00131014, VR.kLO, VM.k1, Action.kRemove, "PET Annotation.label_id");
  static const k = const GEMSPrivateElement(
      0x00150010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x0015101A, VR.kUS, VM.k1, Action.kKeep, "Physio Gating Type");
  static const k = const GEMSPrivateElement(
      0x0015101B, VR.kUS, VM.k1, Action.kKeep, "Total Number of Bins");
  static const k = const GEMSPrivateElement(
      0x0015101C, VR.kUS, VM.k1, Action.kKeep, "% Phase Value");
  static const k = const GEMSPrivateElement(
      0x0015101D, VR.kSL, VM.k1, Action.kKeep, "Phase Matched Series");
  static const k = const GEMSPrivateElement(
      0x0015101E, VR.kSL, VM.k1, Action.kKeep, "CTAC Percent Value");
  static const k = const GEMSPrivateElement(
      0x0015101F, VR.kUL, VM.k1, Action.kKeep, "PET Recon Parameters Exists");
  static const k = const GEMSPrivateElement(
      0x00151020, VR.kSL, VM.k1, Action.kKeep, "First Packet Number");
  static const k = const GEMSPrivateElement(
      0x00151021, VR.kFL, VM.k1, Action.kKeep, "IR Loop Filter Ratio");
  static const k = const GEMSPrivateElement(
      0x00151022, VR.kFL, VM.k1, Action.kKeep, "IR Loop Filter Correction");
  static const k = const GEMSPrivateElement(
      0x00151023, VR.kUL, VM.k1, Action.kKeep, "BP3d Filter FlagU");
  static const k = const GEMSPrivateElement(
      0x00151024, VR.kFL, VM.k1, Action.kKeep, "BP3d Filter CutoffU");
  static const k = const GEMSPrivateElement(
      0x00151025, VR.kSL, VM.k1, Action.kKeep, "BP3d Filter OrderU");
  static const k = const GEMSPrivateElement(
      0x00151026, VR.kUL, VM.k1, Action.kKeep, "BP3d Filter FlagV");
  static const k = const GEMSPrivateElement(
      0x00151027, VR.kFL, VM.k1, Action.kKeep, "BP3d Filter OrderV");
  static const k = const GEMSPrivateElement(
      0x00151028, VR.kSL, VM.k1, Action.kKeep, "BP3d Filter CutoffV");
  static const k = const GEMSPrivateElement(0x00151029, VR.kUL, VM.k1, Action.kKeep, "Decay Flag");
  static const k = const GEMSPrivateElement(
      0x0015102E, VR.kUL, VM.k1, Action.kKeep, "Image filter 3d flag");
  static const k = const GEMSPrivateElement(
      0x0015102F, VR.kUL, VM.k1, Action.kKeep, "WCC Cal Flag");
  static const k = const GEMSPrivateElement(
      0x00151030, VR.kUL, VM.k1, Action.kKeep, "Emission Scatter Flag");
  static const k = const GEMSPrivateElement(
      0x00151031, VR.kUL, VM.k1, Action.kKeep, "Recon Algorithm");
  static const k = const GEMSPrivateElement(
      0x00151032, VR.kUL, VM.k1, Action.kKeep, "Normalization Flag");
  static const k = const GEMSPrivateElement(
      0x00151033, VR.kUL, VM.k1, Action.kKeep, "Emission Deadtime Flag");
  static const k = const GEMSPrivateElement(
      0x00151034, VR.kUL, VM.k1, Action.kKeep, "Emission Random Flag");
  static const k = const GEMSPrivateElement(
      0x00151035, VR.kUL, VM.k1, Action.kKeep, "Blank Scan Flag");
  static const k = const GEMSPrivateElement(
      0x00151039, VR.kSL, VM.k1, Action.kKeep, "Event histogram Format");
  static const k = const GEMSPrivateElement(
      0x0015103A, VR.kSL, VM.k1, Action.kKeep, "Number of Detector Rows");
  static const k = const GEMSPrivateElement(
      0x0015103B, VR.kSL, VM.k1, Action.kKeep, "Number of Detector Columns");
  static const k = const GEMSPrivateElement(
      0x0015103C, VR.kUS, VM.k1, Action.kKeep, "Recon Matrix Size");
  static const k = const GEMSPrivateElement(
      0x0015103D, VR.kUL, VM.k1, Action.kKeep, "PET Sharp IR Flag");
  static const k = const GEMSPrivateElement(
      0x0015103E, VR.kUL, VM.k1, Action.kKeep, "PET Scatter Limit");
  static const k = const GEMSPrivateElement(
      0x00170010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00171001, VR.kUI, VM.k1, Action.kReplace, "PET correction_cal_id");
  static const k = const GEMSPrivateElement(
      0x00171002, VR.kSH, VM.k1, Action.kKeep, "PET compatible_version");
  static const k = const GEMSPrivateElement(
      0x00171003, VR.kSH, VM.k1, Action.kKeep, "PET software_version");
  static const k = const GEMSPrivateElement(
      0x00171004, VR.kDT, VM.k1, Action.kReplace, "PET cal_datetime");
  static const k = const GEMSPrivateElement(
      0x00171005, VR.kLO, VM.k1, Action.kKeep, "PET cal_description");
  static const k = const GEMSPrivateElement(
      0x00171006, VR.kSL, VM.k1, Action.kKeep, "PET cal_type");
  static const k = const GEMSPrivateElement(
      0x00171007, VR.kST, VM.k1, Action.kKeep, "PET where_is_corr");
  static const k = const GEMSPrivateElement(
      0x00171008, VR.kSL, VM.k1, Action.kKeep, "PET corr_file_size");
  static const k = const GEMSPrivateElement(
      0x00171009, VR.kLO, VM.k1, Action.kReplace, "PET scan_id");
  static const k = const GEMSPrivateElement(
      0x0017100A, VR.kDT, VM.k1, Action.kReplace, "PET scan_datetime");
  static const k = const GEMSPrivateElement(
      0x0017100B, VR.kLO, VM.k1, Action.kReplace, "PET norm_2d_cal_id");
  static const k = const GEMSPrivateElement(
      0x0017100C, VR.kSH, VM.k1, Action.kReplace, "PET hosp_identifier");
  static const k = const GEMSPrivateElement(
      0x0017100D, VR.kSL, VM.k1, Action.kKeep, "PET archived");
  static const k = const GEMSPrivateElement(
      0x00190010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00191001, VR.kUI, VM.k1, Action.kReplace, "PET wc_cal_id");
  static const k = const GEMSPrivateElement(
      0x00191002, VR.kSH, VM.k1, Action.kKeep, "PET compatible_version");
  static const k = const GEMSPrivateElement(
      0x00191003, VR.kSH, VM.k1, Action.kKeep, "PET software_version");
  static const k = const GEMSPrivateElement(
      0x00191004, VR.kDT, VM.k1, Action.kReplace, "PET cal_datetime");
  static const k = const GEMSPrivateElement(
      0x00191005, VR.kSL, VM.k1, Action.kKeep, "PET cal_type");
  static const k = const GEMSPrivateElement(
      0x00191006, VR.kLO, VM.k1, Action.kReplace, "PET cal_description");
  static const k = const GEMSPrivateElement(
      0x00191007, VR.kLO, VM.k1, Action.kKeep, "PET cal_hardware");
  static const k = const GEMSPrivateElement(
      0x00191008, VR.kOB, VM.k1, Action.kKeep, "PET coefficients");
  static const k = const GEMSPrivateElement(
      0x00191009, VR.kFL, VM.k1, Action.kKeep, "PET activity_factor_hr");
  static const k = const GEMSPrivateElement(
      0x0019100A, VR.kFL, VM.k1, Action.kKeep, "PET activity_factor_hs");
  static const k = const GEMSPrivateElement(
      0x0019100B, VR.kFL, VM.k1, Action.kKeep, "PET activity_factor_3d");
  static const k = const GEMSPrivateElement(
      0x0019100C, VR.kLO, VM.k1, Action.kReplace, "PET scan_id");
  static const k = const GEMSPrivateElement(
      0x0019100D, VR.kDT, VM.k1, Action.kReplace, "PET scan_datetime");
  static const k = const GEMSPrivateElement(
      0x0019100E, VR.kSH, VM.k1, Action.kReplace, "PET hosp_identifier");
  static const k = const GEMSPrivateElement(
      0x0019100F, VR.kFL, VM.k1, Action.kKeep, "PET meas_activity");
  static const k = const GEMSPrivateElement(
      0x00191010, VR.kDT, VM.k1, Action.kReplace, "PET meas_datetime");
  static const k = const GEMSPrivateElement(
      0x00191011, VR.kSL, VM.k1, Action.kKeep, "PET axial_filter_3d");
  static const k = const GEMSPrivateElement(
      0x00191012, VR.kFL, VM.k1, Action.kKeep, "PET axial_cutoff_3d");
  static const k = const GEMSPrivateElement(
      0x00191013, VR.kSL, VM.k1, Action.kKeep, "PET default_flag");
  static const k = const GEMSPrivateElement(
      0x00191014, VR.kSL, VM.k1, Action.kKeep, "PET archived");
  static const k = const GEMSPrivateElement(
      0x00191015, VR.kSL, VM.k1, Action.kKeep, "PET wc_cal_rec_method");
  static const k = const GEMSPrivateElement(
      0x00191016, VR.kFL, VM.k1, Action.kKeep, "PET activity_factor_2d");
  static const k = const GEMSPrivateElement(0x00191017, VR.kSL, VM.k1, Action.kKeep, "PET isotope");
  static const k = const GEMSPrivateElement(
      0x00191018, VR.kUI, VM.k1, Action.kReplace, "WCC Image Set ID");
  static const k = const GEMSPrivateElement(
      0x00210010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00211001, VR.kUS, VM.k1, Action.kKeep, "PET raw_data_type");
  static const k = const GEMSPrivateElement(
      0x00211002, VR.kUL, VM.k1, Action.kKeep, "PET raw_data_size");
  static const k = const GEMSPrivateElement(
      0x00230010, VR.kLO, VM.k1, Action.kKeep, "GEHC Private Creator ID");
  static const k = const GEMSPrivateElement(
      0x00231002, VR.kOB, VM.k1, Action.kReplace, "PET raw_data_blob", "GEM"
      "S_PETD_01");
}
