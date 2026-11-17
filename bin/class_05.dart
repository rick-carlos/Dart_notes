
// agora vamos tratar de inserção de argumentos na chamada do script
// a ideia é bem simples, o console printará o número da versão quando você por 'version' como argumento
// caso contrário, ele pedirá pra escrever 'version'

const version = '0.0.1'; 
// variaveis constantes são conhecidas em tempo de compilação, isso significa que você não poderá mudar
// em tempo de execução.


//Nesse caso a classe vai pedir uma lista de strings como argumento
void main(List <String> args){
  // uma estrutura de if e else no dart não é muito diferente do python
  // O ? está demarcando que esas lista pode sim trazer argumentos null, mas você deverá tratar deles
  

  if(args.isEmpty){   //isEmpty é uma estrutura booleana 
    print("Escreva um argumento válido \n");
    print('Digite help pra checar as opções \n');

  }else if(args.contains('version')){  
    // args.contains é um jeito de procurar explicitamente pelo nome os intens na lista, 
    //assim não precisa procurar manualmente pelo índice
    print(version);
  }
  else if(args.contains('help')){ 
    opcoes();
  }
  else{
    print('Digite uma função válida');
  }
}

void opcoes(){
    print("As opções são: version, help,");
}