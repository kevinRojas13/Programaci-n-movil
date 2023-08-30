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

  // Constructor por defecto
  Cuenta(this.titular, this.cantidad);

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

// Definición de la clase CuentaJoven
class CuentaJoven extends Cuenta {
  double bonificacion; // Atributo bonificación de tipo double

  // Constructor de CuentaJoven
  CuentaJoven(Persona titular, double cantidad, this.bonificacion) : super(titular, cantidad);

  // Getter para el atributo bonificación
  double getBonificacion() {
    return bonificacion;
  }

  // Método para verificar si el titular es válido
  bool esTitularValido() {
    return titular.edad >= 18 && titular.edad < 25;
  }

  // Método para retirar una cantidad de la cuenta joven (solo si el titular es válido)
  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    }
  }

  // Método para mostrar los datos de la cuenta joven (incluyendo bonificación)
  @override
  void mostrar() {
    super.mostrar();
    print("Tipo de cuenta: Cuenta Joven");
    print("Bonificación: ${bonificacion}%");
  }
}

// Función principal (main) para ejecutar el código
void main() {
  // Creación de un objeto de tipo Persona
  Persona titularCuentaJoven = Persona("Ana", 20, "87654321");

  // Creación de un objeto de tipo CuentaJoven
  CuentaJoven cuentaJoven = CuentaJoven(titularCuentaJoven, 1500.0, 5.0);

  // Mostrar los datos de la cuenta joven
  cuentaJoven.mostrar();

  // Intentar retirar dinero de la cuenta joven
  cuentaJoven.retirar(300.0);
  print("Después de intentar retirar dinero:");
  cuentaJoven.mostrar();

  // Cambiar el titular por uno menor de edad
  cuentaJoven.titular = Persona("Pedro", 16, "78901234");
  // Intentar retirar dinero de la cuenta joven con titular inválido
  cuentaJoven.retirar(200.0);
  print("Después de intentar retirar dinero con titular inválido:");
  cuentaJoven.mostrar();
}