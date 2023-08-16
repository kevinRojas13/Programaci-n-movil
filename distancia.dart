import 'dart:math';

void main() {
  double x1 = 1.0;
  double y1 = 2.0;

  double x2 = 4.0;
  double y2 = 6.0;

  double distancia = calcularDistancia(x1, y1, x2, y2);

  print("La distancia entre los puntos es: ${distancia.toStringAsFixed(2)} unidades");
}

double calcularDistancia(double x1, double y1, double x2, double y2) {
  double diferenciaX = x2 - x1;
  double diferenciaY = y2 - y1;

  double distancia = sqrt(diferenciaX * diferenciaX + diferenciaY * diferenciaY);
  return distancia;
}