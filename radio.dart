//Hacer un programa para calcular el área y la longitud de un círculo de cualquier radio requerido.
import 'dart:io';

void main() {
  print("Ingrese el radio del círculo:");
  double radio = double.parse(stdin.readLineSync()!);

  double area = calcularAreaCirculo(radio);
  double longitud = calcularLongitudCirculo(radio);

  print("Área del círculo: ${area.toStringAsFixed(2)} unidades cuadradas");
  print("Longitud del círculo: ${longitud.toStringAsFixed(2)} unidades");
}

double calcularAreaCirculo(double radio) {
  return 3.141592653589793 * radio * radio; // Valor aproximado de π
}

double calcularLongitudCirculo(double radio) {
  return 2 * 3.141592653589793 * radio; // Valor aproximado de π
}