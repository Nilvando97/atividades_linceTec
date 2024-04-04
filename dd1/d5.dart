import 'dart:math';

void main() {
  final nomes = [
    'Ana',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Maria',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastião',
    'Paula'
  ];

  final sobreNomes = [
    'Silva',
    'Ferreira',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Teixeira',
    'Costa',
    'Santos',
    'Rodrigues',
    'Souza',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];
  // Gera um índice aleatório para selecionar um nome da lista de nomes
  String nomeAleatorio = nomes[Random().nextInt(nomes.length)];
  // Gera um índice aleatório para selecionar um sobrenome da lista de sobrenomes
  String sobrenomeAleatorio = sobreNomes[Random().nextInt(sobreNomes.length)];

  // Exibe o nome completo gerado no console
  print('Nome: $nomeAleatorio $sobrenomeAleatorio');
}
