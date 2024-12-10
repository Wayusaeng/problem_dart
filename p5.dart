void main() {
  Map<String, int> scores = {'Alice': 95, 'Bob': 85, 'Charlie': 90};
  String result = findHighestScorer(scores);
  print('Highest Scorer: $result');
}

String findHighestScorer(Map<String, int> scores) {
  var highestScorer = scores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
  return '${highestScorer.first.key} with ${highestScorer.first.value} points';
}
