import 'dart:io';

void main(List<String> args) {
  /*
  Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */
  double numero;
  int cantNumeros = 20;
  int cantPositivos = 0, cantNegativos = 0, cantCeros = 0;
  for (int i = 0; i < cantNumeros; i++) {
    print("Ingrese un número");
    numero = double.parse(stdin.readLineSync()!);
    // validaciones extra
    if (numero > 0) {
      print("El número es positivo");
      cantPositivos++;
    } else if (numero < 0) {
      print("El número es negativo");
      cantNegativos++;
    } else {
      print("El número es cero");
      cantCeros++;
    }
  }
}
