import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - CONDICIONAL DOBLE 01
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */
  // DEFINICIÓN variables
  double num1, num2;
  // ENTRADA Alg
  print("Ingrese número 1 y 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  // PROCESO y SALIDA
  if (num1 > num2) {
    print("$num2, $num1");
  }else{
    print("$num1, $num2");
  }
}
