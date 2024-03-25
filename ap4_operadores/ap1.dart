bool ehAnoBissexto(int ano) {
  if ((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0) {
    return true;
  } else {
    return false;
  }
}
void main() {
  List<int> anos = [2016, 1988, 2000, 2100, 2300, 1993];

  for (int ano in anos) {
    if (ehAnoBissexto(ano)) {
      print("$ano é um ano bissexto.");
    } else {
      print("$ano não é um ano bissexto.");
    }
  }
}