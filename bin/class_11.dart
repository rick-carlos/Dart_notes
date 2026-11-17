

// aqui vou falar sobre extends
// algumas vezes você vai criar classes que vão ter propriedades
//já existentes em outras classes, então pra evitar a escrita de códigos duplicada
// você faz uma classe ser uma extensão de outra classe, usando assim as propriedades
// dela.


//No dart existe o conceito de hierarquia de classes, onde a  s classes que eram herdar
//propriedades são as chamadas super classes. Repare na diferença entre extend e implement
// o extend é uma classe filho, então ela tem acesso ao chamado Super.
//Extend também tem acesso aos métodos da classe pai.


void main(){

  var bicho_1 = Animal();
  var bicho_2 = Passaro();

  print('${bicho_1.name} Vertebrado:${bicho_1.vertebrado} \n${bicho_2.name} Vertebrado:${bicho_2.vertebrado}'); 
  //Como você verá na saida, como os dois herdam a mesma propriedade name
  // então os dois terão saída animal.

  //Mas no caso abaixo, minhoca é invertebrado, ela não poderia herdar a propriedade
  //vertebrado, ela teria que ter sua propria propriedade, vá para a classe Minhoca no fim
  //do documento.
  var bicho_3 = Minhoca();
  print('${bicho_3.name} Vertebrado:${bicho_3.vertebrado}');
}


//Abaixo vou criar uma classe com uma propriedade name
class Animal{
  String name = 'animal';
  bool vertebrado = true;
}


//No caso abaixo, como existe uma correlação lógica e passaro também
//será uma classe que tem name, então você extends pra fazre passaro
//ser uma extensão de animal, herdando suas propriedades.
class Passaro extends Animal{

}

// Essa classe terá uma propriedade diferentes das outras, minhoca é
//um invertebrado.
class Minhoca extends Animal{
  
  //Quando precisar alterar uma propriedade herdada, se usa @overide em cima dela
  @override
  bool vertebrado = false;
  //Você sempre deve colcoar um override em cima de cada propriedade alterada.
}