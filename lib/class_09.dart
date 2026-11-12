import 'dart:io';

/* Agora será usado o pacote http do dart, ele é baixado pelo shell direto do 
servidor do flutter, pra saber as bibliotcas disponíveis vá em https://pub.dev
lá copie a bibliote e cole no pubspec.yaml na área de dependências abaixo do fluter
no caso do http você colará isso http: ^1.6.0;

Isso se deve por que o pubspec.yaml organzia todas as dependecias do projeto e todas
precisam ser declaradas lá pra poderem ser importadas aqui.

Depois de colocar no yaml, insira fluter pub get pra atualizar o projeto,
assim poderá usar o pacote http.dart
*/
import 'package:http/http.dart' as http;


void main(){

}


// Future é uma classe que faz parte da biblioteca padrão do Dart, com ela vc pode
//usar o async, o Future se usa em processos que levam tempo, vc da uma promessa que o 
// retorno chegar é usado pra fazer procuras na internet.
Future<String> getWikipediaArticle(String articleTitle) async {
  // No caso como essa função vai demorar, ela deve ser async para que o 
  // programa não trave, rodando isso em segundo plano, assincronamente.
  // Se você marcar uma função como async, ela necessariamente vai ter que ser Future
  // ou Void caso ela retorne nada.

  final url = Uri.https(
    'en.wikipedia.org', // 1. O domínio principal
    '/api/rest_v1/page/summary/$articleTitle', // 2. O caminho específico do artigo
  );

}



