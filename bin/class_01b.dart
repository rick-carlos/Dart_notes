
import 'dart:math';

// ainda sobre operadores matemáticos, tem alguns que podem ser usados
//Abaixo alguns operadores que podem ser chamados com a biblioteca math do dart

void main(){

  //Point é usado pra pegar valores bidimensionais, são usados pra fazaer representações de
  //espaço 2D, calcular distância entre pontos e muito mais
  var bidimensional = Point(10,20); //os valores entre parênteses são os respectivos x,y
  //tanto que podem ser chamados diretamente


  print('Os valores x,y guardados são \n${bidimensional.x} e ${bidimensional.y}');

  //Usando pra calcular distâncias, dá pra usar o teorema de pitágoras, por sorte
  // o Dart tem uma função só pra isso

  //As coordenadas dos pontos
  var pontoA = Point(2, 6);
  var pontoB = Point(3,8);
                              
                              //distanceTo() já calcula a distância e diz a hipotenusa
  String hipotenusa = pontoA.distanceTo(pontoB).toStringAsFixed(2);//#class_01.dart L-40
  
  print("A  hipotenusa é $hipotenusa");


}