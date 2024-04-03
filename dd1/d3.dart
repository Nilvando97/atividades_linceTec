void main() {
  // Parágrafo de exemplo
  String paragrafo = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  // Imprime o parágrafo
  print("Parágrafo: $paragrafo");

  // Conta o número de palavras
  int numeroPalavras = contarPalavras(paragrafo);
  print("Número de palavras: $numeroPalavras");

  // Obtém o tamanho do texto
  int tamanhoTexto = paragrafo.length;
  print("Tamanho do texto: $tamanhoTexto");

  // Conta o número de frases
  int numeroFrases = contarFrases(paragrafo);
  print("Número de frases: $numeroFrases");

  // Conta o número total de vogais
  int numeroVogais = contarVogais(paragrafo);
  print("Número total de vogais: $numeroVogais");

  // Obtém as consoantes presentes no texto
  String consoantes = obterConsoantes(paragrafo);
  print("Consoantes presentes no texto: $consoantes");
}

// Função para contar o número de palavras em um texto
int contarPalavras(String texto) {
  return texto.split(' ').length;
}

// Função para contar o número de frases em um texto
int contarFrases(String texto) {
  return texto.split('.').length - 1;
}

// Função para contar o número total de vogais em um texto
int contarVogais(String texto) {
  var vogais = 'aeiouAEIOU';
  return texto.split('').where((char) => vogais.contains(char)).length;
}

// Função para obter as consoantes presentes em um texto
String obterConsoantes(String texto) {
  var consoantes = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ';
  var listaConsoantes = texto.split('').where((char) => consoantes.contains(char)).toList();
  return listaConsoantes.toSet().toList().join(', ');
}
