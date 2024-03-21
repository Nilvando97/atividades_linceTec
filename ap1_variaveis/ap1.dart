void main() {
  String nome = "Nilvando";
  String sobrenome = "Fonseca";
  int idade = 18;
  bool ativo = true;
  double peso = 90.8;
  String? nacionalidade = null;

  print("Nome completo: $nome $sobrenome");
  print("Idade: $idade (${idade >= 18 ? 'maior' : 'menor'} de idade)");
  print("Situação: ${ativo ? 'Ativo' : 'Inativo'}");
  print("Peso: ${peso.toStringAsFixed(2)}");
  print("Nacionalidade: ${nacionalidade ?? 'Nao informada'}");
}
