List<String> removerElemento({
  required List<String>? lista,
  required String? elemento,
}) =>
    (lista ?? [])..remove(elemento);

void main() {
  final listaOriginal = [
    '2',
    '5',
    '9',
    '7',
    '3',
  ];

  final novaLista = removerElemento(
    lista: listaOriginal,
    elemento: '2',
  );

  for (var item in novaLista) {
    print('Item: $item');
  }
}
