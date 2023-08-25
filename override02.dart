void main(){
  final wolverine = new Hero (name: 'Logan');
    print( wolverine);
    print( wolverine.name);
    print( wolverine.power);
}
class Hero{
    String name;
    String power;
  Hero ({
    required this.name,
   this.power = 'Sin poder'
   });

  //  Hero(String pName, String pPower) -- FORMA DE INCICILAZI
  //  : name = pName,
  //    power = pPower;
  @override  // REMENDADO PARA SOBREESCRIBIR
  String toString(){
    return '$name - $power';
  }

}




