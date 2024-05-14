import 'dart:io';

void main(List<String> args) {
  /*
Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base en la sig, tabla
  */
  double promPesoNino, promPesoJoven, promPesoAdulto, promPesoAdultoMayor;
  double sumaPesoNino = 0,
      sumaPesoJoven = 0,
      sumaPesoAdulto = 0,
      sumaPesoAdultoMayor = 0;
  int edad, cantPersonas = 5;
  double peso;
  int contNino = 0, contJoven = 0, contAdultos = 0, contAdultoMayor = 0;
  for (int i = 0; i < cantPersonas; i++) {
    print("Ingrese la edad");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese el peso");
    peso = double.parse(stdin.readLineSync()!);
    if (edad > 0 && edad <= 12) {
      //NIÑOS
      //sumaPesoNino = sumaPesoNino + peso;
      sumaPesoNino += peso; //ACUMULADOR
      contNino++; //CONTADOR
    } else if (edad <= 29) {
      // JOVEN
      sumaPesoJoven += peso; //ACUMULADOR
      contJoven++; //CONTADOR
    } else if (edad <= 59) {
      // ADULTO
      sumaPesoAdulto += peso; //ACUMULADOR
      contAdultos++; //CONTADOR
    } else {
      // ADULTO MAYOR
      sumaPesoAdultoMayor += peso; //ACUMULADOR
      contAdultoMayor; //CONTADOR
    }
  }
  promPesoNino = sumaPesoNino / contNino;
  promPesoJoven = sumaPesoJoven / contJoven;
  promPesoAdulto = sumaPesoAdulto / contAdultos;
  promPesoAdultoMayor = sumaPesoAdultoMayor / contAdultoMayor;
  print("EL promedio de pesos de niños es: $promPesoNino");
  print("EL promedio de pesos de jovenes es: $promPesoJoven");
  print("EL promedio de pesos de adultos es: $promPesoAdulto");
  print("EL promedio de pesos de adulto mayor es: $promPesoAdultoMayor");
}
