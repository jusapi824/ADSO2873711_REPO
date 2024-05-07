import 'dart:io';

void main(List<String> args) {
  /*
  Tomando como base los resultados obtenidos en un laboratorio de análisis clínicos, un medico determina si una persona esta normal, tiene anemia o tiene cardiopatía lo cual depende de su nivel de hemoglobina en la sangre, de su edad y de su sexo. Si el nivel de hemoglobina que tiene una persona es menor que el rango que le corresponde, se determina su resultado como Anemia, si esta dentro del rango, se determina su resultado como Normal y si esta por encima del rango, se determina su resultado como Cardiopatía. La tabla en la que el medico se basa para obtener el resultado es la siguiente:
  */
  // DEFINICIÓN Vbles
  int edad;
  double nivelHemoglobina;
  String? resultado, genero, opcionEdad;
  // ENTRADA Alg
  print("La persona es mayor a un año? (SI)- (NO)");
  opcionEdad = stdin.readLineSync();
  print("Cual es su género Hombre(H) y Mujer(M)");
  genero = stdin.readLineSync();
  print("Cual es su nivel de Hemoglobina");
  nivelHemoglobina = double.parse(stdin.readLineSync()!);
  // PROCESO
  if (opcionEdad?.toUpperCase() == "SI") {
    print("Ingrese su edad en años");
    edad = int.parse(stdin.readLineSync()!);
    if (edad <= 5) {
      // Menor o igual a 5
      if (nivelHemoglobina < 11.5) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    } else if (edad <= 10) {
      //Mayor a 5 y menor o igual 10
      if (nivelHemoglobina < 12.6) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    } else if (edad <= 15) {
      // Mayor a 10 y Menor o igual 15
      if (nivelHemoglobina < 13) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15.5) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    } else {
      // Mayor a 15
      if (genero?.toUpperCase() == "M") {
        // Género mujer
        if (nivelHemoglobina < 12) {
          resultado = "Anemia";
        } else if (nivelHemoglobina > 16) {
          resultado = "Cardiopatía";
        } else {
          resultado = "normal";
        }
      } else {
        // genero es HOmbre
        if (nivelHemoglobina < 14) {
          resultado = "Anemia";
        } else if (nivelHemoglobina > 18) {
          resultado = "Cardiopatía";
        } else {
          resultado = "normal";
        }
      }
    }
  } else {
    print("Ingrese la edad del bebé en meses");
    edad = int.parse(stdin.readLineSync()!);
    if (edad > 0 && edad <= 1) {
      if (nivelHemoglobina < 13) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 26) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    } else if (edad > 1 && edad <= 6) {
      if (nivelHemoglobina < 10) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 18) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    } else {
      // Entre 6 y 12 meses
      if (nivelHemoglobina < 11) {
        resultado = "Anemia";
      } else if (nivelHemoglobina > 15) {
        resultado = "Cardiopatía";
      } else {
        resultado = "normal";
      }
    }
  }
}
