// Interface Arquivo com método abstrato abrir
abstract class Arquivo {
  void abrir();
}

// Classe ArquivoTexto que implementa a interface Arquivo
class ArquivoTexto implements Arquivo {
  // Atributo privado nome que representa o nome do arquivo
  String nome;

  // Construtor que recebe o nome do arquivo como parâmetro
  ArquivoTexto(this.nome);

  // Implementação do método abrir da interface Arquivo
  @override
  void abrir() {
    try {
      // Simula a abertura do arquivo
      print('Abrindo arquivo: $nome');
      // Simula um erro ao abrir o arquivo
      throw Exception('Erro ao abrir o arquivo $nome');
    } catch (e) {
      // Em caso de erro, relança a exceção com a mensagem especificada
      throw Exception('Erro ao abrir o arquivo $nome');
    }
  }
}

void main() {
  try {
    // Solicita ao usuário que digite o nome do arquivo
    print('Digite o nome do arquivo:');
    var nomeArquivo = 'arquivo.txt'; // Simulando entrada do usuário

    // Cria um objeto da classe ArquivoTexto com o nome informado e chama o método abrir
    var arquivo = ArquivoTexto(nomeArquivo);
    arquivo.abrir();
  } catch (e) {
    // Captura a exceção lançada pelo método abrir e exibe a mensagem de erro
    print(e);
    rethrow; // Relança a exceção para o bloco catch mais externo
  } finally {
    // Exibe a mensagem de encerramento do programa
    print('Fim do programa');
  }
}
