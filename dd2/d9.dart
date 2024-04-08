void main() {
  final controleDePessoas = ControleDePessoas();

  // Cadastrando pessoas no sistema
  controleDePessoas
    ..cadastrarPessoa(Pessoa('Jose', Mes.abril))
    ..cadastrarPessoa(Pessoa('Arthur', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Joao', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jesse', Mes.dezembro))
    ..cadastrarPessoa(Pessoa('Roberta', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Carla', Mes.fevereiro))
    ..cadastrarPessoa(Pessoa('Thania', Mes.agosto))
    ..cadastrarPessoa(Pessoa('Rafaela', Mes.marco))
    ..cadastrarPessoa(Pessoa('Yuri', Mes.junho))
    ..cadastrarPessoa(Pessoa('Jonas', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Elias', Mes.outubro))
    ..cadastrarPessoa(Pessoa('Abel', Mes.maio))
    ..cadastrarPessoa(Pessoa('Danilo', Mes.abril))
    ..cadastrarPessoa(Pessoa('Jonathan', Mes.abril))
    ..cadastrarPessoa(Pessoa('Joseph', Mes.setembro))
    ..cadastrarPessoa(Pessoa('Abdul', Mes.janeiro))
    ..cadastrarPessoa(Pessoa('Jean', Mes.abril));

  // Passar por todos os meses com pessoas, e imprimir os nomes das pessoas
  for (final mes in controleDePessoas.mesesComPessoas) {
    print('\n${mes.name}');

    for (final pessoa in controleDePessoas.pessoasPorMes(mes)) {
      print(' > ${pessoa.nome}');
    }
  }
}

// Enumeração dos meses do ano
enum Mes {
  janeiro,
  fevereiro,
  marco,
  abril,
  maio,
  junho,
  julho,
  agosto,
  setembro,
  outubro,
  novembro,
  dezembro,
}

// Classe que representa uma pessoa com nome e mês de nascimento
class Pessoa {
  Pessoa(this.nome, this.mesDeNascimento);

  final String nome;
  final Mes mesDeNascimento;
}

// Classe que controla o cadastro e busca de pessoas
class ControleDePessoas {
  final _pessoas = <Pessoa>[];

  /// Cadastra uma pessoa no sistema
  void cadastrarPessoa(Pessoa pessoa) => _pessoas.add(pessoa);

  /// Retorna a lista de meses com pessoas cadastradas
  List<Mes> get mesesComPessoas {
    // Utiliza map para extrair os meses de nascimento das pessoas,
    // toSet para eliminar duplicatas e toList para ordenar a lista
    return _pessoas.map((pessoa) => pessoa.mesDeNascimento).toSet().toList()..sort((a, b) => a.index.compareTo(b.index));
  }

  /// Retorna a lista de pessoas que nasceram no [mes] especificado
  List<Pessoa> pessoasPorMes(Mes mes) {
    // Utiliza where para filtrar as pessoas que nasceram no mês especificado
    return _pessoas.where((pessoa) => pessoa.mesDeNascimento == mes).toList();
  }
}
