void main() {
  //escolherMeioTransporte(1);
  escolherMeioTransporteEnum(Transporte.aviao);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print('Vou de carro para a aventura');
  } else if (locomocao == 1) {
    print('Vou de bike para a aventura');
  } else {
    print('Vou para a aventura');
  }
}

enum Transporte { carro, bike, andando, skate, aviao, trem }

void escolherMeioTransporteEnum(Transporte locomocao) {
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
