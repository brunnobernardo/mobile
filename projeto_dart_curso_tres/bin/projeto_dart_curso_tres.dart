import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  print(viagemMaio.consultarLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 10; // Valor passado para o set de Viagens
  print(viagemMaio.consultarLocaisVisitados);
}
