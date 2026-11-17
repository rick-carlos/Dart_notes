

// set e getters são interfaces públicas que mascaram métodos de manipulação de
// valores por baixo. Pense nele como o conceito de backend e frontend.

// no dart todas as variáveis públicas tem um getter, e se for uma variavel constante
// terá um getter, mas não terá um setter.

/*
Getter são métodos que são lidos como uma variável, como se você fizesse um 
var x = a, a sintaxe parece uma variável comum, mas ele executa o código e devolve um valor
daquele objeto, mas quem o usa não precisa saber qual é o método por trás.

Já o setter é escrito como uma variavel também, ele recebe um valor e terá métodos por trás
pra manipular esse valor, se alguém tentar manipular o dado, o setter só ler esse dado, valida 
e atualiza o valor.
*/


void main(){

  var padrao = Pessoa();
  padrao.status();

  //ABaixo vou mudar o valor das variaveis como mudaria se tivesse configurado 
  // um get e seter.
  padrao.nome = 'carlos'; 
  //Já nesse caso eu fiz um método setter, veja na linha 61
  padrao.idade = 25;
  padrao.status();

  //Agora um exemplo se eu tentasse colocar uma idade inapropriada
  padrao.idade = -16; //será printado um erro


  // Leia a classe animal no fim do documento
  var cachorro = Animal();
  cachorro.status();
  
  //Agora vou mudar a especie 
  cachorro.mudarEspecie('cachorro');
  cachorro.status();
}


class Pessoa{

  //propriedades marcadas com _ são privadas, a utilidade delas é pra fazer setters
  //Varias situações você criará propriedades que não seria interessante dar total
  //liberdade pra manipulação, ela precisaria de um critério, como no caso da idade abaixo
  //Ninguém tem idade negativa, então seria ilógico permiter -10 anos por exemplo
  //pra isso você deixa a variavel privada pra criar um setter que terá condicionantes
  //impedindo idades negativas, veja abaixo. 
  int _idade = 20; 
  
  String nome = 'rick';
  // Essas duas propriedades tem set e getter implicitamente feito automaticamente
  // pelo dart, assim vocẽ consegue atribuir e pegar valores dessa variavel

  //o setter terá o nome da propriedade privada mas sem o _ por uma questão de convenção
  //não dará erro colocar outro nome, é só que é mais organizado assim, você sabe exatamente
  //qual valor está sendo alterado.
  set idade(int novaIdade){
    if (novaIdade < 0){
      print('Idade inválida');
    }else{
      _idade = novaIdade;

    }
    //Prontinho, agora você tem uma maneira de impedir idades erradas.

  }


  //isso é um fat arrow, é usado pra retornar valores
  //na verdade o formato de => lembra uma flecha por causa disso.
  //o que ele tá dizendo é que se o usuário chamar pela variave idade
  //ele vai ter o valor da variavel privada _idade.
  int get idade => _idade;
  /*
  // Na real, o get tradicional seria assim
      int get idade {
        return _idade;
      }

      // Forma 2: mas com o => (atalho), fica bem mais fácil
      int get idade => _idade;
  */




  //método que vai printar o nome e idade
  void status(){
    print('Nome $nome, idade ${this._idade}');
    /*Note que o dart faz a varredura local dessa variavel dentro do método
    Se ele não achar, ele automaticamente já sabe que essa variavel é uma 
    propriedade da classe e já adiciona o this. implicitamente.
    Por isso você não precisa digitar this. , no caso acima o this.idade é
    dispensável, mas saiba que isso está acontecendo, porém existe um contexto
    onde você usará this. veja na classe Animal() abaixo;
    */

  }
}

class Animal{
    
  // Algumas vezes você vai ter nome de variaveis iguais dentro do escopo de uma classe
  // isso vai gerar uma confusão pro dart porque ele nã vai saber qual variavel você
  // está se referindo, isso cria o chamado shadowing, nessa situação se usa o this.
  // pra diferenciar uma variavel da outra.

  String especie = 'generalista';
  final String _reino = 'animalia';
  //Esse é um caso que seria interessante manter uma constante.

  // esse é um método pra trocar o nome da especie, mas a variavel no parâmetro
  // também é especie, daí você usa this.especie pra diferenciar uma da outra
  void mudarEspecie(String especie){
    this.especie = especie;
  }

  void status(){
    print('Especie $especie, reino $_reino');
  }

}