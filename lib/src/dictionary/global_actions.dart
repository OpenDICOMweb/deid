// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

import 'package:core/core.dart';

import 'basic_profile.dart';
import 'tag_group.dart';

//TODO: document the priorities
/// This [class] manages the keeping and removing of Global and private tags.
class GlobalActions {
  static const List<int> defaultKeepGroups = const <int>[];

  /// A list of Tags that should be kept (i.e. not removed) in the [Dataset].
  /// If a tag is in this list it will not be modified or removed, even if other rules
  /// specify that it should be modified or removed.
  List<int> keep;

  /// A list of Tags that should be removed from the [Dataset].
  /// If a tag is in this list it will be removed, even if other rules
  /// specify that it should not be removed.
  List<int> remove;

  /// A [List] of [TagGroup]s that should be retained in the Dataset.  A Tag Code in the
  /// [remove] [List] can override these rules.
  List<TagGroup> keepGroups;

  /// A [List] of [TagGroup]s that should be removed from the Dataset.  A Tag Code in the
  /// [keep] [List] can override these rules.
  List<TagGroup> removeGroups;

  /// If [false], all private tags will be removed.  If [true], the Private Data
  /// Element Characteristics Sequence (0008,0300) will be used to determine which,
  /// if any, private tags to retain.  If the Dataset does not contain a
  /// Private Data Element Characteristics Sequence, all private tags will be
  /// removed.
  bool keepSafePrivate;

  /// A [List] of [String]s that identify Private Group Creators.
  ///
  /// A list of Private Groups, identified by their Private Group Creator token,
  /// to be retained in the [Dataset]. If this [List] is [null] or empty [] the
  /// Private Data Element Characteristics Sequence (0008,0300) will determine
  /// which Data Elements are retained.
  ///
  /// If this list is not null, then any Private Groups that have a creator
  /// token matching a [String] in this [List] will be retained using the
  /// Private Data Element Characteristics Sequence (0008,0300).  The Private
  /// Groups associated with any Private Group Creators that don't match this
  /// [List] will be removed.
  List<String> keepPrivateCreators;

  /// Creates a set of [GlobalActions] for de-identification.
  GlobalActions({
      this.keep: BasicProfile.keep,
      this.remove: BasicProfile.remove,
      this.keepGroups: TagGroup.defaultKeepGroups,
      this.removeGroups: TagGroup.defaultRemoveGroups,
      this.keepSafePrivate: false,
      this.keepPrivateCreators}) {
    if (areKeepGroupsInconsistent || areKeepTagsInconsistent)
      throw "Inconsistent keep/remove groups";
  }

  /// If [true] the Element with this Tag Code should be retained.
  bool isKeeper(int tagCode) {
    if (keep.contains(tagCode)) return true;
    for (TagGroup group in keepGroups) if (group.contains(tagCode)) return true;
    return false;
  }

  /// [true] if this tag is in one of the [removeGroups].
  bool inRemoveGroup(int tag) {
    for (TagGroup group in removeGroups) if (group.contains(tag)) return true;
    return false;
  }

  /// Process the Global Rules for de-identifying the [Dataset].
  void process(Dataset ds) {
    processPrivateTags(ds);
    List<int> tags = ds.tagCodes;
    for (int tag in tags) {
      if (isKeeper(tag)) continue;
      if (remove.contains(tag) || inRemoveGroup(tag)) ds.remove(tag);
    }
  }

  /// Process the Global Rules for de-identifying the Private
  /// Data Groups in the [Dataset].
  void processPrivateTags(Dataset ds) {
    if (keepSafePrivate == false) {
      ds.removeAllPrivate();
    } else {
      //ds.keepSafePrivate(ds.keepPrivateCreators);
      ds.keepSafePrivate();
    }
  }

  /// Verifies that the [keepGroups] and [removeGroups] [List]s
  /// are mutually exclusive.
  bool get areKeepGroupsInconsistent {
    for (TagGroup group in keepGroups) if (removeGroups.contains(group)) return false;
    return true;
  }

  /// Verifies that the [keep] Tag Code and [remove] [tag] [List]s
  /// are mutually exclusive.
  bool get areKeepTagsInconsistent {
    for (int code in keep) if (removeGroups.contains(code)) return false;
    return true;
  }
}
