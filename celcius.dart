void main() {
  double temperaturaCelsius = 25.0; // Cambiamos vlalor

  double temperaturaFahrenheit = celsiusAFahrenheit(temperaturaCelsius);
  double temperaturaKelvin = celsiusAKelvin(temperaturaCelsius);

  print("Temperatura en Celsius: $temperaturaCelsius °C");
   print("------------------------------------------------");
  print("Temperatura convertida a Fahrenheit: $temperaturaFahrenheit °F");
  print("Temperatura convertida a en Kelvin: $temperaturaKelvin K");
}

double celsiusAFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusAKelvin(double celsius) {
  return celsius + 273.15;
}