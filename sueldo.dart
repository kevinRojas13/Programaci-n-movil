//Hacer un programa para que lea el sueldo de tres empleados y 
//aplíqueles un aumento del 10, 12 y 15% respectivamente. Escriba el sueldo final.
void main() {
  // INGRESAMOS SUELDO
  double sueldoEmpleado1 = 1000.0;
  double sueldoEmpleado2 = 1500.0;
  double sueldoEmpleado3 = 2000.0;
  // AUMENTAMOS SU SUELDO SEGÚN PREGUNTA 
  double aumentoEmpleado1 = sueldoEmpleado1 * 0.10;
  double aumentoEmpleado2 = sueldoEmpleado2 * 0.12;
  double aumentoEmpleado3 = sueldoEmpleado3 * 0.15;
  // SUMAMOS SUELDO MAS EL PORCCENTAJE CORRESPONDIENTE
  double sueldoFinalEmpleado1 = sueldoEmpleado1 + aumentoEmpleado1;
  double sueldoFinalEmpleado2 = sueldoEmpleado2 + aumentoEmpleado2;
  double sueldoFinalEmpleado3 = sueldoEmpleado3 + aumentoEmpleado3;
  //IMPRIMIMOS DATOS
  print("Sueldo inicial del Empleado 1: \$${sueldoEmpleado1.toStringAsFixed(2)}");
  print("Sueldo inicial del Empleado 2: \$${sueldoEmpleado2.toStringAsFixed(2)}");
  print("Sueldo inicial del Empleado 3: \$${sueldoEmpleado3.toStringAsFixed(2)}");
  print("---------------------------------------------------------------------------");
  print("Sueldo final del Empleado 1: \$${sueldoFinalEmpleado1.toStringAsFixed(2)}");
  print("Sueldo final del Empleado 2: \$${sueldoFinalEmpleado2.toStringAsFixed(2)}");
  print("Sueldo final del Empleado 3: \$${sueldoFinalEmpleado3.toStringAsFixed(2)}");
}



