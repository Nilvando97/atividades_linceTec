import 'dart:async';

void main() {
  // Imprime uma mensagem indicando o início do lançamento
  print('Iniciando lançamento');

  // Inicia a contagem regressiva para o lançamento do foguete
  contagemRegressiva(10).then((_) {
    // Quando a contagem regressiva terminar, imprime que o foguete foi lançado
    print('Foguete lançado!');
  });
}

// Função assíncrona que realiza a contagem regressiva
Future<void> contagemRegressiva(int segundos) async {
  // Loop que conta regressivamente a partir do número de segundos especificado
  for (int i = segundos; i > 0; i--) {
    // Imprime o número atual da contagem regressiva
    print('$i...');
    // Aguarda 1 segundo antes de continuar para simular a contagem regressiva em tempo real
    await Future.delayed(Duration(seconds: 1));
  }
}
