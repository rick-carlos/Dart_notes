

//Aqui será usado os operadores ternários dentro de um loop while
// Eles são chamados de ternários porque precisam de 3 partes pra funcionar
// a anatomia desse operador é : condição ? valor_se_verdadeiro : valor_se_falso;

import 'dart:io';

import 'dart:math';
//Vou estrear a biblioteca math, ela será usada pra gerar um número aleatório


void main(){

  // Esse vai ser um joguinho onde você terá que achar o número gerado
  
  //A classe da bibliteca math usada pra gerar números será Random().nextInt(numero)
  int numero1 = Random().nextInt(501); 
  //Next int ignora o último número, então se você quer um raio de números gerados
  //Até 500, então você deve por 501.

  bool sair = true; //Isso será usado pra quebrar o loop while quando você acertar

  print('------Adivinhe o número------ \n Digite um número');
  

  while(sair == true){ //Loop While é igual ao python, while(condição_que_seja_true){}

    int numero2 = int.tryParse(stdin.readLineSync() ?? '') ?? 00;
    // Tomarei o input do usuário e converterei a string pra int

    if(numero2 == 0){
      print("Digite um número válido");
    }else if(numero1 == numero2){
      print("você acertou o número");
      sair = false;
    }else{
      // Agora aqui é onde entra o operador ternário, a estrutura definida abaixo faz bem fácil entender
      // condição ? valor_se_verdadeiro : valor_se_falso;
      var resultado = numero1 > numero2 ? '$numero2 é menor que X' : '$numero2 é maior que X'; 

      print('$resultado, tente novamente\n');

    }
  }

}

  