


import 'dart:io';


// Isso irá criar uma lista a partir das palavras escritas pelo usuário
void main(){

  print("digite os itens que farão parte da lista");

  //                      replaceAll caso o user separe por virgulas, subistituirá as vírgulas por espaço
  String? console = stdin.readLineSync()?.replaceAll(',', ' '); 
  /* Aqui tem 2 níveis de segurança, eu vou atribuir uma string que pode ser nula mas 
  mas o readLineSync também pode ter um valor null, é preciso fazer isso porque o readLyne
  por padrão não guarda objetos Null
  */



  /* Essa parte pode ser um pouco confusa, já que nesse if você tem duas instruções que parecem ser 
  redundantes, já que se a variável não for vazia, obviamente ela não seria nula, então bastaria
  colocar só o console.isNotEmpty,mas acontece que o Dart tem um sistema de Null safety, mesmo que 
  isso possa ser verdade, o Dart exige a prova matemática disso, por isso você você tem que explicitamente
  declarar que a variável é diferente de null, assim o programa já assegura a validade da variavel e não dará erro
  partindo pra próxima checagem que é isNotEmpty
  */
  if(console != null && console.isNotEmpty){


    //Abaixo eu vou dividir a lista e apagar todos os possíveis espaços adicionais que o usuário possa ter colocado.
    List <String> palavrasLista = console.split(RegExp(r'\s+'));
    // RegExp() é uma keyword de expressão regular, ele vai procurar o que se repete dentro da expressão.
    /* Vamos separar por partes, o r antes das aspas garante que ele irá ler o \ como uma string bruta,
    porque precisaremos disso pra chamar o \s, ele vai ser responsável por procurar espaços na string, 
    mas ele só procuraria um único espaço, o + serve pra ele adicionar todos os espaços que o RegExp achar.
    */

    criarLista(palavrasLista); 
    //Agora vou chamar a função criarLista e inserir a variável com as palavras listadas
  }
  else{
    criarLista(null);
  }
}

// <String>? já que o argumento pode ser null
void criarLista(List <String>? args){


  if(args == null){
    print('A lista está vazia');
  }
  else{
    print('A lista de palavras é $args');

    //Aqui é o uso do sublist, ele serve pra você cortar a lista e começar ela de 
    //algum outro índice, no caso abaixo ela vai ignorar o índice 0 e começar do 1
    print('A lista de palavra a partir do segundo item é ${args.sublist(1)}');
    // Dá pra delimitar um raio também, sublist aceita dois número, o início e fim:
    // args.sublist(1,10);
  }
  

}