// Função que remove um elemento de uma lista, se ele existir
List<String> removerElemento({
  required List<String>? lista, // Lista de strings opcional e obrigatória
  required String? elemento, // Elemento a ser removido, opcional e obrigatório
}) =>
// Usa o operador de coalescência nula (??) para garantir que a lista não seja nula
    (lista ?? [])
    // Usa o operador de cascata (..) para chamar o método remove apenas se a lista e o elemento não forem nulos
    ..remove(elemento);

void main() {
  // Lista original
  final listaOriginal = [
    '2',
    '5',
    '9',
    '7',
    '3',
  ];

  // Remove o elemento '2' da lista original
  final novaLista = removerElemento(
    lista: listaOriginal,
    elemento: '2',
  );
  // Imprime os itens da lista atualizada
  for (var item in novaLista) {
    print('Item: $item');
  }
}
