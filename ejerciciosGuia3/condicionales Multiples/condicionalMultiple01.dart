import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - CONDICIONAL MÚLTIPLE 01
  /*

  */
  // DEFINICIÓN vbles
  String? nombreCliente;
  int tipoCliente;
  int cantEscobas, cantRecogedores, cantAromat;
  int precioEscoba = 3000, precioRecogedor = 1000, precioAromat = 1000;
  double descuento, totalCompra, subTotal;
  //  ENTRADA Alg
  print("Cual es su nombre");
  nombreCliente = stdin.readLineSync();
  print("Cual es su categoría?");
  tipoCliente = int.parse(stdin.readLineSync()!);
  print("Cual es la cantidad de escobas, recogedores y aromatizantes");
  cantEscobas = int.parse(stdin.readLineSync()!);
  cantRecogedores = int.parse(stdin.readLineSync()!);
  cantAromat = int.parse(stdin.readLineSync()!);
  // PROCESO
  subTotal = (cantEscobas.toDouble() * precioEscoba) +
      (cantRecogedores * precioRecogedor) +
      (cantAromat * precioAromat);
  switch (tipoCliente) {
    // Se evalúan las categorias
    case 1:
      descuento = subTotal * 0.05;
      break;
    case 2:
      descuento = subTotal * 0.08;
      break;
    case 3:
      descuento = subTotal * 0.12;
      break;
    case 4:
      descuento = subTotal * 0.15;
      break;
    default:
      print("La categoría es incorrecta");
      descuento = 0;
      break;
  }
  totalCompra = subTotal - descuento;
  // SALIDA
  print("Su nombre es: $nombreCliente");
  print("Subtotal a pagar: $subTotal");
  print("EL descuento es: $descuento");
  print("El total a pagar es: $totalCompra");
}
