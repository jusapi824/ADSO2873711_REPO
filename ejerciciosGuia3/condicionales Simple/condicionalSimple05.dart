import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - EJE CONDICIONAL SIMPLE 05
  /*
    Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
  */
  // DEFINICIÓN vbles
  int cantLLantas;
  double precioUnitario, pagoTotal;
  // ENTRADA Alg
  print("Cual es la cantidad de llantas");
  cantLLantas = int.parse(stdin.readLineSync()!);
  // PROCESO Alg
  precioUnitario = 80000; // Si cantidad < 5
  if (cantLLantas >= 5) {
    precioUnitario = 70000;
  }
  pagoTotal = precioUnitario * cantLLantas;
  // SALIDA Alg
  print("Para las $cantLLantas llantas debe pagar $pagoTotal");
}
