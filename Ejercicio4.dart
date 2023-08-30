// Definición de la clase Contador
class Contador {
  int contador;  // Atributo para almacenar el contador

  // Constructor por defecto
  Contador() : contador = 0;

  // Constructor con parámetros
  Contador.conParametros(this.contador);

  // Getter para obtener el valor del contador
  int get getContador => contador;

  // Setter para modificar el valor del contador
  set setContador(int nuevoContador) {
    contador = nuevoContador;
  }

  // Método para incrementar el contador
  void incrementar() {
    contador++;
  }

  // Método para decrementar el contador
  void decrementar() {
    contador--;
  }
}

// Función principal (main) para ejecutar el código
void main() {
  // Creación de objetos de tipo Contador
  Contador contador1 = Contador();
  Contador contador2 = Contador.conParametros(5);

  // Realizar operaciones en los contadores
  contador1.incrementar();
  contador2.decrementar();

  // Impresión de información de los contadores
  print("Contador 1: ${contador1.getContador}");
  print("Contador 2: ${contador2.getContador}");
}