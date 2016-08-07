### Anonimization Rule Names

| Triad | DICOMweb |
|:------|:---------|
| blank | blank    |
|  add  | replace  |
|       |          |
|       |          |
|       |          |


tag below means keyword or tag

 1. Blank

 2. Add : AddOrReplace

 3. Contents [3, 4, 5] : ds[keyword or tag]

    * content(keyword or tag)

        Returns the contents of the element.

    * content([keyword or tag], Regexp regexp)

        Matching characters are replaced with blanks

    * content([keyword or tag], Regexp regexp, String replacement)

        String VRs only. Removes all the characters matched by the
        regular expression and returns the List of modified values. Like
        s.replaceAll\(regexp, replacement\).

 4. date(separator) [6] is same and in transforms

 5. empty() [7] the same

 6. modifyDate(tag, year, mont, day, defaultDate = )[8, 9]

    In Dataset

    defaultDate = new Date(0001, 01, 01;

    What if there is more than one date in the values?

 7. encrypt(tag, String key) [10, 11]

    In Dataset

 8. hash(tag) [12] return 10digit string that is hash

    In Dataset

 9. hashUid(tag, [String root, tag, studyParam]) [13, 14]

10. incrementDate(tag, int days) [15]

11. keep(tag)

    In Dataset

    This should be the first action before other Global actions

12. remove(tag) [17]

    In Dataset

13. time(tag, separator) [18]

    In Dataset









