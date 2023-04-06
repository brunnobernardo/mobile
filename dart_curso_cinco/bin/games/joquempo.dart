import 'dart:io';
import 'dart:math';

class Joquempo {
  String questions;
  bool isJoquempoQuestion = false;
  List<String> options = [
    "Pedra",
    "Papel",
    "Tesoura",
    "pedra",
    "papel",
    "tesoura"
  ];
  String brubsBot = "BrubsBot: \n";
  Joquempo(this.questions);

  bool isJoquempo() {
    if ((questions.contains('Joquempo') ||
        questions.contains('joquempo') ||
        questions.contains('Jogo') ||
        questions.contains('Jogo') ||
        questions.contains('Pedra') ||
        questions.contains('Pedra') ||
        questions.contains('papel') ||
        questions.contains('Papel') ||
        questions.contains('Tesoura') ||
        questions.contains('tesoura'))) {
      isJoquempoQuestion = true;
    }
    return isJoquempoQuestion;
  }

  String getComputerOption() {
    int indexOptions = Random().nextInt(5);
    return options[indexOptions];
  }

  String getPlayerOption() {
    String playerOption = stdin.readLineSync().toString();
    return playerOption;
  }

  joquempoGame() {
    print("$brubsBot Ok! escolha uma opção entre pedra, papel e tesoura");
    String computerOption = getComputerOption();
    String playerOption = getPlayerOption();

    while (true) {
      if (!options.contains(playerOption)) {
        print("Por favor, digite uma opção válida");
        break;
      } else {
        if (playerOption == computerOption) {
          print("Empate!");
        } else if ((playerOption == "Pedra" ||
                playerOption == "pedra" && computerOption == "Tesoura" ||
                computerOption == "tesoura") ||
            (playerOption == "Papel" ||
                playerOption == "papel" && computerOption == "Pedra" ||
                computerOption == "pedra") ||
            (playerOption == "Tesoura" ||
                playerOption == "tesoura" && computerOption == "Papel" ||
                computerOption == "Papel")) {
          print("$brubsBot Você ganhou");
        } else {
          print("$brubsBot O computador ganhou");
        }
        print("$brubsBot Escolha do jogador: ${playerOption}");
        print("$brubsBot Escolah do computador: ${computerOption}");
      }
      print('$brubsBot Você deseja continuar jogando?');
      String anwser = stdin.readLineSync().toString();
      if (anwser == 'Nao' || anwser == 'nao') {
        break;
      }
    }
  }
}
