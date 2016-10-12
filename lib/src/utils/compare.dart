// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'package:core/dicom.dart';

class DSComparison {
  List same = [];
  List diff = [];

  DSComparison(Dataset ds0, Dataset ds1) {
    List<Element> elements0 = ds0.eMap.values.toList(growable: false);
    List<Element> elements1 = ds1.eMap.values.toList(growable: false);
    int length0 = elements0.length;
    int length1 = elements1.length;
    int index0 = 0;
    int index1 = 1;
    while ((index0 < length0) && (index1 < length1)) {
      Element e0 = elements0[index0];
      Element e1 = elements0[index1];
      int tag0 = e0.tag;
      int tag1 = e1.tag;
      if (tag0 == tag1) {
        compareElements(e0, e1);
        index0++;
        index1++;
        continue;
      } else if (tag0 < tag1) {
        diff.add([-1, e0, null]);
        index0++;
        continue;
      } else {
        diff.add([1, null, e0]);
        index1++;
        continue;
      }
    }
  }

  void compareDatasets(Dataset ds0, Dataset ds1) {
    List<Element> elements0 = ds0.values;
    int length0 = elements0.length;
    List<Element> elements1 = ds1.values;
    int length1 = elements1.length;
    int index0 = 0;
    int index1 = 1;
    while ((index0 < length0) && (index1 < length1)) {
      Element e0 = elements0[index0];
      Element e1 = elements0[index1];
      int tag0 = e0.tag;
      int tag1 = e1.tag;
      if (tag0 == tag1) {
        compareElements(e0, e1);
        index0++;
        index1++;
        continue;
      } else if (tag0 < tag1) {
        diff.add([-1, e0, null]);
        index0++;
        continue;
      } else {
        diff.add([1, null, e0]);
        index1++;
        continue;
      }
    }
  }

  void compareElements(Element e0, Element e1) {
    print('Elements:\n\te0: $e0\n\te1: $e1');
    if (e0.tag != e1.tag) throw "Incomparable Tags: $e0, $e1";
    if (e0.vr != e1.vr) throw "VRs are not equivalent: $e0, $e1";
    return (e0 is SQ) ? compareSequences(e0, e1) : compareValues(e0, e1);
  }

  void compareSequences(SQ sq0, SQ sq1) {
    print('sq0: $sq0\nsq1: $sq1');
    List<Element> same = [];
    List<List> diff = [];
    if (sq0.items.length == sq1.items.length) {
      if (sq0.length == 0) return same.add(sq0);
      for (int i = 0; i < sq0.items.length; i++) {
        compareItems(sq0.items[i], sq1.items[i]);
      }
    } else if (sq0.items.length < sq1.items.length) {

    }
  }

  void compareItems(Item item0, Item item1) {
    print('item0: $item0\nitem1: $item1');
    var map0 = item0.eMap.values.toList(growable: false);
    var map1 = item1.eMap.values.toList(growable: false);
    print('map0: $map0\nmap1: $map1');

    if (map0.length == map1.length) {
      print('map.length:\n\t${map0.length}\n\t${map1.length}');
      if (map0.length <= 0) {
        print('zero length items: $item0, $item1');
      }
      for (int i = 0; i < map0.length; i++) {
        print('\tmap0[$i]: ${map0[i]}');
        print('\tmap1[$i]: ${map1[i]}');
        compareElements(map0[i], map1[i]);
      }
    } else {
      print('Item: unequal lengths:\n\t$item0\n\t$item1');
    }

  }

  void compareValues(Element e0, Element e1) {
    print('e0: $e0\ne1: $e1');
    List v0 = e0.values;
    List v1 = e1.values;
    if (v0.length == v1.length) {
      for (int i = 0; i < v0.length; i++) {
        if (v0[i] != v1[i]) {
          diff.add([0, e0, e1]);
          return;
        }
      }
      same.add(e0);
    } else if (v0.length < v1.length) {
      print('v0: $v0\nv1: $v1');
      diff.add([-1, e0, e1]);
    } else {
      diff.add([1, e0, e1]);
      print('v0: $v0\nv1: $v1');
    }
  }

}





