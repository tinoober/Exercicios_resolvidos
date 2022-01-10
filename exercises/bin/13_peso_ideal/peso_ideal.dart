//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

String verificapeso(double altura, String sexo) {
  String? resultado;

  if (sexo.toUpperCase() == "M") {
    double homem = (72.7 * altura) - 58;
    resultado = "Peso ideal: ${homem.toStringAsFixed(3)} Kg";
  } else if (sexo.toUpperCase() == "F") {
    double mulher = (62.1 * altura) - 44.7;

    resultado = "Peso ideal: ${mulher.toStringAsFixed(3)} Kg";
  } else {
    resultado = "Valor  inválido";
  }

  return resultado;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Digite sua altura");

    //entrada de dados
    double? altura = double.parse(stdin.readLineSync()!);

    print("Digite seu sexo");

    //entrada de dados
    String? sexo = stdin.readLineSync()!;

    //utilizacao de null safety + parse para pegar o dado do usuario
    //foi utilizada a forma padrao para transforma o dado do stdin(entrada de dados default)
    //com o readLine, sendo transforamada de string para double com o parse
    //falta realizar o tratamento de erros para  entradas nulas

    print(verificapeso(altura, sexo));
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
