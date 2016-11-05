// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.



//TODO: fix
enum Action {keep, remove, replace}


class PrivateData {
    final String name;
    final int index;
    final Action action;
    final String description;
    final String creator;

    const PrivateData(this.name, this.index, this.action, this.description, this.creator);

  static const k01 = const PrivateData("0x01", 1, Action.keep, "Full Fidelity", "foo");
}