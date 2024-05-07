import 'dart:io';

void main() {
  // DEFINICIÓN vbles
  String? nombre;
  //nombre = "Juan";
  // ENTRADA Algoritmo
  print("Ejemplo 01 - Entrada/Salida Datos");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();
  // SALIDA Algoritmo
  print("Su nombre es: $nombre");
}
