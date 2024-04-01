// Classe que representa uma conta bancária
class ContaBancaria {
  String titular; // Titular da conta
  double saldo;   // Saldo da conta

  // Construtor da classe ContaBancaria
  ContaBancaria(this.titular, this.saldo);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor; // Adiciona o valor ao saldo
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor > saldo) { // Verifica se há saldo suficiente para o saque
      print('Saldo insuficiente'); // Se não houver saldo suficiente, imprime uma mensagem
    } else {
      saldo -= valor; // Caso contrário, subtrai o valor do saldo
    }
  }

  // Método para imprimir o saldo atual da conta no console
  void imprimirSaldo() {
    print('Saldo atual: ${saldo.toStringAsFixed(2)}'); // Imprime o saldo formatado com duas casas decimais
  }
}

void main() {
  // Cria uma nova conta bancária com titular "João" e saldo inicial de 1000.00
  var conta = ContaBancaria('João', 1000.00);

  // Realiza um depósito de 500.00 na conta
  conta.depositar(500.00);

  // Realiza um saque de 200.00 da conta
  conta.sacar(200.00);

  // Imprime o saldo atual da conta
  conta.imprimirSaldo(); // Saída: Saldo atual: 1300.00
}
