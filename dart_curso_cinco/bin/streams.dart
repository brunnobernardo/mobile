import 'dart:async';
import 'dart:math';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The stream is finished');
  }

  var brubsStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscriber = brubsStream.listen((event) {
    if (event.isEven) {
      // Para os números pares 'Evens'
      print('This number is Even!');
    }
  }, onError: (e) {
    // Semelhante ao catch
    print('An error happend: $e');
  }, onDone: () {
    // Semelhante ao finally
    print('The subscriber is gone.');
  });
  brubsStream.map((event) => 'Subscriber 2 wartching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');
  mySubscriber.resume();
  print('Stream resumed');
  mySubscriber.cancel();
  print('Stream canceled');

  print('Main is Finished');
}
