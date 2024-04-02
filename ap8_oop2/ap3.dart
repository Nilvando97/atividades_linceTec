// Classe abstrata Animal
abstract class Animal {
  void comer();
}

// Classe abstrata Mamifero que estende Animal
abstract class Mamifero extends Animal {
  void dormir();
}

class Camelo extends Mamifero {
  @override
  void comer() {
    print('O camel esta comendo');
  }

  @override
  void dormir() {
    print('O camelo está dormindo.');
  }
}
void main() {
  // Instanciando a classe Camelo
  var camelo = Camelo();

  // Chamando os métodos comer e dormir
  camelo.comer();
  camelo.dormir();
}