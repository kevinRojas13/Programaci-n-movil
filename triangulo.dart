import 'dart:io';
import 'dart:math'; // Importar la biblioteca para usar la función sqrt

void main() {
  print("Ingrese la longitud del primer lado del triángulo:");
  double lado1 = double.parse(stdin.readLineSync()!);

  print("Ingrese la longitud del segundo lado del triángulo:");
  double lado2 = double.parse(stdin.readLineSync()!);

  print("Ingrese la longitud del tercer lado del triángulo:");
  double lado3 = double.parse(stdin.readLineSync()!);

  double semiperimetro = (lado1 + lado2 + lado3) / 2;
  double area = calcularAreaTriangulo(lado1, lado2, lado3, semiperimetro);

  print("El área del triángulo es: ${area.toStringAsFixed(2)} unidades cuadradas");
}

double calcularAreaTriangulo(double lado1, double lado2, double lado3, double semiperimetro) {
  return sqrt(semiperimetro * (semiperimetro - lado1) * (semiperimetro - lado2) * (semiperimetro - lado3));
}