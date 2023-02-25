void main() {
  String informacoesGeraisFruta = funcInformacoesFruta();
  print(informacoesGeraisFruta);
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

// Posicionais Obrigatórios --> Os parâmetros precisam ser utilizados na mesma ordem que foram criados
// Nomeados Opcionais --> Você não tem a obrigação de passar algum valor. Sempre inicia com {Sting? cor}, por aceitar vazio necessita do '?' devido o null safety
// Parâmetros "Padrão" --> Parâmetros que já começam com um valor definido, que pode ou não ser modificado.
// Modificador "required" --> Mistura os nomeados com os opcionais, ou seja, necessita de um argumento mas pode ser definido em qualquer ordem, já que está nomeado

String mostrarMadura(String nome, int dias) {
  // Void retorna vazio
  if (dias >= 30) {
    return 'A $nome está madura.';
  } else {
    return 'A $nome não está madura.';
  }
}

/*bool funcEstaMadura(int dias) {
    if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
*/

String funcInformacoesFruta() {
  String nome = 'Laranja';
  double peso = 100.2;
  int diasDesdeColheita = 40;
  //bool isMadura = funcEstaMadura(diasDesdeColheita); // 'is' no ínicio de uma variável booleana é uma boa prática
  String frutaMadura = mostrarMadura(nome, diasDesdeColheita);
  int quantosDias = funcQuantosDiasMadura(
      diasDesdeColheita); // Envia o argumento 'diasDesdeColheita' para o parâmetro 'dias', e ao mesmo tempo recebe o retono('return') definido pela função 'funcQuantosDiasMadura', nesse caso 'quantosDiasFaltam'
  String informacoes =
      'A $nome pesa $peso gramas! Ela foi colhida há $diasDesdeColheita dias e precisa de $quantosDias para amadurecer, logo, a $frutaMadura';
  return informacoes;
}