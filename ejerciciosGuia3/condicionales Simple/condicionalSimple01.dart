import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - EJE CONDICIONAL SIMPLE 01
  /*
  El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del 5% si el empleado trabajó más de 40 horas. Imprimir el nombre del empleado y su sueldo. Desarrollar el algoritmo y diagrama de flujo.
  */
  // DEFINICIÓN vbles
  String? nombre;
  double horasTrabajas, cuotaHora, sueldo, incentivo;
  // ENTRADA Alg
  print("Ingrese su nombre");
  nombre = stdin.readLineSync();
  print("Digite cantidad de horas trabajas");
  horasTrabajas = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor de la hora");
  cuotaHora = double.parse(stdin.readLineSync()!);
  // PROCESO Alg
  sueldo = horasTrabajas * cuotaHora;
  if (horasTrabajas > 40) {
    incentivo = sueldo * 0.05;
    sueldo = sueldo + incentivo;
    print("Se obtuvo un incentivo de : $incentivo");
  }
  // SALIDA Alg
  print("EL nombre del empleado es: $nombre");
  print("El sueldo neto es: $sueldo");
}
