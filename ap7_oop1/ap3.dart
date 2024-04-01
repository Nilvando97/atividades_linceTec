// Classe que representa um produto
class Produto {
  String nome; // Nome do produto
  double preco; // Preço do produto

  // Construtor que inicializa o nome e o preço do produto
  Produto(this.nome, this.preco);

  // Método para calcular o preço com desconto
  double desconto(double percentual) {
    return preco - (preco * (percentual / 100));
  }
}

void main() {
  // Lista de produtos e seus respectivos nomes e preços
  final produtos = <Produto>[];
  final nomes = ['Gabinete', 'Teclado', 'Monitor', 'Impressora', 'Mouse'];
  final precos = [7.0, 10.0, 6.5, 8.0, 9.0];

  // Itera sobre os nomes dos produtos
  for (int i = 0; i < nomes.length; i++) {
    // Cria um novo produto com nome e preço
    final produto = Produto(nomes[i], precos[i]);
    // Adiciona o produto à lista de produtos
    produtos.add(produto);

    // Calcula o novo preço com desconto de 5%
    final novoPreco = produto.desconto(5.0);

    // Imprime o novo preço com desconto
    print(
      "Novo preço do produto ${produto.nome} (com desconto): $novoPreco\n",
    );
  }
}
