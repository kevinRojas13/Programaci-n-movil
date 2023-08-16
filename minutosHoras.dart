void main() {
  int segundosTotales = 9876; // VALOR A CAMBIAR

  var horas = segundosTotales ~/ 3600; // División entera para calcular las horas
  var minutos = (segundosTotales % 3600) ~/ 60; // División entera para calcular los minutos
 var segundos = segundosTotales % 60; // Calcula los segundos restantes

  print("Segundos totales: $segundosTotales segundos");
  print("--------------------------------------------");
  print("Equivalente a: $horas horas, $minutos minutos y $segundos segundos");
}