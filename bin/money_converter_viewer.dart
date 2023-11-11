
// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:core';


void main() {
  List<int> listaDolares = [20000, 30000, 4000, 2500, 1000, 7600];

  int valorDolar = 4773;
  dynamic valorEuros = 0.92;

  bool? estaActivo;


  while (estaActivo = true) {
    late String eleccion;
    print('-------------------------------');
    print('Bienvenido al Gestor de Valores');
    print('Elija una opción: \nC para ver en pesos chilenos (CLP)\nD para ver en dolares (USD)\nE para ver en euros (EU)');
    eleccion = (stdin.readLineSync()!);
    String eleccionConvertida = eleccion.toUpperCase();

    if (eleccionConvertida.isEmpty) {
      print('Realizo un ingreso en blanco...');
    }
    
    if (eleccionConvertida != "C" &&
      eleccionConvertida != "D" &&
      eleccionConvertida != "E") {
      print('Opción no válida, reintente nuevamente.');
    }

    if (eleccionConvertida == "C") {
      List<int> listaFinalPesos = [];
      for (int pesoIndice in listaDolares) {
        listaFinalPesos.add(pesoIndice * valorDolar);
      }
      print(listaFinalPesos);
    }

    if (eleccionConvertida == "D") {
      print('Los valores ya se encuentran en dolares');
      print(listaDolares);
    }

    if (eleccionConvertida == "E") {
      List<dynamic> listaFinalEuros = [];
      for (dynamic euroIndice in listaDolares) {
        listaFinalEuros.add(euroIndice * valorEuros);
      }
      print(listaFinalEuros);
    }

    print('Si desea continuar pulse cualquier tecla, sino ingrese el número [0] para cerrar la aplicación');
    late String? ingresoFinal;
    ingresoFinal = (stdin.readLineSync());

    if (ingresoFinal == '0') {
      estaActivo = false;
      print('¡Gracias por su consulta, hasta luego!');
      return;
    }
  }
}
