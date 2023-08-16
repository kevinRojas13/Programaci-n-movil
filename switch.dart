void main(List<String> args) {
  int dia= 2;
  String hoy = "";

  switch (dia) {
    case 1:
    hoy= "Domingo";
    break;
    case 2:
    hoy= "Lunes";
    break;
    case 3:
    hoy= "Martes";
    break;
    case 4:
    hoy= "Miércoles";
    break;
    case 5:
    hoy= "Jueves";
    break;
    case 6:
    hoy= "Viernes";
    break;
    case 7:
    hoy= "Sábado";
    break;
    default:
    hoy= "No";
  }
  print(hoy);
}