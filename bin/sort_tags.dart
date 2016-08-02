// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import '../lib/src/deid_tags.dart';

void main() {

  int compare(int a, int b) => a.compareTo(b);

  List<int> tags = new List<int>(deIdTags.length);
  for(int i = 0; i < deIdTags.length; i++)
    tags[i] = deIdTags[i];

  tags.sort();

  List<String> tagStrings = new List<String>(tags.length);
  for (int i = 0; i < tags.length; i++)
    tagStrings[i] = '0x' + tags[i].toRadixString(16).padLeft(8, '0');
  var s = 'List<int> deIdTagsSorted = [\n${tagStrings.join(',\n')} \n];';

  print('deIdTags.length: ${deIdTags.length}, tags.length: ${tags.length}, tagStrings.length: '
            '${tagStrings.length}');
  //print('tags: $tags');
  print(s);


}
