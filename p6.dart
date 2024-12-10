void main() {
  List<Map<String, String>> students = [
    {'name': 'Alice', 'grade': 'A'},
    {'name': 'Bob', 'grade': 'B'},
    {'name': 'Charlie', 'grade': 'A'}
  ];

  var groupedStudents = groupByGrade(students);
  print(groupedStudents);
}

Map<String, List<String>> groupByGrade(List<Map<String, String>> students) {
  var result = <String, List<String>>{};

  for (var student in students) {
    String grade = student['grade']!;
    String name = student['name']!;

    result.putIfAbsent(grade, () => []).add(name);
  }

  return result;
}
