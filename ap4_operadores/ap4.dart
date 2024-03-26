// Função que calcula o percentual de desconto dado em um produto
int calcularDesconto(int valorProduto, int valorComDesconto) {
  // Calcula o desconto como a diferença entre o valor original e o valor com desconto,
  // dividido pelo valor original e multiplicado por 100 para obter a porcentagem.
  // O método toInt() é usado para converter o resultado para um número inteiro.
  return ((valorProduto - valorComDesconto) / valorProduto * 100).toInt();
}

void main() {
  // Valores de exemplo: preço original e preço com desconto
  int valorProduto = 10;
  int valorComDesconto = 7;
  // Chama a função calcularDesconto para obter o desconto dado
  int desconto = calcularDesconto(valorProduto, valorComDesconto);
  // Imprime na tela os valores originais, o preço com desconto e o desconto dado
  print(
      'O produto custava $valorProduto reais, foi vendido por $valorComDesconto reais. O desconto dado foi $desconto%');
}
