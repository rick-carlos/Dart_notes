

// Ainda sobre classes



void main(){


  // esse é um caso onde a construçao teria vários atributos mágicos, mas com o required 
  //fica mais fácil de ler.
  var jogador1 = Jogador(nome: 'Kastor', classe: 'Paladino', vida: 1000, defesa: 600, ataque: 250);
  var jogador2 = Jogador(nome: 'Maeve', classe: 'Ladino', vida: 300, defesa: 110, ataque: 400);

  jogador1.Status();

  jogador2.ataque = 300; //Veja a nota na linha 41
  
  jogador2.Status();


}


class Jogador{

  //Essas ~sao as propriedades da classe.
  final String nome;  
  // final são interessantes pra colocar atributos que você não pretende mudar
  // depois de criar o objeto, é uma constante que é conhecida em tempo de execução
  // Pela propria maneira construtiva de classes, a maior parte das vezes ela não terá
  // as variaveis disponíveis no tempo de compilação do const, o que significa que 
  // as constantes são classificadas como final em toda classe, tirando exceções específicas
  // que serão tratadas aqui.
  int ataque;
  int vida;
  /*Perceba que as propriedades da classe são só variáveis públicas, mas o dart tá associando
  um setter implícito pra todas elas mesmo que não seja vísivel ou explicitamente declarado.
  Então a propriedade vida por exemplo, por baixo dos panos tem um set e um getter pra ler e
  escrever o valor, veja mais sobre set e getter em class_08c.dart
  */
  int defesa;
  final String classe;
  //Perceba que alguns parâmetros são constantes, tem uma coisa sobre a construção de instâncias...
  //Todos os atributos que não forem cosntantes, você poderá mudar essa propriedade no objeto instanciado
  //Como no caso acima onde mudei o ataque da Maeve de 400 pra 300.




  //os parametros podem ter chaves, eles são usados quando vcê quer fazer parâmetros nomeados
  //Com {} vai permitir utilizar o required.
  Jogador({required this.nome, 
  // O required é uma keyword que exigirá que seja chamada o nome do atributo quando criar uma 
  //instância como foi feito na instaciação em main(), isso é bom pra evitar atributos mágicos.
  required this.classe, 
  required this.vida, 
  required this.defesa, 
  required this.ataque});
  //Construtores não podem ter função, eles só recebem e atribuem
  //Caso você queira trabalhar com eles, faça métodos, como abaixo.
    

  // isso é um método de uma classe, a estrutura é igual ao de uma função
  // a Diferença é que o método ficam dentro de classes e tem acesso a keyword this.
  void Status(){ 
    print('Status do jogador: \n Nome: $nome \n Classe: $classe \n Vida: $vida \n Defesa: $defesa \n Ataque: $ataque');
    //Consegue acessar essas variáveis this porque está dentro da classe, porém o Dart já automatiza
    //o processo,então você não precisa usar this.nome, se usar $nome já funciona, mas por baixo
    //o Dart está inserindo a lógica do this.nome
  }
}