


// esse code vai se detalhar um pouco mais sobre a criação de classes

// O void se refere a funções que não retornam valores, todo o codigo dentro dele será executado
// e nada será extraido de valor a partir disso, por isso é impossível criar uma classe void.
// Pule pra classe TítuloArtigo()

void main(){

  // Criação de classe é igual ao python, define um objeto por uma variavel e associe a chamada da classe
  // dando os argumentos necessários, no caso aqui é uma string.
  var impressao = TituloArtigo('Abra Kadabra');

  // Depois basta chamaros métodos da classe interoperando com o nome da classe instanciada.
  impressao.exibirTitulo();

}


// Repare que no dart as classes não tem o () igual no python, os parenteses tão reservados ao main e aos construtores
// funções e métodos, ou seja, todo o escopo envolvedo lógica e não na hora do molde.



class TituloArtigo{ 
  
  /* O dart tem um jeito de construir diferente do python também
  Muito menos verborrágico, nada de escrever colunas de this.algumaCoisa = algumaCoisa
  Aqui você chama um construtor com o nome da classe pra instanciar essa classe, daí 
  e só passa os argumentos entre parênteses, assim a classe já vai autoamticamente identificar o 
  tipo de valor
  usado nas propriedades do objeto.
  */
  final String title; // Aqui vou definir uma propriedade string chamada title
  // definição de final é uma variável que não mudará depois de associada, é similar ao const mas 
  //diferente dele que só associa valores no tempo de compilação, o final associa no tempo de execução.

  /* Essa distinção é importante porque o const terá variáveis que já serão conhecidas na compilação,
  porém como as instâncias de classes ainda não tem essas variáveis conhecidas antes do programa rodar, 
  elas serão conehcidas apenas no tempo de execução,vai acabar que variáveis const vão dar erro na compilação, 
  por isso em classes quase 100% das vezes você usará final.
  */
  
  TituloArtigo(this.title); //Construtores no dart se faz chamando a classe e colocando os argumentos
  /* entre parentense, lembre-se de usar o this. Esse é o jeito rápido de atribuir propriedades, no jeito
  verborrágico seria esse:
  
  Jeito longo que o Dart evita para você:

TituloArtigo(String titleRecebido) {
  this.title = titleRecebido; // "Pegue a propriedade 'title' DESTE objeto que está nascendo e jogue o valor recebido dentro dela"
}

  Ao invés de fazer isso, o dart agiliza tudo com o classe(this.____)
  
  
  

   
  Toda classe tem uma área onde será declarada os métodos chamada de corpo, é justamente essa área entre {}
  nunca coloque comando executáveis, pra isso crie um método dentro da classe. 
  */
  

  void exibirTitulo(){
    print("O título do artigo é $title");
  }
}
