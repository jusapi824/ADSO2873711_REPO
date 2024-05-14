import 'dart:io';

void main(List<String> args) {
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.*/
  int cantAlumnos = 4;
  double nota, promedio, suma = 0;
  double notaMenor = 6;
  double notaMayor = 0;
  for (int i = 0; i < cantAlumnos; i++) {
    print("Ingrese nota del alumno " + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    while (nota < 0 || nota > 5) {
      print("La nota está en rango incorrecto");
      print("Ingrese de nuevo la nota del alumno " + (i + 1).toString());
      nota = double.parse(stdin.readLineSync()!);
      print("_____________________________________");
    }
    suma += nota; // suma = suma + nota
    if (nota < notaMenor) {
      notaMenor = nota;
    }
    if (nota > notaMayor) {
      notaMayor = nota;
    }
    print("Hasta el momento la nota menor es: $notaMenor");
    print("Hasta el momento la nota mayor es: $notaMayor");
  }
  promedio = suma / cantAlumnos;
  print("EL promedio es: $promedio");
  print("La nota menor es: $notaMenor");
  print("La nota mayor es: $notaMayor");
}
