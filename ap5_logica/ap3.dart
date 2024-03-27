import 'dart:math';

void main () {
  final random = Random();
  int numeroAleatorio = random.nextInt(901) + 100;
  int soma = somaDePares(numeroAleatorio);
  print('A soma dos números pares entre 0 e $numeroAleatorio é $soma');

}

int somaDePares(int numero){
  int soma = 0;
  for(int i = 0; i <= numero; i++){
    if(i % 2 == 0){
      soma += i;
    }
  }
  return soma;
}
