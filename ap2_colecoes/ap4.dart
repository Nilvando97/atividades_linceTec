void main() {
  // Mapa de cidades por estado
  Map<String, List<String>> cidadesPorEstado = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguaçu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  // Imprimir siglas dos estados
  print('Estados: ${cidadesPorEstado.keys.toList().join(' ; ')}');

  // Imprimir cidades de SC em ordem alfabética
  List<String> cidadesSC = cidadesPorEstado['SC'] ?? [];
  cidadesSC.sort();
  print('Cidades de SC: ${cidadesSC.join(' ; ')}');

  // Imprimir todas as cidades em ordem alfabética
  List<String> todasCidades = [];
  cidadesPorEstado.forEach((estado, cidades) {
    cidades.forEach((cidade) {
      todasCidades.add('$cidade - $estado');
    });
  });
  todasCidades.sort();
  todasCidades.forEach((cidade) => print(cidade));
}
