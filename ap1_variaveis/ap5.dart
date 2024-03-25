// Definição da classe Pessoa
class Pessoa {
  // Atributos da classe, todos marcados como final para torná-los imutáveis após a inicialização
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade; // Opcional, pode ser nulo

  // Construtor da classe Pessoa, utilizando parâmetros nomeados e marcando os obrigatórios com required
  Pessoa({
    required this.nome,
    required this.sobrenome,
    required this.idade,
    required this.ativo,
    required this.peso,
    this.nacionalidade, // Parâmetro opcional
  });

  // Sobrescrita do método toString para formatar a representação da pessoa como string
  @override
  String toString() {
    return 'Nome completo: $nome $sobrenome\n'
        'Idade: $idade (${idade >= 18 ? 'maior' : 'menor'} de idade)\n'
        'Situação: ${ativo ? 'Ativo' : 'Inativo'}\n'
        'Peso: ${peso.toStringAsFixed(2)}\n'
        'Nacionalidade: ${nacionalidade ?? 'Não informada'}';
  }
}

// Função principal
void main() {
  // Criando uma instância da classe Pessoa com valores específicos
  final pessoa = Pessoa(
    nome: "Nilvando",
    sobrenome: "Fonseca",
    idade: 18,
    ativo: true,
    peso: 90.8,
    nacionalidade: null, // Nacionalidade é nula neste caso
  );

  // Imprimindo a representação da pessoa
  print(pessoa.toString());
}
