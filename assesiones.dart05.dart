void main(){
  final mySquare = Square(side: 10);
 mySquare.side = 5; // SI O SI DEBEN SER MAYOR A 0 POR LA CONDICIÓN

print ('área: ${ mySquare.area}');

}
class Square {
  double _side; //privado con el '_'
  Square({required double side})
  : assert(side >=0, 'side most be >=0') , //ESTAS SON LAS ASERSIONES, sirve para las condiciones mas acertivas
   _side = side;

  double get area{
    return _side * _side;
  }

  set side(double value){
    print('setting new value $value');
    if(value < 0) throw 'Value must be >=0' ;

    _side = value;

  }

  double calculateArea() {
    return _side * _side;
  }
}