//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao calculaPercentual
//
void calculaPercentual(double valor, double taxa) {
  //imprime o valor inicial
  print("Preço do produto:Rs ${valor.toStringAsFixed(2)}");

  //calculando o percentual
  double percentual = taxa * 0.01;

  //calculando o valor com desconto
  double novoValor = valor - (valor * percentual);

  //calculando o valor do desconto

  double desconto = valor - novoValor;

  //imprime o desconto
  print("Desconto de $taxa% ${desconto.toStringAsFixed(2)}");
  //

  print("Preço do produto com desconto:Rs ${novoValor.toStringAsFixed(2)}");
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua
    print("Digite o percentual de desconto do produto");
    double? produtopercent = double.parse(stdin.readLineSync()!);
    print("Digite o valor do Produto");

    //entrada de dados
    double? produtoval = double.parse(stdin.readLineSync()!);
    //utilizacao de null safety + parse para pegar o dado do usuario
    //foi utilizada a forma padrao para transforma o dado do stdin(entrada de dados default)
    //com o readLine, sendo transforamada de string para double com o parse
    //falta realizar o tratamento de erros para  entradas nulas

    //invocando a funcao calculaDesconto que calcula o desconto e imprime os dados
    calculaPercentual(produtoval, produtopercent);

    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario
    if (opc == 1) {
      sair = 1;
    }
  }
}
