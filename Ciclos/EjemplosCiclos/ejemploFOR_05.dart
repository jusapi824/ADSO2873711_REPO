import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un algoritmo tal que, dado como datos 10 números enteros, obtenga la suma de los 10 números enteros. Se mostrará la suma de dichos números
  */
  int num;
  int suma = 0; // Vble tipo ACUMULADOR
  double promedio;
  // ADICIONAR CÓDIGO PARA SACAR EL PROMEDIO
  // MOSTRAR EL MENSAJE: "Digite número 1, Digite número 2,...."
  int cant=10;
  for (int i = 0; i < cant; i++) {
    print("Digite el número " + (i + 1).toString());
    num = int.parse(stdin.readLineSync()!);
    // Se va guardando la suma de números
    suma = suma + num; //suma += num;
  }
  promedio = suma / cant;
  print("La suma es: $suma");
  print("El promedio es: $promedio");
}
