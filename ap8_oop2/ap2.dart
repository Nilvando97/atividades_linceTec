// Definição da classe abstrata Animal
abstract class Animal {
  void comer();
  void beber();
}

// Definição da classe concreta Cachorro que herda de Animal
class Cachorro extends Animal {
  @override
  void comer() {
    print('O cachorro está comendo.');
  }

  @override
  void beber() {
    print('O cachorro está bebendo água.');
  }

  // Método específico para o cachorro
  void latir() {
    print('O cachorro está latindo.');
  }
}

void main() {
  // Instanciando a classe Cachorro
  var cachorro = Cachorro();

  // Chamando os métodos comer, beber e latir
  cachorro.comer();
  cachorro.beber();
  cachorro.latir();
}
