import 'dart:io';

void main(List<String> args) {
  /*Leer 10 números e imprimir solamente los números positivos*/

  int cantNumeros = 10;
  int num;
  for (int i = 0; i < cantNumeros; i++) {
    print("Ingrese el número");
    num = int.parse(stdin.readLineSync()!);
    if (num > 0) {
      print("El número es positivo: $num");
    } else {
      print("El número es negativo");
    }
  }
}
