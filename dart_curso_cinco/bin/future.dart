import 'dart:async';

void main() {
  /*Future myFuture = Future(() {
    print('Going back to the future');
    return 21;
  }).then((value) => print('The value is $value'));
  */

  Future<int> myFutureFunc() async {
    //async torna o future realmente assincrono
    print('I have a function in the future');
    await Future.delayed(Duration(seconds: 5));
    throw Exception(); // await faz a função esperar os 5 segundos para retornar o valor
    return 12;
  }

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      } 
      print('I have a Functional Function');
      await Future.delayed(Duration(seconds: 5));
      return 42;
    } catch (e) {
      print('An error occured: $e');
      return 42;
    } finally {
      print('The future is finally error');
    }
  }

  /* myFutureFunc()
      .then((value) => print('My function value is $value'))
      .onError((error, stackTrace) => print('An error occurred'))
      .whenComplete(() => print('The future is over.'));
  */
  myFutureErrorFunc(2, 1).then((value) => print('The value is: $value'));
  print('Done with main');
}
