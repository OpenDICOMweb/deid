/// Json Template

String parameters = '''
{
  "DATEINC": 0,
   "KEY": 0,
   "PREFIX": "Basic",
   "SPONSOR": 0,
    "SUFFIX": "Basic",
    "TRIAL": "BasicTrial",
    "UIDROOT": "2.16.840.1.114274.1818",
    "TRIAD": 3
  }''';

class Rule {
  int target;
  String keyword;
  String function;
  int source;
  List args;

  Rule(this.target, this.keyword, this.function, this.source, this.args);

  Map get map =>
      {
        "targetTag": target,
        "keyword": keyword,
        "function": function,
        "source": source,
        "args": args};
}

