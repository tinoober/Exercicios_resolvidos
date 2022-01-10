//importando a biblioteca para que o usuario possa digitar os dados

import 'dart:io';

void calculaDados() {
  List<String>? opcoes = [
    "Saques",
    "Saques efetivos",
    "Bloqueios",
    "Bloqueios efetivos",
    "Ataques",
    "Ataques efetivos"
  ];

  List<List<String>> dados_equipe = [
    ["0", "1", "2", "3", "4", "5", "6"],
    ["0", "0", "0", "0", "0", "0", "0"],
    ["0", "0", "0", "0", "0", "0", "0"],
    ["0", "0", "0", "0", "0", "0", "0"],
    ["0", "0", "0", "0", "0", "0", "0"],
    ["0", "0", "0", "0", "0", "0", "0"]
  ];

  //inserindo os dados
  //colocar o i < 6
  for (int i = 0; i < 6; i++) {
    print("Digite o nome do jogador");
    String? jogador = stdin.readLineSync()!;
    dados_equipe[i][0] = jogador;
    for (int j = 1; j <= 6; j++) {
      print("Digite o numero de ${opcoes[j - 1]} de ${dados_equipe[i][0]}");
      dados_equipe[i][j] = stdin.readLineSync()!;
    }
  }
  double contadorsaque = 0;
  double contadorsaqueefetivo = 0;
  double contadorbloqueio = 0;
  double contadorbloqueioefetivo = 0;
  double contadorataque = 0;
  double contadorataqueefetivo = 0;
//imprimindo dados dos jogadores
  for (int i = 0; i < 6; i++) {
    print("Jogador: ${dados_equipe[i][0]}");

    //calculo saque
    double valor2 = double.parse(dados_equipe[i][2]);
    contadorsaqueefetivo = contadorsaqueefetivo + valor2;

    double valor1 = double.parse(dados_equipe[i][1]);
    contadorsaque = contadorsaque + valor1;

    //calculo bloqueio
    double valor4 = double.parse(dados_equipe[i][4]);
    contadorbloqueioefetivo = contadorbloqueioefetivo + valor4;

    double valor3 = double.parse(dados_equipe[i][3]);
    contadorbloqueio = contadorbloqueio + valor3;

    //calculo ataque
    double valor6 = double.parse(dados_equipe[i][6]);
    contadorataqueefetivo = contadorataqueefetivo + valor6;

    double valor5 = double.parse(dados_equipe[i][5]);
    contadorataque = contadorataque + valor5;

//imprimindo o saque
    print(
        "${opcoes[0]}: ${valor2.toStringAsFixed(0)} / ${valor1.toStringAsFixed(0)} (${((valor2 / valor1) * 100).toStringAsFixed(2)}%)");

//imprimindo o bloqueio
    print(
        "${opcoes[2]}: ${valor4.toStringAsFixed(0)} / ${valor3.toStringAsFixed(0)} (${((valor4 / valor3) * 100).toStringAsFixed(2)}%)");

//imprimindo o ataque
    print(
        "${opcoes[4]}: ${valor6.toStringAsFixed(0)} / ${valor5.toStringAsFixed(0)} (${((valor6 / valor5) * 100).toStringAsFixed(2)}%)");
  }

  // }
  // print(dados_equipe);
  //imprimindo o saque
  print(" Resultado (equipe)");
  print(
      "Pontos de ${opcoes[0]}: ${contadorsaqueefetivo.toStringAsFixed(0)} / ${contadorsaque.toStringAsFixed(0)} (${((contadorsaqueefetivo / contadorsaque) * 100).toStringAsFixed(2)}%)");

//imprimindo o bloqueio
  print(
      "Pontos de ${opcoes[2]}: ${contadorbloqueioefetivo.toStringAsFixed(0)} / ${contadorbloqueio.toStringAsFixed(0)} (${((contadorbloqueioefetivo / contadorbloqueio) * 100).toStringAsFixed(2)}%)");

//imprimindo o ataque
  print(
      "Pontos de ${opcoes[4]}: ${contadorataqueefetivo.toStringAsFixed(0)} / ${contadorataque.toStringAsFixed(0)} (${((contadorataqueefetivo / contadorataque) * 100).toStringAsFixed(2)}%)");
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    calculaDados();
//pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    //se opc for um, sair recebe o valor de um para finalizar o loop while
    int? opc = int.parse(stdin.readLineSync()!);
    if (opc == 1) {
      sair = 1;
    }
  }
}
