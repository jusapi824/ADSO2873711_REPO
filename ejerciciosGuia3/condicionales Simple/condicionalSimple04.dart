import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - EJE CONDICIONAL SIMPLE 04
  /*
Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).
  */
  // DEFINICIÓN VARIABLES
  String? nombre;
  int clave;
  double precio, descuento, precioFinal;
  // ENTRADA Alg
  print("Ingrese el nombre del artículo");
  nombre = stdin.readLineSync();
  print("Ingrese la clave. Solamente 1 y 2");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio del producto");
  precio = double.parse(stdin.readLineSync()!);
  // PROCESO Alg
  if (clave == 1 || clave == 2) {
    descuento = precio * 0.1; // Si clave 1, 10%
    if (clave == 2) {
      descuento = precio * 0.2;
    }
    precioFinal = precio - descuento;
  }
  if (clave < 1 || clave > 2) {
    print("La clave es incorrecta");
  }
}
