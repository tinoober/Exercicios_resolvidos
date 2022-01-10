//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao para calcular a area do quadrado
// ela recebe o valor do lado e retorna o cálculo lado*lado
void imprimeValor() {
  for (int i = 100; i <= 300; i += 10) {
    print(i);
  }
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Digite o número");

    //utilizacao de null safety + parse para pegar o dado do usuario

    imprimeValor();
//pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    //se opc for um, sair recebe o valor de um para finalizar o loop while
    int? opc = int.parse(stdin.readLineSync()!);
    if (opc == 1) {
      sair = 1;
    }
  }
}
