void main() {
  
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Counting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The stream is finished');
  }

  myStream(1, 10);
  print('Main is finished');
}
