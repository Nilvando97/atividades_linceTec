// Definição da classe Retangulo
class Retangulo {
  double largura; // Atributo para a largura do retângulo
  double altura; // Atributo para a altura do retângulo

  // Construtor da classe Retangulo, que recebe a largura e altura como parâmetros e inicializa os atributos
  Retangulo(this.largura, this.altura);

  // Método para calcular a área do retângulo
  double calcularArea() {
    return largura * altura; // Retorna a multiplicação da largura pela altura
  }
}

// Função principal do programa
void main() {
  // Criação de uma instância da classe Retangulo com largura 7.0 e altura 4.0
  Retangulo retangulo = Retangulo(7.0, 4.0);

  // Chamada do método calcularArea para obter a área do retângulo
  double area = retangulo.calcularArea();

  // Impressão da área do retângulo no console
  print('Area do retângulo: $area');
}
