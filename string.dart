void main(List<String> args) {
  //Colecciones
/*   String texto = 'Mi texto';
  String textoMultilinea = '''Mi texto
es
multilinea
asi se configura
                              ''';
  int suma = 2 + 2;
  String respuesta = "Respuesta es: ${5 + 6}";

  print(texto);
  print(textoMultilinea);
  print(respuesta);

  int edad = 20;
  String nombre = "Juan";
  print("Mi nombre es $nombre y tengo $edad años"); */

/*   int numero = 100;
  double precio = 15.50;
  String texto = numero.toString();
  String texto1 = precio.toString();

  print(texto);
  print(texto1); */

  String nombre = "Juan Gabriel Lopez";
  print(nombre.isEmpty); //trato el string como un booleano
  print(nombre.length); //trato el string como un entero
  print(nombre.toUpperCase());
  print(nombre.toLowerCase());
  print(nombre.trim());
  print(nombre.compareTo("Juan Gabriel Lopez"));//PARA COMPARAR SI SE PARECE AL TEXTO, RPTA: 0 Y 1
  print(nombre.replaceAll("Juan","PEDRITO")); // reemplaza el nombre o letra
  print(nombre.substring(1,6)); //devuelve los carcateres de izquierda a derecha
  print(nombre.contains ("Juan")); // Da verdadero o false, si es que existe algun dato dentro de la cadena de texto
  print(nombre.startsWith("A")); //TIPO DE DATO BOLEANO SI EL CARACTER EMPIEZA CON ESE, DARÁ TRUE O FALSO
   print(nombre.endsWith("z")); //TIPO DE DATO BOLEANO SI EL CARACTER TERMINA CON ESE, DARÁ TRUE O FALSO

   String dni = "40160915";
   String name = "Leonidas Rojas";
   String lastName = "Rojas Fuentes";

   /* 1. crear un codigo perosnaliza de usuario
  2. primeras letras del nombre, las dos ultimas letras del appelido y los 4 ultimos digitos del dni

   */
  
  print(name.substring(0,5)+lastName.substring(11,13)+dni.substring(4,8));
  
  String codigoPersonalizado = name.substring(0, 2) +
      lastName.substring(lastName.length - 2) +
      dni.substring(dni.length - 4);

  print(codigoPersonalizado); // Imprimirá "Lees1515"

  }