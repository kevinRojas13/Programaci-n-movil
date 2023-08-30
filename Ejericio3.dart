class Cuenta {
  String nombre;     // Atributo para almacenar el nombre en la cuenta
  String dni;        // Atributo para almacenar el número de DNI en la cuenta
  double cantidad;   // Atributo para almacenar la cantidad de dinero en la cuenta

  // Constructor de la clase Cuenta con parámetros
  Cuenta(this.nombre, this.dni, this.cantidad);

  // Getter para obtener el valor de la cantidad
  double get getCantidad => cantidad;

  // Setter para modificar el valor de la cantidad
  set setCantidad(double nuevaCantidad) {
    cantidad = nuevaCantidad;
  }

  // Método para realizar un ingreso en la cuenta
  void ingreso(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  // Método para realizar un reintegro (retirar dinero) de la cuenta
  void reintegro(double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;
    }
  }

  // Método para realizar una transferencia de esta cuenta a otra cuenta
  void transferencia(Cuenta destino, double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;      // Restar cantidad de esta cuenta
      destino.ingreso(cantidad);       // Agregar cantidad a la cuenta destino
    }
  }
}