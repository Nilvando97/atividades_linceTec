import 'dart:math'; // Importa a biblioteca math para usar a classe Random

// Classe para representar a lista de compras
class ListaDeCompras {
  List<Item> itensDesejados = []; // Lista de itens desejados

  // Método para incluir um novo item na lista de compras
  void incluirNovoItem(String nome, int quantidade) {
    itensDesejados.add(Item(nome, quantidade)); // Adiciona um novo item à lista
  }

  // Método para separar os itens já comprados da lista de itens desejados
  void separarItensComprados() {
    List<Item> itensComprados = [];
    List<Item> itensDesejadosAtualizados = [];

    for (var item in itensDesejados) {
      if (item.comprado) {
        itensComprados.add(item); // Adiciona o item à lista de itens comprados
      } else {
        itensDesejadosAtualizados.add(item); // Mantém o item na lista de itens desejados
      }
    }

    itensDesejados = itensDesejadosAtualizados; // Atualiza a lista de itens desejados

    print('\nItens comprados:');
    for (var item in itensComprados) {
      print('${item.nome}: ${item.quantidade}');
    }
  }

  // Método para separar os itens sem estoque da lista de itens desejados
  void separarItensSemEstoque() {
    List<Item> itensSemEstoque = [];
    List<Item> itensDesejadosAtualizados = [];

    for (var item in itensDesejados) {
      if (item.semEstoque) {
        itensSemEstoque.add(item); // Adiciona o item à lista de itens sem estoque
      } else {
        itensDesejadosAtualizados.add(item); // Mantém o item na lista de itens desejados
      }
    }

    itensDesejados = itensDesejadosAtualizados; // Atualiza a lista de itens desejados

    print('\nItens sem estoque:');
    for (var item in itensSemEstoque) {
      print('${item.nome}: ${item.quantidade}');
    }
  }

  // Método para exibir os itens desejados na lista de compras
  void exibirItensDesejados() {
    print('\nItens desejados:');
    for (var item in itensDesejados) {
      print('${item.nome}: ${item.quantidade}');
    }
  }

  // Método para escolher aleatoriamente um item pendente na lista de compras
  String escolherItemPendenteAleatoriamente() {
    List<Item> itensPendentes = itensDesejados.where((item) => !item.comprado && !item.semEstoque).toList();

    if (itensPendentes.isEmpty) {
      return 'Todos os itens foram comprados ou estão sem estoque.';
    }

    Random random = Random();
    int indiceAleatorio = random.nextInt(itensPendentes.length);
    return itensPendentes[indiceAleatorio].nome;
  }

  // Método para mostrar o progresso da lista de compras
  void mostrarIndicadorProgresso() {
    int totalItens = itensDesejados.length;
    int itensComprados = itensDesejados.where((item) => item.comprado).length;
    print('\nProgresso: $itensComprados/$totalItens');
  }
}

// Classe para representar um item da lista de compras
class Item {
  String nome; // Nome do item
  int quantidade; // Quantidade desejada do item
  bool comprado; // Indica se o item foi comprado
  bool semEstoque; // Indica se o item está sem estoque

  // Construtor da classe Item
  Item(this.nome, this.quantidade, {this.comprado = false, this.semEstoque = false});
}

void main() {
  ListaDeCompras listaDeCompras = ListaDeCompras(); // Instancia a lista de compras

  // Adiciona novos itens à lista de compras
  listaDeCompras.incluirNovoItem('Arroz', 2);
  listaDeCompras.incluirNovoItem('Feijão', 3);
  listaDeCompras.incluirNovoItem('Macarrão', 4);

  // Marca alguns itens como comprados e outros como sem estoque
  listaDeCompras.itensDesejados[0].comprado = true;
  listaDeCompras.itensDesejados[1].comprado = true;
  listaDeCompras.itensDesejados[2].semEstoque = true;

  // Exibe os itens desejados, separa os itens comprados e sem estoque,
  // escolhe um item pendente aleatoriamente e mostra o indicador de progresso
  listaDeCompras.exibirItensDesejados();
  listaDeCompras.separarItensComprados();
  listaDeCompras.separarItensSemEstoque();
  print('\nItem pendente escolhido aleatoriamente: ${listaDeCompras.escolherItemPendenteAleatoriamente()}');
  listaDeCompras.mostrarIndicadorProgresso();
}