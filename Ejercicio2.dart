// Definición de la clase Persona
class Persona {
  String nombre;
  int edad;
  String DNI;
  String sexo;
  double peso;
  double altura;

  // Constantes para los valores de IMC
  static const int PESO_IDEAL_BAJO = -1;
  static const int PESO_IDEAL_NORMAL = 0;
  static const int PESO_IDEAL_ALTO = 1;

  // Constructor por defecto
  Persona({this.nombre = '', this.edad = 0, this.DNI = '', this.sexo = 'H', this.peso = 0, this.altura = 0});

  // Constructor con nombre, edad y sexo, el resto por defecto
  Persona.conNombreEdadSexo(String nombre, int edad, String sexo)
      : this(nombre: nombre, edad: edad, sexo: sexo);

  // Constructor con todos los atributos como parámetro
  Persona.conTodosLosAtributos(String nombre, int edad, String DNI, String sexo, double peso, double altura)
      : this(nombre: nombre, edad: edad, DNI: DNI, sexo: sexo, peso: peso, altura: altura);

  // Método para calcular el IMC y devolver un valor indicando su estado
  int calcularIMC() {
    double imc = peso / (altura * altura);
    if (imc < 20) {
      return PESO_IDEAL_BAJO;
    } else if (imc >= 20 && imc <= 25) {
      return PESO_IDEAL_NORMAL;
    } else {
      return PESO_IDEAL_ALTO;
    }
  }

  // Método para determinar si la persona es mayor de edad
  bool esMayorDeEdad() {
    return edad >= 18;
  }

  // Método para comprobar y corregir el valor del sexo
  String comprobarSexo(String sexo) {
    return (sexo == 'H' || sexo == 'M') ? sexo : 'H';
  }
}

// Función principal (main) para ejecutar el código
void main() {
  // Creación de objetos de tipo Persona con diferentes constructores
  Persona persona1 = Persona();
  Persona persona2 = Persona.conNombreEdadSexo("Juan", 25, "H");
  Persona persona3 = Persona.conTodosLosAtributos("María", 30, "12345678", "M", 60, 1.65);

  // Impresión de información de las personas creadas
  print("Persona 1:");
  print("IMC: ${persona1.calcularIMC()}");
  print("Es mayor de edad: ${persona1.esMayorDeEdad()}");

  print("\nPersona 2:");
  print("IMC: ${persona2.calcularIMC()}");
  print("Es mayor de edad: ${persona2.esMayorDeEdad()}");

  print("\nPersona 3:");
  print("IMC: ${persona3.calcularIMC()}");
  print("Es mayor de edad: ${persona3.esMayorDeEdad()}");
}