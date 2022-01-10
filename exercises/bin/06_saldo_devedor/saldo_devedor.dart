//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao calculaPercentual
//
List<double> calculaSaldo(double totalparcela, int numparcela, double valor) {
  double valortotal = totalparcela * valor;

  double saldodevedor = valortotal - valor * numparcela;
  List<double> dados = [valortotal, saldodevedor];
  return dados;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    print("Digite o total de parcelas");
    double? totalparcelas = double.parse(stdin.readLineSync()!);

    print("Digite o numero de parcelas pagas");
    int? numparcela = int.parse(stdin.readLineSync()!);

    print("Digite o valor das parcelas ");
    double? valor = double.parse(stdin.readLineSync()!);

    calculaSaldo(totalparcelas, numparcela, valor);

    print(
        "Valor total do consórcio : ${calculaSaldo(totalparcelas, numparcela, valor)[0].toStringAsFixed(2)}\n");

    print(
        "Saldo devedor do consórcio: ${calculaSaldo(totalparcelas, numparcela, valor)[1].toStringAsFixed(2)}");

    //pedindo ao usuario que digite 1 para sair
    print("Digite 1 para sair/ para continuar digite qualquer outro número");
    int? opc = int.parse(stdin.readLineSync()!);
    //pegando dados do usuario
    if (opc == 1) {
      sair = 1;
    }
  }
}
