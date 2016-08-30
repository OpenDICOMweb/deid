// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See the AUTHORS file for other contributors.
library odw.sdk.deidentification.parser;

Map<String, dynamic> testTrial1 = {
  "keepTag": [0x00100010, ],
  "parameters": {
    "TRIAL": "Test Trial #1",
    "SPONSOR": "ACR",
    "SITEID": "ACR_0001",
    "SITENAME": "ACR Philadelphia",
    "PREFIX": "acr_prefix",
    "SUFFIX": "acr_suffix",
    "UIDROOT": "2.25.",
    "DATEINC": "100",
    "KEY": "1111",
    "ProjectNo": "2222",
    "ProjectName": "Project #1",
    "TrialNo": "3333",
    "TrialName": "Test Trial #1",
    "GroupNo": "4444",
    "GroupName": "Group #4",
    "SiteNo": "5555",
    "SiteName": "Site #5",
    "CaseNo": "6666",
    "SubmissionType": "images",
    "TimePointID": "T1",
    "TimePointDescription": "The first TimePoint"
  }
};

const Map<String, String> testTrial2 = const {
  "TRIAL": "Test Trial #2",
  "SPONSOR": "NIH",
  "SITEID": "NIH_0001",
  "SITENAME": "NIH Washington",
  "PREFIX": "nih_prefix",
  "SUFFIX": "nih_suffix",
  "UIDROOT": "3.333.33.",
  "DATEINC": "-1",
  "KEY": "9999",
  "ProjectNo": "8888",
  "ProjectName": "Project #8888",
  "TrialNo": "7777",
  "TrialName": "Test Trial #7777",
  "GroupNo": "6666",
  "GroupName": "Group #6666",
  "SiteNo": "4321",
  "SiteName": "Site #4321",
  "CaseNo": "4444",
  "SubmissionType": "xxxxx",
  "TimePointID": "T0",
  "TimePointDescription": "The zeroth TimePoint"
};



