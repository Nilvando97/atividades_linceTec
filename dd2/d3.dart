// Classe que representa uma música
class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int duracao; // Duracao em segundos

  // Construtor da classe Musica
  Musica(this.titulo, this.artista, this.album, this.duracao);

  // Método toString para imprimir uma representação legível da música
  @override
  String toString() {
    return '$titulo - $artista - $album - ${duracao}s';
  }
}

// Classe que representa a biblioteca de músicas
class BibliotecaDeMusicas {
  final List<Musica> musicas; // Lista de músicas na biblioteca

  // Construtor da classe BibliotecaDeMusicas
  BibliotecaDeMusicas(this.musicas);

  // Método para imprimir todas as músicas da biblioteca
  void imprimirMusicas() {
    musicas.forEach((musica) => print(musica));
  }

  // Método para obter o número total de músicas na biblioteca
  int numeroDeMusicas() {
    return musicas.length;
  }

  // Método para calcular o tempo total de todas as músicas em horas
  double tempoTotalEmHoras() {
    return musicas.map((musica) => musica.duracao).reduce((a, b) => a + b) / 3600;
  }

  // Método para buscar músicas pelo título
  List<Musica> buscarPorTitulo(String titulo) {
    return musicas.where((musica) => musica.titulo.toLowerCase().contains(titulo.toLowerCase())).toList();
  }

  // Método para buscar músicas pelo artista
  List<Musica> buscarPorArtista(String artista) {
    return musicas.where((musica) => musica.artista.toLowerCase().contains(artista.toLowerCase())).toList();
  }

  // Método para buscar músicas pelo álbum
  List<Musica> buscarPorAlbum(String album) {
    return musicas.where((musica) => musica.album.toLowerCase().contains(album.toLowerCase())).toList();
  }
}

void main() {
  // Lista de músicas
  var musicas = [
    Musica('Title 1', 'Artist 1', 'Album 1', 300),
    Musica('Title 2', 'Artist 2', 'Album 2', 240),
    Musica('Title 3', 'Artist 1', 'Album 1', 180),
  ];

  // Instância da biblioteca de músicas
  var biblioteca = BibliotecaDeMusicas(musicas);

  // Impressão das músicas cadastradas na biblioteca
  print('Músicas cadastradas:');
  biblioteca.imprimirMusicas();

  // Impressão do número total de músicas e do tempo total em horas
  print('\nNúmero de músicas: ${biblioteca.numeroDeMusicas()}');
  print('Tempo total em horas: ${biblioteca.tempoTotalEmHoras()}');

  // Busca por músicas pelo título, artista e álbum
  print('\nBusca por título "Title":');
  biblioteca.buscarPorTitulo('Title').forEach((musica) => print(musica));

  print('\nBusca por artista "Artist 1":');
  biblioteca.buscarPorArtista('Artist 1').forEach((musica) => print(musica));

  print('\nBusca por álbum "Album 1":');
  biblioteca.buscarPorAlbum('Album 1').forEach((musica) => print(musica));
}
