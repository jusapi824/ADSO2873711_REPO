import 'dart:io';

void main(List<String> args) {
  /*Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la 
  semana. Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por 
  comisiones de sus ventas. El gerente de su compañía desea saber cuanto dinero obtendrá en
   la semana cada vendedor por concepto de comisiones por las tres ventas realizadas, 
   y cuanto tomando en cuenta su sueldo base y sus comisiones.*/
  // DECLARACIÓN/DEFINICIÓN VBLES
  int cantVendedores, contador = 0, cantVentas = 3;
  double sueldoBase, venta, totalVentas = 0, comision, sueldoTotal;
  // ENTRADA ALG
  print("Ingrese la cantidad de vendedores");
  cantVendedores = int.parse(stdin.readLineSync()!);
  print("Ingrese el sueldo de los vendedores");
  sueldoBase = double.parse(stdin.readLineSync()!);
  while (contador < cantVendedores) {
    // Controla VENDEDORES
    for (int i = 0; i < cantVentas; i++) {
      // Controla las VENTAS
      // print("Ingrese el valor de la venta "+(i+1).toString());
      print("Ingrese el valor de la venta ${i + 1} del vendedor ${contador +1}");
      venta = double.parse(stdin.readLineSync()!);
      while (venta < 0 || venta > 10000000) {
        print("La venta está fuera del rango, Ingrese de nuevo");
        venta = double.parse(stdin.readLineSync()!);
      }
      totalVentas += venta;
    }
    comision = totalVentas * 0.1;
    sueldoTotal = sueldoBase + comision;
    print("La comisión por ventas es de $comision");
    print("El sueldo total es $sueldoTotal");
    contador++;
  }
}
