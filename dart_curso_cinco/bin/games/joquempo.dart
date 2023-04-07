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
      print("$brubsBot Opa, por acaso você quer jogar Joquempo?");
      String answer = stdin.readLineSync().toString();
      if (answer == "Sim" || answer == "sim") {
        isJoquempoQuestion = true;
      }
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
    print('$brubsBot Seja bem vindo ao Joquempo!! \n');

    while (true) {
      print(' $brubsBot Escolha uma opção entre pedra, papel e tesoura');
      String playerOption = getPlayerOption();
      String computerOption = getComputerOption();

      if (!options.contains(playerOption)) {
        print(" $brubsBot Opção inválida =( ");
      } else {
        if ((playerOption == computerOption ||
            playerOption == "Pedra" && computerOption == "pedra" ||
            playerOption == "pedra" && computerOption == "Pedra" ||
            playerOption == "Tesoura" && computerOption == "tesoura" ||
            playerOption == "tesoura" && computerOption == "Tesoura" ||
            playerOption == "Papel" && computerOption == "papel" ||
            playerOption == "papel" && computerOption == "Papel")) {
          print('$brubsBot Empate');
        } else if (( playerOption == "Pedra" && computerOption == "tesoura" ||
        playerOption == "Pedra" && computerOption == "Tesoura" ||
        playerOption == "pedra" && computerOption == "tesoura" ||
        playerOption == "pedra" && computerOption == "Tesoura" ||

        playerOption == "Papel" && computerOption == "pedra" ||
        playerOption == "Papel" && computerOption == "Pedra" ||
        playerOption == "papel" && computerOption == "pedra" ||
        playerOption == "papel" && computerOption == "Pedra" ||

        playerOption == "Tesoura" && computerOption == "papel" ||
        playerOption == "Tesoura" && computerOption == "Papel" ||
        playerOption == "tesoura" && computerOption == "papel" ||
        playerOption == "tesoura" && computerOption == "Papel" )) {
          print("$brubsBot Parabéns, você ganhou");
        } else {
          print(" $brubsBot Computador ganhou");
        }
        print("$brubsBot Escolha do jogador: $playerOption");
        print("$brubsBot Escolha do computador: $computerOption");
      }
      print("$brubsBot Você deseja continuar jogando?");
      String answer = stdin.readLineSync().toString();
      if (answer == "Sim" || answer == "sim") {
      } else {
        break;
      }
    }
  }
}
