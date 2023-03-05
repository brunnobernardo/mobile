import 'transporte.dart'; // Importou o arquivo referente ao enum Transporte

class Viagem {
  static String codigoTrabalho = 'DJNADS12';
  double dinheiro = 0;
  Transporte locomocao; // Chamou o enum Transpote
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem(
      {required this.locomocao}); // Foi necessário a criação do construtor para isso

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou de carro para a aventura');
        break;
      case Transporte.bike:
        print('Vou de bike para a aventura');
        break;
      case Transporte.trem:
        print('Vou de trem, PAÊ');
        break;
      default:
        print('Estou indo para aventura, isso é o que importa!');
        break;
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
     _totalLocaisVisitados = novaQnt;
    } else {
      print('Esta ação é impossível');
    }
  }
}
