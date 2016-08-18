De-Identification Issues

This file documents problems encountered when converting PS3.15 Appendix E Table E.1-1.

  0. the table should use keywords, rather than names.
  1. The slashes between the action types, e.g. X/D, must be removed.
  2. The table contains attribute names rather than keywords.  This means that all
     spaces (" "), and apostrophe's ("'") must be removed from the names in column 1.
     Also, slashes ("/") and dashes("-") are replaced by underscores.
  3. The Y/N entries have been to be converted to true/false.
  4. the empty cells that contain "NA" should be fixed.
  0010,0050 PatientsInsurancePlanCodeSequence, false, false
  0010,0101 PatientsPrimaryLanguageCodeSequence, false, false
  0010,0102 PatientsPrimaryLanguageModifierCodeSequence, false, false

  5. Private Attributes, 0xggggeeee where gggg isodd must be removed from the generated table