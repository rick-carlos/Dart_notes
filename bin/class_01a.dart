

// aqui vou tratar mais de listas


import 'dart:math';

void main(){


  // é possível criar listas dentro de maps, isso acaba sendo incrivelmente útil
  //pra agrupar valores que tem alguma relação lógica, por exemplo uma lista
  // de itens de supermercado.

  var superMercado = {
    'hortifrute' : ['maça', 'melão', 'melancia', 'abobora'],
    'açouge' : ['gado', 'galinha', 'peixe'],
    'limpeza' : ['rodo', 'vassoura', 'sabão']
  };


  print('Itens do supermercado ${superMercado['hortifrute']}');
  
  //Assim você também agrupa e pode adicionar novos itens
  superMercado['hortifrute']!.add('castanhas');

  print('Itens do supermercado ${superMercado['hortifrute']}');

}