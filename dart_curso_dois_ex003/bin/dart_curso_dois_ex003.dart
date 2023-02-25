void main() {
  Tecnico tecnico01 = Tecnico('Fernando Lázaro', 'Corinthians', 'Técnico');
  Atacante atacante01 = Atacante('Roger Guedes', 'Corinthians', "Atacante");
  Goleiro goleiro01 = Goleiro('Cássio Ramos', 'Corinthians', 'Goleiro');

  atacante01.apresnetacao();
  atacante01.chute();
  atacante01.drible();
  atacante01.cobrancaFalta();
}

class Elenco {
  String nome;
  String time;
  String funcao;
  Elenco(this.nome, this.time, this.funcao);

  void apresnetacao() {
    print('Nome: $nome, Função: $funcao, Time: $time');
  }
}

class Atacante extends Elenco implements EstiloJogo {
  Atacante(String nome, String time, String funcao) : super(nome, time, funcao);

  void fazerGol() {
    print('O $funcao, $nome fez uma golaço!!');
  }

  @override
  void drible() {
    print('O $nome, gosta de cortar pra dentro');
  }

  @override
  void chute() {
    print('O $nome, gosta de chutar colocado');
  }

  @override
  void cobrancaFalta() {
    print(
        'O $nome, geralmente prefere dar uma pancada seca na cara da bola em cobranças de falta');
  }
}

class Tecnico extends Elenco {
  Tecnico(String nome, String time, String funcao) : super(nome, time, funcao);

  void substituirJogador() {
    print(
        'O $funcao, $nome fez uma substituição muito importante para o time!');
  }
}

class Goleiro extends Elenco {
  Goleiro(String nome, String time, String funcao) : super(nome, time, funcao);

  void agarrarPenalti() {
    print('O $funcao, $nome pegou um penâlti!!');
  }
}

abstract class EstiloJogo {
  void drible() {}

  void chute() {}

  void cobrancaFalta() {}
}
