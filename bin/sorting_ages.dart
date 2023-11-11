import 'dart:core';

// A partir del siguiente arreglo de edades var ages = [33, 15, 27, 40, 22,19,32,76,45];Crea un programa en Dart que las ordene e imprima la edad mayor, la edad menor y la edad promedio con sus respectivos mensajes: “La edad mayor es: ” , “La edad menor es: ”, “La edad promedio es: ”

void main() {
  List<int> ages = [33, 15, 27, 40, 22, 19, 32, 76, 45];
  ages.sort();

  int sumar(List<int> numeros) {
    return numeros.reduce((value, element) => value + element);
  }

  double resultado = sumar(ages) / ages.length;
  int valorFinal = resultado.floor();

  print('El promedio es $valorFinal');
  print('El numero mayor es ${ages.last}');
  print('El número menor es ${ages.first}');
}