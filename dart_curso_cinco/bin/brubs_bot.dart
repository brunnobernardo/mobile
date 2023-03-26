import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String brubsBot = 'brubsBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotColck().brubsBotStream(1, 11);
  var subscriber = myStream.listen((event) {
    print('                    brubsbot is activated for $event seconds');
  }, onDone: () {
    print('brubsbot is finishing its work, ask the last question!');
    a = false;
  });

  print('-- Iniciando o KakoBOT, aguarde..--');
  await BotColck()
      .clock(2); // Passando o time p o metódo Future da class botClock
  print('KakoBOT:\n Oi :) \n Como posso ajudar?');
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
      await BotColck().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotColck().clock(2);
      print(brubsBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(brubsBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando KakoBOT--');
}
