//importando a biblioteca para que o usuario possa digitar os dados
import 'dart:io';

//funcao para calcular a soma dos produtos
// ela recebe o valor de uma lista  e retorna o cálculo (valor1*valor2)+(valor3+valor4)
double soma_produtos(List<double> valores) {
  return (valores[0] * valores[1]) + (valores[2] * valores[3]);
}

void main() {
  //criando uma lista para guardar os valores
  List<double> valores = [0, 0, 0, 0];

  //variável auxiliar para o menu
  int sair = 0;

  //enquanto sair for zero, execute
  while (sair == 0) {
    //laço de repetição para que o usuário digite os 4 valores
    for (int i = 0; i < 4; i++) {
      print("Digite o ${i + 1} º valor");
      double valor = double.parse(stdin.readLineSync()!);
      valores[i] = valor;
    }

    //imprimindo a soma com a função soma_produtos recebendo a lista valores
    print(soma_produtos(valores));
    print("Digite 1 para sair/ digite qualquer outro numero para continuar");
    int? entrada = int.parse(stdin.readLineSync()!);
    if (entrada == 1) {
      sair = 1;
    }
  }
}
