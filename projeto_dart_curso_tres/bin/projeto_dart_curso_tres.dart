void main() {
  //escolherMeioTransporte(Transporte.aviao);

  Set<String> registrosVisitados = <String>{};
  registrarDestinos('São Paulo', registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};
  registrarPrecos['São Paulo'] = 1200.0; // [] --> Valor chave
  registrarPrecos['Rio de Janeiro'] = 1500;
  registrarPrecos['Nova Iorque'] = 'Muito caro';
  //print(registrarPrecos['São Paulo']);

  dynamic meuNumero = 7.1;
  print(meuNumero.runtimeType);
  meuNumero = 'Sete.um';
  print(meuNumero);

  Viagem viagemHoje = Viagem(); //Instância de código.
  print(Viagem.codigoTrabalho);
}

class Viagem {
  static String codigoTrabalho = 'DJNADS12';
  double dinheiro = 0;
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

enum Transporte { carro, bike, andando, skate, aviao, trem }

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
