//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao calculmedia
//
double calculaMedia(double n1, double n2, double n3, double n4) {
  return (n1 + n2 + n3 + n4) / 4;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    List<double> notas = [0, 0, 0, 0];

    for (int i = 0; i <= 3; i++) {
      print("Digite ${i + 1} ª nota");
      notas[i] = double.parse(stdin.readLineSync()!);
    }

    if (calculaMedia(notas[0], notas[1], notas[2], notas[3]) >= 6) {
      print(
          "Média:${calculaMedia(notas[0], notas[1], notas[2], notas[3]).toStringAsFixed(2)}");
      print("Aprovado");
    } else {
      print(
          "Média:${calculaMedia(notas[0], notas[1], notas[2], notas[3]).toStringAsFixed(2)}");
      print("Reprovado");
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
