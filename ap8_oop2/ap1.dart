import 'dart:math';

enum GeneroMusical {
  Rock,
  Pop,
  HipHop,
  Sertanejo,
  Eletronica,
}

void main() {
  var random = Random();
  var generoIndex = random.nextInt(GeneroMusical.values.length);
  var generoEscolhido = GeneroMusical.values[generoIndex];

  String generoMusical;

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

  print('Meu gênero musical preferido é $generoMusical');
}
