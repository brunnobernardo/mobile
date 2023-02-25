import 'dart:ffi';

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool? isMadura;

  Legumes mandioca1 = Legumes("Macaxeira", 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca1.printAlimento();
  banana1.printAlimento();
  macadamia1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  limao1.fazerSuco();

  banana1.separarIngredientes();
  macadamia1.fazerMassa();
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estarMadura(int diasParaMdura) {
    // Método, ou seja, função criada dentro de uma classe
    isMadura = diasDesdeColheita >= diasParaMdura;
    print(
        'A sua $nome, foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMdura para poder comer. Ela está madura? $isMadura');
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void separarIngredientes() {
    print('Pegar a $nome');
  }

  @override
  void fazerMassa(){
    print('Misturar a $nome com farinha, açucar, ovos, etc.');
  }

  @override
  void assar(){
    print('Colocar no forno');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor ');
  }
}

class Legumes extends Alimento implements Bolo {
  // a sub-classe Legumes está herdando as propriedades e metodos da superclasse Alimento
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando');
    } else {
      print('Não precisa cozinhar');
    }
  }

  @override
  void assar() {

  }

  @override
  void fazerMassa(){

  }

  @override
  void separarIngredientes(){

  }
}

class Citricas extends Fruta {
  double nivelAzedo;
  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refrigerante de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

abstract class Bolo {
   //Separo os igredientes 
   void separarIngredientes();
   //Faço a massa
   void fazerMassa();
   //Assar
   void assar();

}