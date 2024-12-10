import 'dart:io';

void main() {
  stdout.write("กรุณากรอกข้อความ: ");
  String input = stdin.readLineSync()!;

  var result = analyzeSentence(input);

  print('Total Words: ${result['total']}');
  print('Unique Words: ${result['unique']}');
}

Map<String, int> analyzeSentence(String sentence) {

  List<String> words = sentence.split(RegExp(r'\s+')).map((word) => word.toLowerCase()).toList();

  Set<String> uniqueWords = Set.from(words);

  return {
    'total': words.length,
    'unique': uniqueWords.length
  };
}
