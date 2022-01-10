//importando a biblioteca para que o usuario possa digitar os dados

import 'dart:io';

String? menu_crud(String opc) {
  String? resultado;
  List<String> opcoes = [
    "(Cadastrar/Inserir)",
    "(Buscar/Ler)",
    "(Editar/Atualizar)",
    "(Excluir/Apagar)"
  ];

  String? menu = opc.toUpperCase();

  switch (menu) {
    case "C":
      resultado = opcoes[0];
      break;

    case "R":
      resultado = opcoes[1];
      break;
    case "U":
      resultado = opcoes[2];
      break;
    case "D":
      resultado = opcoes[3];
      break;

    default:
      resultado = "Digite um valor válido";
  }
  return resultado;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Escolha uma das opções:\nC)Create\nR)Read\nU)Update\nD)Delete");

    //entrada de dados
    String? opc2 = stdin.readLineSync()!;

    print(menu_crud(opc2));
    //imprimindo o valor da area do quadrado utilizando a funcao calculaAreaQuadrado que tem como
    //parâmetro a variável lado do tipo double

    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario

    //se opc for um, sair recebe o valor de um para finalizar o loop while
    if (opc == 1) {
      sair = 1;
    }
  }
}
