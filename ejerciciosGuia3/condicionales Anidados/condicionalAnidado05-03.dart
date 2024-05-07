import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - CONDICIONAL ANIDADO 05
  /*
  Una frutería ofrece las manzanas con descuento según la siguiente tabla:
  Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo vale $1300
  */
  // DEFINICIÓN vbles
  double kilos, descuento, totalPagar;
  double precioKilo = 1300;
  // ENTRADA Alg
  stdout.writeln("Ingrese la cantidad de kilos a comprar");
  kilos = double.parse(stdin.readLineSync()!);
  // PROCESO Alg
  totalPagar = precioKilo * kilos;
  if (kilos > 10) {
    descuento = 0;
  } else if (kilos > 5) {
    descuento = totalPagar * 0.1;
  } else if (kilos > 2) {
    descuento = totalPagar * 0.15;
  } else {
    descuento = totalPagar * 0.2;
  }
  totalPagar = totalPagar - descuento;
  // SALIDA
  print("El total a pagar es: $totalPagar");
}
