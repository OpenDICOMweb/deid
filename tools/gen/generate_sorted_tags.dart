// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'src/deid_tags_unsorted.dart';

void main() {

 // int compare(int a, int b) => a.compareTo(b);

  List<int> tags = new List<int>(deIdTagsUnsorted.length);
  for(int i = 0; i < deIdTagsUnsorted.length; i++)
    tags[i] = deIdTagsUnsorted[i];

  tags.sort();

  List<String> tagStrings = new List<String>(tags.length);
  for (int i = 0; i < tags.length; i++)
    tagStrings[i] = '0x' + tags[i].toRadixString(16).padLeft(8, '0');
  var s = 'List<int> deIdTagsSorted = [\n${tagStrings.join(',\n')} \n];';

  print('deIdTags.length: ${deIdTagsUnsorted.length}, '
            'tags.length: ${tags.length}, '
            'tagStrings.length: ${tagStrings.length}');
  print(s);
}
