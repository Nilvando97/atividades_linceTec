import 'dart:math';

// Definição da classe Figura com nome e código único
class Figura {
  final String nome;
  final int codigo;

  Figura(this.nome, this.codigo);
}

// Classe PacoteFiguras que representa um pacote de 4 figuras aleatórias
class PacoteFiguras {
  late List<Figura> figuras;

  // Construtor que recebe uma lista de figuras disponíveis e seleciona 4 aleatórias
  PacoteFiguras(List<Figura> listaFiguras) {
    figuras = [];
    var random = Random();

    // Seleciona figuras aleatórias, sem repetir
    while (figuras.length < 4) {
      var index = random.nextInt(listaFiguras.length);
      var figura = listaFiguras[index];
      if (!figuras.contains(figura)) {
        figuras.add(figura);
      }
    }
  }
}

// Classe Album que representa o álbum de figuras
class Album {
  List<Figura> figurasColadas = [];
  List<Figura> figurasRepetidas = [];

  // Verifica se o álbum está completo (todas as figuras foram coladas)
  bool estaCompleto() {
    var codigos = [1, 2, 3, 4];
    for (var codigo in codigos) {
      if (!figurasColadas.any((figura) => figura.codigo == codigo)) {
        return false;
      }
    }
    return true;
  }

  // Imprime as figuras coladas no álbum em ordem crescente de código
  void imprimirFigurasColadas() {
    figurasColadas.sort((a, b) => a.codigo.compareTo(b.codigo));
    for (var figura in figurasColadas) {
      print('${figura.codigo}: ${figura.nome}');
    }
  }

  // Adiciona um pacote de figuras ao álbum, tratando figuras repetidas
  void adicionarPacote(PacoteFiguras pacote) {
    for (var figura in pacote.figuras) {
      if (figurasColadas.contains(figura)) {
        if (!figurasRepetidas.contains(figura)) {
          figurasRepetidas.add(figura);
        }
      } else {
        figurasColadas.add(figura);
      }
    }
  }
}

void main() {
  // Lista com as 20 figuras disponíveis
  var listaFiguras = [
    Figura('Figura1', 1), Figura('Figura2', 2), Figura('Figura3', 3), Figura('Figura4', 4),
    Figura('Figura5', 5), Figura('Figura6', 6), Figura('Figura7', 7), Figura('Figura8', 8),
    Figura('Figura9', 9), Figura('Figura10', 10), Figura('Figura11', 11), Figura('Figura12', 12),
    Figura('Figura13', 13), Figura('Figura14', 14), Figura('Figura15', 15), Figura('Figura16', 16),
    Figura('Figura17', 17), Figura('Figura18', 18), Figura('Figura19', 19), Figura('Figura20', 20)
  ];

  var album = Album(); // Criação do álbum
  var pacote = PacoteFiguras(listaFiguras); // Criação do primeiro pacote de figuras

  // Adiciona pacotes de figuras ao álbum até que ele esteja completo
  while (!album.estaCompleto()) {
    album.adicionarPacote(pacote);
    pacote = PacoteFiguras(listaFiguras);
  }

  // Imprime o número de figuras repetidas e as figuras coladas no álbum
  print('Número de figuras repetidas: ${album.figurasRepetidas.length}');
  album.imprimirFigurasColadas();
}
