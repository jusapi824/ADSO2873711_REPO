import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  /*
  Desarrollar un menú que permita realizar
  las operaciones matemáticas básicas
  */
  int opcion;
  double resultado, num1 = 0, num2 = 0;
  do {
    print("*********************************************");
    print("Bienvenido a la calculadora");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicación");
    print("4. División");
    print("5. Salir");
    print("*********************************************");
    print("Digite la opción deseada");
    opcion = int.parse(stdin.readLineSync()!);
    if (opcion >= 1 && opcion < 5) {
      print("Ingrese los 2 números para operar");
      num1 = double.parse(stdin.readLineSync()!);
      num2 = double.parse(stdin.readLineSync()!);
    }
    switch (opcion) {
      case 1:
        resultado = num1 + num2;
        print("La suma de los números es: $resultado");
        break;
      case 2:
        resultado = num1 - num2;
        print("La resta de los números es: $resultado");
        break;
      case 3:
        resultado = num1 * num2;
        print("La multiplicación de los números es: $resultado");
        break;
      case 4:
        resultado = num1 / num2;
        print("La división de los números es: $resultado");
        break;
      case 5:
        print("En la buena!");
        break;
      default:
        print("Opción incorrecta");
    }
  } while (opcion != 5);
}
