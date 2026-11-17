

import 'dart:io';

//Esse exemplo irá abrir arquivos, e pra isso vai precisar navegar entre diretórios
//Use a biblioteca abaixo e adicione ela nas dependências do pubsec.
import 'package:path/path.dart' as p;

//Agora vou falar de implement, isso será muito extenso e verborrágico
//Recomendo assistir esse video https://youtu.be/YQYoxiyiBrs

/*
Algumas vezes você faz um código pra fazer algo, mas não sabe se depois irá adicioanr 
outros objetos que irão interagir com a funcionalidade que você escreveu
então você cria uma classe genérica pra ser usada por outra classe pra
fazer a função que você espera.


Exemplo

Suponha que você irá criar um app pra abrir arquivos, e inicialmente o seu app abre imagens
e texto, então você faz uma classe abrirArquivo com condicionantes pra texto e imagem, 
porém depois de um tempo você resolve adicinar uma funcionalidade pra abrir musica, você 
então faria mais um if, só que a escalabilidade disso seria muito complicada, toda hora você
teria que criar ifs pra todo arquivo novo que você queira abrir, o Implement resolve isso.
Você faz uma classe implementar uma ação de outra classe, vamos por partes.
*/




void main(){

}


//Isso será uma classe contrato, ela não tem valores nem corpo no método
//O motivo disso é que ele será usado apenas como interface, quem usar
//essa classe vai ter que criar o método arquivo(), isso é útil
//pois assim não precisa ficar atualizando if e elses toda vez pra cada 
//arquivo novo.
abstract class Abrir{
  //Classes não podem ser vazias de escopo nos seus métodos, por isso
  //pra usar um escopo vazio, essa classe precisa ser definida como abstract
  void arquivo();
}

class ArquivoTexto implements Abrir{

  //Você precisa dar override pra substituir o método da Classe Abrir
  //Na verdade você é obrigado a ter todos os métodos e propriedades 
  //da classe implementada, e todos eles deveram ser dado override.
  @override 
  void arquivo(){//Aqui você criará o método pra abrir o arquivo, e não na classe Abrir
    var abrindo = File();
  }
}
