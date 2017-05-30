// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import '../profile/profile.dart';
import '../profile/rule.dart';

//Questions:
// 1. where does case number go?

//TODO create a JSON representation of these objects
class Trial {
  int id; // Like Trial Number
  String name;
  Profile profile;
  List<int> keepTags = [];
  Map<String, String> parameters;

  Trial(this.id, this.name,  this.profile, this.parameters) {
    keepTags.addAll(profile.retainTags);
    profile.evaluateTrial(this);
  }

  // Subject Level
  String get sponsor => parameters["SPONSOR"];
  String get protocolID => parameters["ProtocolID"];
  String get protocolDescription => parameters["ProtocolDescription"];
  String get siteId => parameters["SITEID"];
  String get siteName => parameters["SITENAME"];
  String get subjectID => parameters["SUBJECTID"];
  String get subjectReadingID => parameters["SUBJECTREADINGID"];
  String get protocolEthicsCommitteeName => parameters["ProtocolEthicsCommitteeName"];
  String get protocolEthicsCommitteeApprovalNumber =>
      parameters["ProtocolEthicsCommitteeApprovalNumber"];

  // Study Level
  String get timePointId => parameters["TimePointID"];
  String get timePointDescription => parameters["TimePointDescription"];
  String get distributionType => parameters["DistributionType"];
  String get consentForDistributionFlag => parameters["ConsentForDistributionFlag"];

  // Series Level
  String get coordinatingCenterName => parameters["CoordinatingCenterName"];
  String get seriesID => parameters["SeriesID"];
  String get seriesDescription  => parameters["SeriesDescription"];

  // ACR specific - what are these used for;
  String get prefix => parameters["PREFIX"];
  String get suffix => parameters["SUFFIX"];
  String get uidRoot => parameters["UIDROOT"];
  String get dateInc => parameters["DATEINC"];
  String get key => parameters["KEY"];

  String get projectNo => parameters["ProjectNo"];
  String get projectName => parameters["ProjectName"];
  String get trialNo => parameters["TrialNo"];
  String get trialName => parameters["TrialName"];
  String get groupNo => parameters["GroupNo"];
  String get groupName => parameters["GroupName"];
  String get caseNo => parameters["CaseNo"];
  String get submissionType => parameters["SubmissionType"];

  String lookup(String name) {
    String value = parameters[name];
    if (value != null ) return value;
    return profile.parameters[name];
  }

  List<Rule> evaluateRules() {
    List<Rule> rules = profile.rules;
  }
}

class Site {
  final String id;
  final String name;

  Site(this.id, this.name);
}

class Group {
  final String id;
  final String name;

  Group(this.id, this.name);
}

class Project {
  final int id;
  final String name;

  Project(this.id, this.name);
}

//TODO: what are submission types
enum SubmissionType {one, two, three}

class Submission {
  final SubmissionType type;
  final String timePointId;
  final String timePointDescription;

  Submission(this.type, this.timePointId, this.timePointDescription);
}