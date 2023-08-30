// Definición de la clase Persona
class Persona {
  String nombre;
  int edad;
  String DNI;

  // Constructor
  Persona(this.nombre, this.edad, this.DNI);

  // Setter para el atributo nombre
  void setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  // Getter para el atributo nombre
  String getNombre() {
    return nombre;
  }

  // Setter para el atributo edad
  void setEdad(int nuevaEdad) {
    edad = nuevaEdad;
  }

  // Getter para el atributo edad
  int getEdad() {
    return edad;
  }

  // Setter para el atributo DNI
  void setDNI(String nuevoDNI) {
    DNI = nuevoDNI;
  }

  // Getter para el atributo DNI
  String getDNI() {
    return DNI;
  }

  // Método para mostrar los datos de la persona
  void mostrar() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("DNI: $DNI");
  }

  // Método para verificar si la persona es mayor de edad
  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

// Función principal (main) para ejecutar el código
void main() {
  // Creación de un objeto de tipo Persona
  Persona persona1 = Persona("Juan", 25, "12345678");

  // Mostrar los datos de la persona
  persona1.mostrar();

  // Verificar si la persona es mayor de edad
  if (persona1.esMayorDeEdad()) {
    print("Es mayor de edad");
  } else {
    print("No es mayor de edad");
  }
}