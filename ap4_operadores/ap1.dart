// Função que verifica se um ano é bissexto
bool ehAnoBissexto(int ano) {
  if ((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  // Lista de anos a serem verificados
  List<int> anos = [2016, 1988, 2000, 2100, 2300, 1993];

  // Loop para verificar cada ano na lista
  for (int ano in anos) {
    // Verifica se o ano é bissexto usando a função ehAnoBissexto
    if (ehAnoBissexto(ano)) {
      print("$ano é um ano bissexto.");
    } else {
      print("$ano não é um ano bissexto.");
    }
  }
}
