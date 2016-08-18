// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.
library odw.sdk.acr.trial;

import 'package:core/new_base.dart';

//Questions:
// 1. where does case number go?

//TODO create a JSON representation of these objects
class Trial {
  int id;           // Like Trial Number
  String name;
  String sponsor;
  String site;
  String prefix;
  String suffix;
  String uidRoot;
  int dateInc;
  String key;

  Trial(this.id, this.name, this.sponsor, this.site, this.prefix,
        this.suffix, this.uidRoot, this.dateInc, this.key);

}

class Site {
  final String id;
  final int number;
  final String name;

  Site(this.id, this.number, this.name);
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