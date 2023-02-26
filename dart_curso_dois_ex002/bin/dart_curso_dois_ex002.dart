
void main() {
  Tecnico tecnico01 = Tecnico('Fernando Lázaro', 'Corinthians', 'Técnico');
  Atacante atacante01 = Atacante('Roger Guedes', 'Corinthians', "Atacante");
  Goleiro goleiro01 = Goleiro('Cássio Ramos', 'Corinthians', 'Goleiro');

  tecnico01.apresnetacao();
  atacante01.apresnetacao();
  goleiro01.apresnetacao();

  tecnico01.substituirJogador();
  atacante01.fazerGol();
  goleiro01.agarrarPenalti();
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

class Atacante extends Elenco {
  Atacante(String nome, String time, String funcao):super(nome, time, funcao);

  void fazerGol () {
    print('O $funcao, $nome fez uma golaço!!');
  }
}

class Tecnico extends Elenco {
  Tecnico(String nome, String time, String funcao):super(nome, time, funcao);

  void substituirJogador () {
    print('O $funcao, $nome fez uma substituição muito importante para o time!');
  }
}

class Goleiro extends Elenco {
  Goleiro(String nome, String time, String funcao):super(nome, time, funcao);

  void agarrarPenalti () {
    print('O $funcao, $nome pegou um penâlti!!');
  }
}
