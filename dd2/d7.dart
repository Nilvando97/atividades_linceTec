import 'dart:collection'; // Importa a classe Queue para usar como fila
import 'dart:math'; // Importa a classe Random para gerar números aleatórios

// Classe responsável por gerar nomes aleatórios
class GeradorNomes {
  static final Random _random = Random(); // Cria uma instância de Random para gerar números aleatórios

  static String gerarNomeAleatorio() {
    // Lista de nomes e sobrenomes para escolher aleatoriamente
    List<String> nomes = [
      'João', 'Maria', 'José', 'Ana', 'Pedro', 'Mariana', 'Carlos', 'Fernanda', 'Paulo', 'Luísa'
    ];
    List<String> sobrenomes = [
      'Silva', 'Santos', 'Oliveira', 'Souza', 'Pereira', 'Ferreira', 'Almeida', 'Cunha', 'Costa', 'Rodrigues'
    ];

    // Gera um nome aleatório combinando um nome e um sobrenome
    String nome = nomes[_random.nextInt(nomes.length)];
    String sobrenome = sobrenomes[_random.nextInt(sobrenomes.length)];

    return '$nome $sobrenome'; // Retorna o nome completo
  }
}

// Classe que representa a fila do mercado
class FilaMercado {
  Queue<String> _fila = Queue<String>(); // Cria uma fila vazia usando a classe Queue

  // Método para uma pessoa entrar na fila
  void entrarNaFila() {
    String nome = GeradorNomes.gerarNomeAleatorio(); // Gera um nome aleatório
    _fila.addLast(nome); // Adiciona a pessoa no final da fila
    print('($nome) entrou na fila'); // Exibe uma mensagem no console
  }

  // Método para atender uma pessoa da fila
  void atender() {
    if (_fila.isEmpty) {
      print('Fila vazia, não há mais pessoas para atender.'); // Verifica se a fila está vazia
      return;
    }

    String nome = _fila.removeFirst(); // Remove e retorna a primeira pessoa da fila
    print('($nome) foi atendido(a)'); // Exibe uma mensagem no console
  }

  // Método para popular a fila com uma quantidade de pessoas
  void popularFila(int quantidade) {
    for (int i = 0; i < quantidade; i++) {
      entrarNaFila(); // Chama o método entrarNaFila para adicionar uma pessoa
    }
  }

  // Método para atender todas as pessoas da fila
  void atenderTodos() {
    while (_fila.isNotEmpty) {
      atender(); // Chama o método atender para atender a próxima pessoa da fila
    }
  }
}

// Função principal que cria uma fila com 10 pessoas e as atende
void main() {
  FilaMercado fila = FilaMercado(); // Cria uma instância da classe FilaMercado
  fila.popularFila(10); // Preenche a fila com 10 pessoas
  fila.atenderTodos(); // Atende todas as pessoas da fila
}
