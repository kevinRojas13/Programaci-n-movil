

void main(){
  final ironman = hero(
    name: 'Kevin Rojas', 
    power: 'Volar', 
    isAlive: false);

  print(ironman);

}
class hero{
  String name;
  String power;
  bool isAlive;

  hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  @override String toString() {
   return '$name, $power, $isAlive: ${ isAlive ? 'Yes':'Nope'}';
  }
}