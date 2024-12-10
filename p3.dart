import 'dart:io';

void main() {
  stdout.write("กรุณากรอกตัวเลข: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print("$number เป็นเลขเฉพาะ");
  } else {
    print("$number ไม่ใช่เลขเฉพาะ");
  }
}

bool isPrime(int n) {
  if (n < 2) return false; 
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
