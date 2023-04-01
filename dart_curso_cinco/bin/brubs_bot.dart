import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/math_questions.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String brubsBot = 'brubsBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotColck().brubsBotStream(1, 11);
  var subscriber = myStream.listen((event) {
    print('                    brubsBOT está ativo a: $event segundos');
  }, onDone: () {
    print('brubsBOT está sendo finalizado, faça a ultima pergunta!');
    a = false;
  });

  print('-- Iniciando o brubsBOT, aguarde..--');
  await BotColck()
      .clock(2); // Passando o time p o metódo Future da class botClock
  print('brubsBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotColck().clock(1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(brubsBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
      await BotColck().clock(1);
    } else if (GoodManners(usuario).isThisManners()) {
      GoodManners(usuario).goodManners();
      await BotColck().clock(1);
    } else if (MathQuestions(usuario).isMath()) {
      MathQuestions(usuario).calculator();
      await BotColck().clock(1);
    } else if (false) {
      // Para adicionar outras perguntas
    } else {
      await BotColck().clock(2);
      print(brubsBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(brubsBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando brubsBOT--');
}
