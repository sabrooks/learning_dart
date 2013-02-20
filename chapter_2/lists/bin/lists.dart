void main() {
// empty list
  var empty = [];
  var empty2 = new List(); // equivalent
  assert(empty.isEmpty && empty2.isEmpty && empty.length == 0);
// defining lists:
  var langs = ["Java","Python","Ruby", "Dart"];
  var readOnlyList = const ["Java","Python","Ruby", "Dart"];
  // List langs = ["Java","Python","Ruby", "Dart"];
  assert(langs is List);
  var langBest = langs[3];
  assert(langBest=="Dart");
  langs[1] = "PHP";
  print(langs);
  // langs[4] = "F#";  // RangeError !
  var langs2 = new List();
  langs2.add("C");
  langs2.add("C#");
  langs2.add("D");
  print(langs2); // [C, C#, D]
  langs2[2] = "JavaScript";
  print(langs2); // [C, C#, JavaScript]
  // langs2[4] = "F#";  // RangeError !
//  var langs3 = new List.fixedLength(4, "Dart");
//  print(langs3);
}
