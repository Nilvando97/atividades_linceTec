import 'dart:math'; // Importa a classe Random para gerar números aleatórios

// Enumerador para representar diferentes gêneros musicais
enum GeneroMusical {
  Rock,
  Pop,
  HipHop,
  Sertanejo,
  Eletronica,
}

void main() {
  var random = Random(); // Cria uma instância da classe Random
  var generoIndex = random.nextInt(GeneroMusical.values.length); // Gera um índice aleatório baseado no tamanho do enum
  var generoEscolhido = GeneroMusical.values[generoIndex]; // Obtém o gênero musical correspondente ao índice aleatório

  String generoMusical; // Variável para armazenar o nome do gênero musical escolhido

  // Switch para identificar o gênero musical escolhido e atribuir o nome correspondente à variável generoMusical
  switch (generoEscolhido) {
    case GeneroMusical.Rock:
      generoMusical = 'Rock';
      break;
    case GeneroMusical.Pop:
      generoMusical = 'Pop';
      break;
    case GeneroMusical.HipHop:
      generoMusical = 'Hip Hop';
      break;
    case GeneroMusical.Sertanejo:
      generoMusical = 'Sertanejo';
      break;
    case GeneroMusical.Eletronica:
      generoMusical = 'Eletrônica';
      break;
    default:
      generoMusical = 'Desconhecido';
  }

  // Imprime o gênero musical escolhido no console
  print('Meu gênero musical preferido é $generoMusical');
}
