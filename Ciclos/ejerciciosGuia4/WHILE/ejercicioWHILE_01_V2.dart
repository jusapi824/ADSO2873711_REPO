import 'dart:io';

void main(List<String> args) {
  /*Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en la semana cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando en cuenta su sueldo base y sus comisiones.*/
  // DECLARACIÓN/DEFINICIÓN VBLES
  int cantVendedores;
  String? opcion = "si";

  while (opcion!.toLowerCase() == "si") {
    print("Ingrese los datos del vendedor");
    // Lógica del ejercicio
    print("Desea ingresar otro vendedor Si - No");
    opcion = stdin.readLineSync();
  }
}
