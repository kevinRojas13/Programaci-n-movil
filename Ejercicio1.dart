class Cuenta {
  String titular;   // Atributo para almacenar el titular de la cuenta.
  double cantidad;  // Atributo para almacenar la cantidad en la cuenta.

  // Constructor de la clase.
  Cuenta(this.titular, [this.cantidad = 0]);
  // El constructor recibe el titular (obligatorio) y la cantidad (opcional, por defecto 0).

  // Método para ingresar dinero a la cuenta.
  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
    // Si la cantidad ingresada es positiva, se suma a la cantidad actual.
  }

  // Método para retirar dinero de la cuenta.
  void retirar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad -= cantidad;
      if (this.cantidad < 0) {
        this.cantidad = 0;
      }
    }
    // Si la cantidad a retirar es positiva, se resta de la cantidad actual.
    // Si el retiro deja la cantidad en negativo, se establece en 0.
  }
}

void main() {
  Cuenta miCuenta = Cuenta("Juan Pérez", 1000);  // Creación de una instancia de la clase.

  print("Titular: ${miCuenta.titular}");  // Impresión del titular de la cuenta.
  print("Cantidad inicial: ${miCuenta.cantidad}");  // Impresión de la cantidad inicial.

  miCuenta.ingresar(500);  // Llamada al método ingresar para añadir dinero.
  print("Cantidad después de ingresar: ${miCuenta.cantidad}");  // Impresión de la nueva cantidad.

  miCuenta.retirar(1200);  // Llamada al método retirar para sacar dinero.
  print("Cantidad después de retirar: ${miCuenta.cantidad}");  // Impresión de la cantidad actualizada.
}