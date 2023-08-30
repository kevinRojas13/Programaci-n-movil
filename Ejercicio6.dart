// Definición de la clase Persona
class Persona {
  String nombre;
  int edad;
  String DNI;

  // Constructor
  Persona(this.nombre, this.edad, this.DNI);
}

// Definición de la clase Cuenta
class Cuenta {
  Persona titular;   // Atributo titular de tipo Persona
  double cantidad;   // Atributo cantidad de tipo double

 
  // Constructor con parámetros
  Cuenta.conDatos(this.titular, this.cantidad);

  // Getter para el atributo titular
  Persona getTitular() {
    return titular;
  }

  // Getter para el atributo cantidad
  double getCantidad() {
    return cantidad;
  }

  // Método para mostrar los datos de la cuenta
  void mostrar() {
    print("Titular: ${titular.nombre}");
    print("Edad del titular: ${titular.edad}");
    print("Cantidad: \$${cantidad}");
  }

  // Método para ingresar una cantidad a la cuenta
  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  // Método para retirar una cantidad de la cuenta
  void retirar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad -= cantidad;
    }
  }
}

// Función principal (main) para ejecutar el código
void main() {
  // Creación de un objeto de tipo Persona
  Persona titularCuenta = Persona("Juan", 25, "12345678");

  // Creación de un objeto de tipo Cuenta
  Cuenta cuenta = Cuenta.conDatos(titularCuenta, 1000.0);

  // Mostrar los datos de la cuenta
  cuenta.mostrar();

  // Ingresar dinero a la cuenta
  cuenta.ingresar(500.0);
  print("Después de ingresar dinero:");
  cuenta.mostrar();

  // Retirar dinero de la cuenta
  cuenta.retirar(200.0);
  print("Después de retirar dinero:");
  cuenta.mostrar();
}