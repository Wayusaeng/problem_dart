void main() {
  List<double> numbers = [12.5, 7.3, 22.9, 15.4, 10.0];

  var result = calculateStats(numbers);

  print('ค่าต่ำสุด: ${result['min']}');
  print('ค่าสูงสุด: ${result['max']}');
  print('ค่าเฉลี่ย: ${result['average']}');
}

Map<String, double> calculateStats(List<double> numbers) {
  double min = numbers.reduce((a, b) => a < b ? a : b);
  double max = numbers.reduce((a, b) => a > b ? a : b);
  double average = numbers.reduce((a, b) => a + b) / numbers.length;

  return {'min': min, 'max': max, 'average': average};
}
