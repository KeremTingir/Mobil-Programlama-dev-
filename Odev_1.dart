import 'dart:io';

void main() {
  while (true) {
    stdout.write("İşlem tipini seçiniz:\n1-Toplama\n2-Çikarma\n3-Çarpma\n4-Bölme\nCikis için 'q' tuşuna basin.\nSeciminiz: ");
    String choice = stdin.readLineSync() ?? '';
    
    if (choice == 'q') {
      break;
    }
    
    if (choice != '1' && choice != '2' && choice != '3' && choice != '4') {
      print("Gecersiz secim. Lutfen gecerli bir secenek girin.");
      continue;
    }
    
    int operation = int.parse(choice);
    
    stdout.write("İlk sayiyi giriniz: ");
    double num1 = double.parse(stdin.readLineSync() ?? '0.0');
    
    stdout.write("İkinci sayiyi giriniz: ");
    double num2 = double.parse(stdin.readLineSync() ?? '0.0');
    
    double result = calculate(operation, num1, num2);
    
    print("Sonuç: $result");
  }
}

double calculate(int operation, double num1, double num2) {
  double result = 0.0;
  switch (operation) {
    case 1:
      result = num1 + num2;
      break;
    case 2:
      result = num1 - num2;
      break;
    case 3:
      result = num1 * num2;
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Hata: Sifira bolme islemi yapilamaz.");
      }
      break;
  }
  return result;
}
