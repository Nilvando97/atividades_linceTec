import 'dart:async';

// Função assíncrona que simula a consulta a uma API de rastreamento
Future<String> consultarAPI(String codigoRastreamento) async {
  // Simula um atraso de 2 segundos, como se estivesse fazendo uma requisição real
  await Future.delayed(Duration(seconds: 2));

  // Simulação de consulta a API com código de rastreamento
  if (codigoRastreamento == 'ABC123') {
    return 'Em transito'; // Retorna o status "Em trânsito" se o código for 'ABC123'
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue'; // Retorna o status "Entregue" se o código for 'XYZ789'
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado'; // Retorna o status "Atrasado" se o código for 'DEF456'
  } else {
    return 'Código de rastreamento inválido'; // Retorna mensagem de erro para códigos inválidos
  }
}

// Função assíncrona para verificar o status de entrega de um pacote
Future<void> verificarStatusEntrega(String codigoRastreamento) async {
  // Chama a função para consultar a API e aguarda o resultado
  String status = await consultarAPI(codigoRastreamento);

  // Imprime o status de entrega do pacote
  print('Status de entrega do pacote $codigoRastreamento: $status');
}

// Função principal assíncrona
Future<void> main() async {
  // Início da execução
  print('Inicio');

  // Chama a função para verificar o status de entrega para três códigos diferentes
  await verificarStatusEntrega('ABC123');
  await verificarStatusEntrega('XYZ789');
  await verificarStatusEntrega('DEF456');

  // Fim da execução
  print('Fim');
}
