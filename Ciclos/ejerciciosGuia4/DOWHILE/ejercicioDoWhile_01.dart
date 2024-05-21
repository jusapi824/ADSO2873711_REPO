import 'dart:io';

void main(List<String> args) {
  /*
  En un supermercado una ama de casa pone en su carrito los 
  artículos que va tomando de los estantes. La señora quiere 
  asegurarse de que el cajero le cobre bien lo que ella ha 
  comprado, por lo que cada vez que toma un articulo anota 
  su precio junto con la cantidad de artículos iguales que 
  ha tomado y determina cuanto dinero gastara en ese articulo; 
  a esto le suma lo que ira gastando en los demás artículos, 
  hasta que decide que ya tomo todo lo que necesitaba. 
  Ayúdale a esta señora a obtener el total de sus compras.
  */
  String? articulo, opcion;
  int cantArticulo, contadorArticulos = 0, acumArticulos = 0;
  double precio, totalArticulo, totalCompra = 0;
  do {
    print("Ingrese el artículo a comprar");
    articulo = stdin.readLineSync();
    print("Ingrese la cantidad a comprar de $articulo");
    cantArticulo = int.parse(stdin.readLineSync()!);
    print("Ingrese el precio de $articulo");
    precio = double.parse(stdin.readLineSync()!);
    totalArticulo = cantArticulo * precio;
    print("EL total en el articulo $articulo será: $totalArticulo");
    totalCompra += totalArticulo; // Acumulador
    contadorArticulos++; // Contador
    acumArticulos += cantArticulo;
    print("Hasta el momento lleva $contadorArticulos Items de articulos");
    print("La cantidad de artículos en total va en: $acumArticulos");
    print("Desea ingresar otro artículo (Si) - (No)");
    opcion = stdin.readLineSync();
    print('*' * 50);
  } while (opcion!.toUpperCase() != "NO");
  print("Señora, el total de la compra será: $totalCompra");
  print("va llevar en total: $contadorArticulos");
  print("La cantidad de artículos en total va en: $acumArticulos");
}
