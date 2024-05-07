import 'dart:io';

void main(List<String> args) {
  // JULIAN SALAZAR - EJE CONDICIONAL SIMPLE 08
  /*
  Dada la duración en minutos de una llamada calcular el costo, considerando:
    Hasta tres minutos el costo es 600
    Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
  */
  // DEFINICIÓN vbles
  double duracionLLamada, costoLLamada, minutosAdicionales;
  // ENTRADA Alg
  print("Indique la duración de la llamada");
  duracionLLamada = double.parse(stdin.readLineSync()!);
  costoLLamada = 0;
  if (duracionLLamada <= 3) {
    costoLLamada = 600;
  }
  if (duracionLLamada > 3) {
    minutosAdicionales = duracionLLamada - 3;
    costoLLamada = 600 + minutosAdicionales * 150;
  }
  // SALIDA
  print("El costo total de la llamada fue: $costoLLamada");
}
