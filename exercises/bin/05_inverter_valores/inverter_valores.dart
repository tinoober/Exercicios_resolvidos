//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao inverteValores
//
void inverteValores(List<double> valores) {
  List<double> inverso = [0, 0];

  for (int i = 0; i <= 1; i++) {
    inverso[i] = valores[valores.length - (i + 1)];
  }

  //saida
  print(
      "Valores origianais:\n-Valor A:${valores[0]}\n-Valor B:${valores[1]}\n\n");
  print("Valores Invertidos:\n-Valor A:${inverso[0]}\n-Valor B:${inverso[1]}");
  //
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  List<double> valores = [0, 0];

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    for (int i = 0; i <= 1; i++) {
      print("Digite o ${i + 1}º valor");
      double? valor = double.parse(stdin.readLineSync()!);

      valores[i] = valor;
    }
    inverteValores(valores);

    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario
    if (opc == 1) {
      sair = 1;
    }
  }
}
