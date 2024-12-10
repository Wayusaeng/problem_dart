import 'dart:io';

void main() {
  stdout.write("จำนวนสินค้าที่ซื้อ: ");
  int q = int.parse(stdin.readLineSync()!);
  stdout.write("ราคาต่อหน่วย: ");
  double p = double.parse(stdin.readLineSync()!);

  double total = q * p;
  double discount = (q >= 10) ? 0.2 : (q >= 5) ? 0.1 : 0;
  double finalPrice = total * (1 - discount);

  print("ราคารวม: ${finalPrice.toStringAsFixed(2)} บาท");
}
