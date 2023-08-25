void main(){
  final wolverine = new Hero ('Logan','Regeneracion');
    print( wolverine);
    print( wolverine.name);
    print( wolverine.power);
}
class Hero{
    String name;
    String power;
  Hero (this.name, this.power); //otra fomra de INICIALIZAR

  //  Hero(String pName, String pPower) -- FORMA DE INCICILAZIAR
  //  : name = pName,
  //    power = pPower;

}