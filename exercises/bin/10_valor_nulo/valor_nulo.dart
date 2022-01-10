//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Digite o valor");
    String? valor = stdin.readLineSync();
    if (valor == null || valor == "") {
      print("NullPointerException: Erro ao acessar um valor nulo na memória");
    } else {
      print("Valor informado $valor");
    }
    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario
    if (opc == 1) {
      sair = 1;
    }
  }
}
