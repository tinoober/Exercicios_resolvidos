//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao calculaMedia
//
String? verificaAno(int ano) {
  String? resultado = (ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0))
      ? "Ano Bissexto"
      : "";

  return resultado;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Digite o ano");
    int? ano = int.parse(stdin.readLineSync()!);
    print(verificaAno(ano));

    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario
    if (opc == 1) {
      sair = 1;
    }
  }
}
