import 'dart:io';

void main() {
  print("Ejemplo 02 - Entrada/Salida Datos");
  // DEFINICIÓN vbles
  int num1, num2, suma;
  // ENTRADA Alg
  print("Ingrese valor del número 1");
  num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese valor del número 2");
  num2 = int.parse(stdin.readLineSync()!);
  // PROCESO Alg
  suma = num1 + num2;
  // SALIDA Algo
  print("La suma de los números es: $suma");
}
