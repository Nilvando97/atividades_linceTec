import 'dart:math';

void main() {
  // Cria uma pessoa com um status de calorias aleatório
  final pessoa = Pessoa.caloriasAleatorias();
  
  // Lista de fornecedores de alimentos
  final fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorDeUltraCaloricos(),
  ];
  
  final random = Random();

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    // Escolhe um fornecedor aleatório
    final fornecedor = fornecedores[random.nextInt(fornecedores.length)];
    
    // Consome uma refeição do fornecedor escolhido
    pessoa.refeicao(fornecedor);
  }

  // Imprime as informações da pessoa após as refeições
  pessoa.informacoes();
}

// Enumeração para representar os diferentes estados de calorias
enum StatusCalorias {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}

// Classe que representa um produto consumível
class Produto {
  Produto(this.nome, this.calorias);

  final String nome; // Nome do produto
  final int calorias; // Total de calorias do produto
}

// Classe abstrata que define a interface para fornecedores de produtos
abstract class Fornecedor {
  Produto fornecer(); // Método para fornecer um produto
}

// Classes concretas que implementam a lógica de fornecer produtos específicos

class FornecedorDeBebidas extends Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  @override
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches extends Fornecedor {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduiche de frango', 350),
    Produto('Sanduiche de queijo', 400),
    Produto('Sanduiche de presunto', 300),
  ];

  @override
  Produto fornecer() {
    return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolos extends Fornecedor {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de chocolate', 500),
    Produto('Bolo de cenoura', 450),
    Produto('Bolo de limao', 400),
  ];

  @override
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas extends Fornecedor {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada verde', 150),
    Produto('Salada de frutas', 200),
    Produto('Salada de legumes', 180),
  ];

  @override
  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos extends Fornecedor {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Batata frita', 300),
    Produto('Coxinha', 250),
    Produto('Pastel', 200),
  ];

  @override
  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorDeUltraCaloricos extends Fornecedor {
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto('Hamburguer', 700),
    Produto('Pizza', 800),
    Produto('Lasanha', 600),
  ];

  @override
  Produto fornecer() {
    return _ultraCaloricosDisponiveis[_random.nextInt(_ultraCaloricosDisponiveis.length)];
  }
}

// Classe que representa uma pessoa
class Pessoa {
  int _caloriasConsumidas = 0; // Acumulador de calorias
  StatusCalorias _statusCalorias; // Status das calorias

  // Construtor que recebe o status inicial de calorias
  Pessoa(this._statusCalorias);

  // Factory method para criar uma pessoa com status de calorias aleatório
  factory Pessoa.caloriasAleatorias() {
    final random = Random();
    final statusCalorias = StatusCalorias.values[random.nextInt(StatusCalorias.values.length)];
    return Pessoa(statusCalorias);
  }

  // Método para imprimir as informações da pessoa
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Status de calorias: $_statusCalorias');
  }

  // Método para consumir um produto e atualizar as calorias consumidas e o status das calorias
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    _atualizarStatusCalorias();
  }

  // Método privado para atualizar o status das calorias com base nas calorias consumidas
  void _atualizarStatusCalorias() {
    if (_caloriasConsumidas <= 500) {
      _statusCalorias = StatusCalorias.deficitExtremo;
    } else if (_caloriasConsumidas <= 1800) {
      _statusCalorias = StatusCalorias.deficit;
    } else if (_caloriasConsumidas <= 2500) {
      _statusCalorias = StatusCalorias.satisfeito;
    } else {
      _statusCalorias = StatusCalorias.excesso;
    }
  }
}
