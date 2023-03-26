class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String brubsBot = "BrubsBot: \n";
  GoodManners(this.question);

  bool isThisManners() {
    if ((question.contains('oi') ||
        question.contains('ola') ||
        question.contains('Oi') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('Bom') ||
        question.contains('Boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada') ||
        question.contains('De nada'))) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if ((question.contains('Bom dia')) || question.contains('bom dia')) {
      print('$brubsBot: Bom dia flor do dia');
    } else if ((question.contains('Boa tarde')) ||
        question.contains('boa tarde')) {
      print('$brubsBot: Boa tarde sô');
    } else if ((question.contains('Boa noite')) ||
        question.contains('boa noite')) {
      print('$brubsBot: Boa noite Bruno');
    } else if ((question.contains('Oi')) ||
        question.contains('oi') ||
        question.contains('Ola') ||
        question.contains('Ola')) {
      print('$brubsBot: Muito prazer');
    } else if ((question.contains('Obrigado')) ||
        question.contains('obrigado') ||
        question.contains('Obrigada') ||
        question.contains('obrigadoa')) {
      print('$brubsBot: Por nada');
    }
  }
}
