// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  // Seleciona aleatoriamente um meio de comunicação
  final meioDeComunicacao = aleatorio();
  // Faz uma ligação para o número especificado
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

// Seleciona aleatoriamente um meio de comunicação
MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTACAO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

// Define uma classe abstrata para representar um meio de comunicação
abstract class MeioDeComunicacao {
  void fazerLigacao(String numero);
}

// Define uma classe para representar um telefone
class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[TELEFONE] Ligando para $numero...');
  }
}

// Define uma classe para representar um celular
class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[CELULAR] Ligando para $numero...');
  }
}

// Define uma classe para representar um orelhão
class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[ORELHÃO] Ligando para $numero...');
  }
}
