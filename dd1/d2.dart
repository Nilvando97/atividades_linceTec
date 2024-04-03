void main() {
  // Lista de temperaturas em Celsius
  List<double> temperaturasCelsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  // Itera sobre cada temperatura em Celsius
  for (double celsius in temperaturasCelsius) {
    // Converte a temperatura para Fahrenheit e Kelvin
    Map<String, double> temperaturasConvertidas = converterTemperatura(celsius);
    
    // Imprime as temperaturas convertidas
    print('Celcius: ${celsius.toStringAsFixed(2)}, Fahrenheit: ${temperaturasConvertidas['fahrenheit']!.toStringAsFixed(2)}, Kelvin: ${temperaturasConvertidas['kelvin']!.toStringAsFixed(2)}');
  }
}

// Função para converter uma temperatura de Celsius para Fahrenheit e Kelvin
Map<String, double> converterTemperatura(double celsius) {
  double fahrenheit = (celsius * 9/5) + 32;
  double kelvin = celsius + 273.15;

  // Retorna um mapa com as temperaturas convertidas
  return {
    'fahrenheit': fahrenheit,
    'kelvin': kelvin,
  };
}
