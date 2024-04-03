// Importa o pacote 'dart:core' que contém as classes fundamentais do Dart, como DateTime
import 'dart:core';

void main() {
  // Obtém a data atual
  DateTime dataAtual = DateTime.now();

  // Somando 18 dias úteis à data atual
  DateTime dataCalculada = somarDiasUteis(dataAtual, 18);

  // Formatando as datas para o padrão dia/mes/ano
  String dataAtualFormatada = formatarData(dataAtual);
  String dataCalculadaFormatada = formatarData(dataCalculada);

  // Imprime as datas formatadas
  print("Data atual: $dataAtualFormatada");
  print("Data calculada: $dataCalculadaFormatada");
}

/// Função que soma dias úteis a uma data, ignorando sábados e domingos
DateTime somarDiasUteis(DateTime data, int dias) {
  int diasAdicionados = 0;
  while (diasAdicionados < dias) {
    /// Adiciona um dia à data
    data = data.add(Duration(days: 1));
    // Verifica se o dia adicionado não é sábado nem domingo
    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      // Incrementa o contador de dias adicionados
      diasAdicionados++;
    }
  }
  // Retorna a data resultante
  return data;
}

// Função que formata uma data para o padrão dia/mes/ano
String formatarData(DateTime data) {
  return "${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year.toString()}";
}
