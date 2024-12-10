import 'dart:io';

void main() {
  var exchangeRates = {
    'USD': 0.0286, 
    'EUR': 0.026,  
    'JPY': 3.8,    
    'GBP': 0.023 
  };


  stdout.write('Enter amount in THB: ');
  double amount = double.parse(stdin.readLineSync()!);

  stdout.write('Enter currency (USD, EUR, JPY, GBP): ');
  String currency = stdin.readLineSync()!.toUpperCase();


  if (exchangeRates.containsKey(currency)) {
    double convertedAmount = amount * exchangeRates[currency]!;
    print('Converted Amount: ${convertedAmount.toStringAsFixed(2)} $currency');
  } else {
    print('Currency not supported!');
  }
}
