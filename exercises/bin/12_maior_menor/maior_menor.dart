//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

String verificaNum(int num1, int num2) {
  String? resultado;

  if (num1 == num2) {
    resultado = "Valores iguais $num1 = $num2";
  } else if (num1 > num2) {
    resultado = "Maior valor:$num1 \nMenor valor:$num2";
  } else {
    resultado = "Maior valor:$num2 \nMenor valor:$num1";
  }

  return resultado;
}

void main() {
  //variavel auxiliar para ser parâmetro de saída do while
  int sair = 0;

  //laço de repeticao para realizar os testes de entrada e saida
  while (sair == 0) {
    //enquanto a variável sair não for 1, o laço continua

    List<int> valores = [0, 0];

    for (int i = 0; i < 2; i++) {
      print("Digite o ${i + 1} º número");

      //entrada de dados
      int? valor = int.parse(stdin.readLineSync()!);
      valores[i] = valor;
      //utilizacao de null safety + parse para pegar o dado do usuario
      //foi utilizada a forma padrao para transforma o dado do stdin(entrada de dados default)
      //com o readLine, sendo transforamada de string para double com o parse
      //falta realizar o tratamento de erros para  entradas nulas
    }
    print(verificaNum(valores[0], valores[1]));
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
