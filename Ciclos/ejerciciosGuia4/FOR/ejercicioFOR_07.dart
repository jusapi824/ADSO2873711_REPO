import 'dart:io';

void main(List<String> args) {
  /*
Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */
  //DECLARACION DE VARIABLES

  int kilos, clientes = 15;
  double descuento, precio_kilos = 5000, total_pagar = 0, ganancias_totales = 0;
  for (int i = 0; i < clientes; i++) {
    print("ingrese la cantidad de kilos");
    kilos = int.parse(stdin.readLineSync()!);
    total_pagar = precio_kilos * kilos;
    if (kilos > 10) {
      descuento = total_pagar * 0.15;
      total_pagar = total_pagar - descuento;
    }
    ganancias_totales += total_pagar;
    print("el precio a pagar es de: $total_pagar");
  }
  print("la ganancia total del local es de: $ganancias_totales");
}
