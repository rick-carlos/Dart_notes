
import 'dart:io'; // é a biblioteca usada pra usar o console no dart


void main(){

/* será descrito como pegar inputs do usuário, perceba que a maneira de ter inputs
do usuário vai diferir do meio, se for no console, você usará a bibliteca 'dart.io', 
se for numa aplicação flutter, você utiliza um widget chamado TextField conectado a um
 TextEditingController para capturar o texto que o usuário digita na tela.
 Mas não se usará flutter aqui
*/

print("Digite o seu nome");



/* perceba que dessa vez eu estou acionado um ? ao lado do tipo da variável, isso
é pra dizer que a variável poder ter um valor nulo, isso é importante porque as vezes o usuário 
pode só apertar enter e guardar um valor null que daria erro na compilação, o ?
garante que esse erro não acontece, na linha 45 o ? não é necessário porque já está sendo descrito
um valor adequado caso o usuário insira um valor null
*/
String? nome = stdin.readLineSync();  //Pegar um input do usuário e associar a uma variavel.
/* 
readLineSync traduzindo ao pé da letra, significa: "Leitura síncrona de linha da entrada padrão".
stdin é o canal padrão de entrada do sistema (o teclado/terminal).
O readLine indica que ele vai ler a linha inteira de uma vez 
(tudo o que você digitar até apertar o Enter), em vez de ler caractere por caractere.
O Sync (síncrono) é o detalhe mais importante: ele congela/trava o programa inteiro esperando 
o usuário digitar e apertar Enter. O código só avança para a próxima linha depois que o usuário responde. 
(O oposto seria o assíncrono, que continuaria rodando a aplicação enquanto espera).
*/

print("seu nome é $nome");

print('-' * 20);

// --------------------------------------------------------------------------------------------------------

// é possível pegar números, mas é necessário converter se quiser fazer operações com esse número.

print("Digite um valor:");

int valor = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
/* Aqui acontecem algumas coisas, o try é a mesma lógica do try do pyhton, tentará passar um valor, 
o ?? é um operador de lógica que diz que se a expressão da direita der erro, ele fará a operação da 
esquerda, que no caso é uma string vazia, isso porque o readlineSync espera uma string, se você 
apertar enter, será um objeto null, o que dará erro, no mínimo você tem que passar uma string vazia.
Mas isso é só uma parte do controle de erros, caso seja passado só uma string vazia, como o método
tá tentando converter uma string pra inteiro, uma string vazia dará erro no tryParse, por isso
existe um segundo operador ?? pra associar o zero a variavel $valor, garantindo assim que não dará erro
na operação
*/

print('O valor digitado é $valor');
print('Digite um caractere que não seja número');
int valor2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0; 
/*
Agora é diferente, caso o usuário passe um objeto nulo ou um caractere errado, associe um valor
adequado como zero pro código não dar erro.
*/
print("O valor é $valor2");


print("Agora digite um valor decimal:");

double numeroDecimal = double.tryParse((stdin.readLineSync() ?? '').replaceAll(',' , '.'))  ?? 0.0;
/* Aqui já é várias coisas acontecendo, estou definindo uma variável double, tentando fazer um parse 
do input do usuário e de novo associando uma string vazia caso seja um objeto nulo, além disso, estou 
substituindo todas as virgulas por ponto já que o double só aceita pontos como marcador decimal, num escopo
acima estou associando 0.0 pra evitar o último erro caso o double seje associado a um valor incorreto como nulo ou letras
*/

print("O número digitado é $numeroDecimal");

}