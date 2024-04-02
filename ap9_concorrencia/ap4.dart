import 'dart:async';

// Função assíncrona que simula uma busca de dados
Future<void> buscarDados() async {
  print('Iniciando busca de dados...');
  await Future.delayed(Duration(seconds: 1)); // Simula o início da busca

  print('Buscando dados...');
  await Future.delayed(Duration(seconds: 2)); // Simula a busca dos dados

  print('Dados encontrados!');
}

void main() {
  buscarDados(); // Chama a função para buscar os dados
}
