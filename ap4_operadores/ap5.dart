void main() {
  final mapa = {
    'Nelson': null,
    'Jane': null,
    'Jack': 16,
    "Rupert": 37,
    "Andy": 13,
    'Kim': 27,
    'Robert': 31,
  };

  mapa.forEach((nome, idade) => print(
      '$nome - ${idade != null ? idade.toString() : 'idade nao informada'}'));
}
