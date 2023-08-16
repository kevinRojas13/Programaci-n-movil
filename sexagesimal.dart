import 'dart:math';

void main() {
  double gradosSexagesimales = 45.0; // variable

  double gradosCentesimales = convertirSexagesimalACentesimal(gradosSexagesimales);
  double radianes = convertirSexagesimalARadianes(gradosSexagesimales);

  print(gradosSexagesimales.toString()+' VALOR DE GRADOS SEXAGESIMAL');
  print("Grados Sexagesimales: $gradosSexagesimales");
  print("Grados Centesimales: $gradosCentesimales");
  print("Radianes: ${radianes.toStringAsFixed(4)}");
}

double convertirSexagesimalACentesimal(double gradosSexagesimales) {
  return (gradosSexagesimales / 360) * 400;
}

double convertirSexagesimalARadianes(double gradosSexagesimales) {
  return (gradosSexagesimales / 180) * pi;
}