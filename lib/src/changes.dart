// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu>
// See /[package]/AUTHORS file for other contributors.

import 'package:core/core.dart';

class Changes {
  final List<Element> adds = <Element>[];
  final List<Element> removes= <Element>[];
  final List<Element> mods = <Element>[];
  
  Changes();

  void create(Element e) => adds.add(e);
  void remove(Element e) => removes.add(e);
  void replace(Element e) => mods.add(e);
}