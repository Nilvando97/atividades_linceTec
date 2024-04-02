import 'dart:async';

// Função principal assíncrona
Future<void> main() async {
  // Lista de URLs das imagens a serem baixadas
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  // Chama a função para baixar as imagens e aguarda a conclusão
  await baixarImagens(urls);
}

// Função assíncrona para baixar uma imagem (simulação com atraso de 2 segundos)
Future<void> baixarImagem(String url) async {
  // Simula um atraso de 2 segundos antes de continuar
  await Future.delayed(Duration(seconds: 2));

  // Simulação de download da imagem
  print('Imagem $url baixada com sucesso!');
}

// Função assíncrona para baixar várias imagens
Future<void> baixarImagens(List<String> urls) async {
  // Mensagem de início do download
  print('Baixando imagens...');

  // Itera sobre cada URL e baixa a imagem correspondente
  for (String url in urls) {
    await baixarImagem(url); // Chama a função para baixar a imagem
  }

  // Mensagem de download concluído
  print('Download concluído com sucesso!');
}
