//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao para calcular a area do quadrado
// ela recebe o valor do lado e retorna o cálculo lado*lado
double calculaAreaQuadrado(double lado) {
  return lado * lado;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    print("Digite o valor do lado");

    //entrada de dados
    double? lado = double.parse(stdin.readLineSync()!);
    //utilizacao de null safety + parse para pegar o dado do usuario
    //foi utilizada a forma padrao para transforma o dado do stdin(entrada de dados default)
    //com o readLine, sendo transforamada de string para double com o parse
    //falta realizar o tratamento de erros para  entradas nulas

    print("O valor da área do quadrado é ${calculaAreaQuadrado(lado)}");
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
