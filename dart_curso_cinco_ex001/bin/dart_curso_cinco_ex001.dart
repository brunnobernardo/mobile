import 'package:test/test.dart';

import 'timing/time.dart';
import 'dart:io';

void main() async {
  String music = '';
  Future myFutureObject = Future(() {
    print('Hello, I am a future test');
    return 18;
  }).then(
      (value) => print('There are a programmer here, with $value years old '));
  try {
    await Time().onTime();
    print('Chose a internationaly music or brazilian');
    music = stdin.readLineSync().toString();
    if (music == 'internationaly') {
      print('Music: Creeping \n Singer: The weekend ');
      await Time().onTime();
      print("I don't wanna know, if you're playing me");
      await Time().onTime();
      print("Keep it on the low");
      await Time().onTime();
      print("Cause my heart can't take it anymore");
      await Time().onTime();
      print("And if you creeping, please don't let it show");
      await Time().onTime();
      print("Oh baby, I don't wanna know");
    } else if (music == 'brazilian') {
      print('Music: Gelo no Copo  \n Singer: Orochi ');
      await Time().onTime();
      print("Primeiro me odeia");
      await Time().onTime();
      print("Depois diz que ama");
      await Time().onTime();
      print("Primeiro discute, depois vem pra cama");
      await Time().onTime();
      print("E do nada ela me diz pra eu seguir a minha vida");
      await Time().onTime();
      print("Mas me liga na mesma semana");
    } else {
      throw Exception();
    }
  } catch (e) {
    print('Please, chose one of the valid options');
  } finally {
    print('Thanks for time, come back forever');
  }
}
