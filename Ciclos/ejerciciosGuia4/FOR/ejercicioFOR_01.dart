import 'dart:io';

void main() {
  /* Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.*/
  int cantNotas = 3;
  double promedio, nota;
  double suma = 0; // Vble ACUMULADOR
  for (int i = 0; i < cantNotas; i++) {
    print("Ingrese la nota");
    nota = double.parse(stdin.readLineSync()!);
    suma = suma + nota;
  }
  promedio = suma / cantNotas;
  print("El promedio es: $promedio");
}
