import 'dart:io';

void main(List<String> args) {
  /*
  Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el multiplicador y el producto.
   */
  int num, cantNumeros = 20;
  int producto;
  print("Ingrese el número para mostrar la tabla multiplar");
  num = int.parse(stdin.readLineSync()!);
  for (int i = 0; i <= cantNumeros; i++) {
    producto = num * i;
    print("$num X $i = $producto");
  }
}
