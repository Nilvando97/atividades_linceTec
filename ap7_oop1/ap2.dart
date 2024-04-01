class Retangulo{
  double larura;
  double altura;

  Retangulo(this.larura, this.altura);

  double calcularArea(){
    return larura * altura;
  }
}

void main(){
Retangulo retangulo = Retangulo(7.0, 4.0);

double area = retangulo.calcularArea();

print('Area do retângulo: $area');

}