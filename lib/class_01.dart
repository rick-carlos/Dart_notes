
// para criar um programa dart, use dart create nome_do_programa, irá criar o ambiente de execução.
// Os arquivos dos códigos ficaram no diretório /lib e /bin, na verdade ele éo que vai ser usado a maior parte do tempo

// todo programa começa com void main

void main(){
  print("hello world"); // o corpo é igual ao python, exceto pelo uso do ; igual ao C
  var name = "joão";
  var sobrenome = "carlos";

  print(name);

  // pra chamar variaveis dentro de uma string, se usa o $
  print("$name $sobrenome");

  // a tipagem segue a mesma lógica do c#, é preciso declarar
  int numero1 = 150;
  int numero2 = 200;
  int numero3 = 2;
  double numero4 = 0.5;
  num numero5 = numero1 + numero2 + numero3 + numero4; //ambos int e double são subtipos de num
  int numero6 = 5 ~/ 2;   //          ~/ é um operador de divisão inteira 
  var numero7 = 10 % 3;
  const pi = 3.14;
  double preco = 323.3123412312;
  String alias = "Batman";
  bool alternativa = false;

  // as operações são as mesmas do python
  print(numero1 + numero2);
  print(numero1 * numero2);
  print(numero1 / numero3);
  print(numero1 - numero2);
  print(numero1 * numero4);
  print(numero6);
  print(pi);
  print(numero5);
  print(" O resto de 10 dividido pra 3 é ${numero7}");
  print(preco.toStringAsFixed(3)); //toStringAsFixed limita o valor dos dígitos apís a vírgula pro valor descrito entre aspas



  print("eu sou do \n ---------- do Brasil --------------"); // os caracteres especiais \n e \t do python também funciona aqui
  print("Eu sou da ... \t via láctea");


  String numeroString = "150";
  int numeroConveretido = int.parse(numeroString); // é possível converter um numero string usando int.parse()
  print(numeroConveretido);   // Mas se a string conter algum caractere que não é um número, dará erro.
                              // Se fosse double, então usa-se double.parse()

  // Também é possível converter um int pra string usando toString()
  String numeroPraLetra = numeroConveretido.toString();

  // ou double pra int, vou usar a variavel preco que defini acima.
  int converterDoublePraInt = preco.toInt();
  print(converterDoublePraInt);


  // Pra guardar múltiplos valores sem precisar criar várias variáveis, use uma lista com List[]
  List <String> alcunhas = [ 
    "Master Blaster", 
    "Jhonny Cage",
    "Flower Princess",
    "Elec Dagger",
  ];

  print("Os nomes são guardados na lista são $alcunhas"); // Pra chamar os itens, também é igual ao python, só que deve se usar ${} pra chamar a variável
  print("Ordem: \n Primeiro nome:  ${alcunhas[0]} \n Segundo nome: ${alcunhas[1]} \n Terceiro nome: ${alcunhas[2]} \n Quarto nome: ${alcunhas[3]} \n");

  // Também existe o Set, diferente do List, o set é uma lista desordenada, não tem como chamar pelo índice


  // Também existe o Map que guarda chaves associadas a valores
  // você define entre < > qual serão os tipos, separe por vírgula

  Map <String, String> listaDeChaves = {
    "Idade" : "23 anos",
    "Nome" : "Roberta",
  };

  
  print(listaDeChaves['Idade']);
  print(listaDeChaves['Nome']);

  //Valores incrementais funciona igual ao python variavel++ ou variavel-- mas atenção aos pré incremento e pós incremento

  int numero8 = 5;
  var numero9 = numero8++; // O valor de numero8 é atribuido ao numero9 e só depois ele incrementa

  print("$numero8 $numero9"); 

  var numero10 = ++numero8; // Já aqui é o contrário, ele incrementa primeiro e depois associa o valor
  print(numero10);


  // outros operadores incrementais += -= *= /=

  var numero11 = 10;
  numero11 += 1;

  print(numero11);


  // ---------------------------------------------------------
  // Operadores lógicos, além dos tradicioanis < > = != >= <= ... tem os && || e ! 

  int id = 0200;
  var userpin = 5000;

  print((id == 0200) && (userpin == 5000)); // true
  print((id == 300) && (userpin == 200));   // false
  print((id > 100) || (userpin == 5000));   // || é condicional (ou), basta uma ser verdadeira pra declaraçãos ser verdadeira
  print((id == 0200) != (userpin == 5000)); // True já que A é diferente de B

  // outro operador booleano é is, checará se um valor é de algum tipo específico

  print(id is int); // Ambos serão true
  print(id is !int); // pra checar condicionais de diferença usando is se usa ! e não !=
}
