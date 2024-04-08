import 'dart:collection'; // Importa a classe Queue do pacote dart:collection

// Classe que representa uma carta do baralho
class Carta {
  final String valor; // Valor da carta (A, 2, 3, ..., 10, J, Q, K)
  final String naipe; // Naipe da carta (paus, copas, espadas, ouros)

  // Construtor da classe Carta
  Carta(this.valor, this.naipe);

  // Sobrescrita do método toString para facilitar a exibição da carta
  @override
  String toString() {
    return '$valor $naipe'; // Retorna a representação da carta como uma string
  }
}

void main() {
  Queue<Carta> baralho = Queue(); // Cria uma fila (Queue) para representar o baralho

  // Inclui as cartas no baralho na ordem especificada
  baralho.add(Carta('A', 'paus \u2663')); // A de paus
  baralho.add(Carta('A', 'copas \u2665')); // A de copas
  baralho.add(Carta('A', 'espadas \u2660')); // A de espadas
  baralho.add(Carta('A', 'ouros \u2666')); // A de ouros

  // Remove todas as cartas do baralho, uma por vez, e exibe na tela
  while (baralho.isNotEmpty) { // Enquanto o baralho não estiver vazio
    Carta cartaRemovida = baralho.removeFirst(); // Remove a primeira carta do baralho
    print('Carta removida: $cartaRemovida'); // Exibe a carta removida na tela
  }
}

