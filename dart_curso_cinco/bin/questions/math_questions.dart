import 'dart:io';

class MathQuestions {
  String questions;
  bool isMathQuestions = false;
  String brubsBot = "BrubsBot: \n";
  MathQuestions(this.questions);

  bool isMath() {
    if ((questions.contains('Conta') ||
        questions.contains('conta') ||
        questions.contains('Matematica') ||
        questions.contains('matematica') ||
        questions.contains('soma') ||
        questions.contains('Soma') ||
        questions.contains('subtracao') ||
        questions.contains('Subtracao') ||
        questions.contains('divisao') ||
        questions.contains('Divisao') ||
        questions.contains('multiplicacao') ||
        questions.contains('Multiplicacao'))) {
      isMathQuestions = true;
    }
    return isMathQuestions;
  }

  calculator() {
    if ((questions.contains('Conta') ||
        questions.contains('conta') ||
        questions.contains('Matematica') ||
        questions.contains('matematica') ||
        questions.contains('soma') ||
        questions.contains('Soma') ||
        questions.contains('subtracao') ||
        questions.contains('Subtracao') ||
        questions.contains('divisao') ||
        questions.contains('Divisao') ||
        questions.contains('multiplicacao') ||
        questions.contains('Multiplicacao'))) {
      print(
          '$brubsBot: Olá! Por acaso você quer fazer alguma conta matemática??');
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        print('OK! agora me diga qual tipo de operação você precisa');
        String answer = stdin.readLineSync().toString();
        if (answer.contains('soma') || answer.contains('Soma')) {
          print('Me informe os números ao qual você deseja fazer a soma');
          String numberOne = stdin.readLineSync().toString();
          String numberTwo = stdin.readLineSync().toString();
          if (numberOne != null && numberTwo != null) {
            int n1 = int.parse(numberOne);
            int n2 = int.parse(numberTwo);
            print('$brubsBot: A soma de $n1 e $n2 é: ${n1 + n2}');
          }
        } else if (answer.contains('subtracao') ||
            answer.contains('Subtracao')) {
          print('Me informe os números ao qual você deseja fazer a subtração');
          String numberOne = stdin.readLineSync().toString();
          String numberTwo = stdin.readLineSync().toString();
          if (numberOne != null && numberTwo != null) {
            int n1 = int.parse(numberOne);
            int n2 = int.parse(numberTwo);
            print('$brubsBot: A subtração entre $n1 e $n2 é: ${n1 - n2}');
          }
        } else if (answer.contains('divisao') || answer.contains('Divisao')) {
          print('Me informe os números ao qual você deseja fazer a divisão');
          String numberOne = stdin.readLineSync().toString();
          String numberTwo = stdin.readLineSync().toString();
          if (numberOne != null && numberTwo != null) {
            int n1 = int.parse(numberOne);
            int n2 = int.parse(numberTwo);
            print('$brubsBot: A divisão entre $n1 e $n2 é: ${n1 / n2}');
          }
        } else if (answer.contains('multiplicacao') ||
            answer.contains('Multiplicacao')) {
          print(
              'Me informe os números ao qual você deseja fazer a Multiplicação');
          String numberOne = stdin.readLineSync().toString();
          String numberTwo = stdin.readLineSync().toString();
          if (numberOne != null && numberTwo != null) {
            int n1 = int.parse(numberOne);
            int n2 = int.parse(numberTwo);
            print('$brubsBot A Multiplicação entre $n1 e $n2 é: ${n1 * n2}');
          }
        } else {
          print(
              'Desculpe, sei apenas: soma, subtracao, divisao ou multiplicacao \n Escolha alguma dessas opções');
        }
      } else {
        print(
            'Me desculpe, entendi errado. Você pode fazer outra pergunta ou dizer adeus');
      }
    }
  }
}
