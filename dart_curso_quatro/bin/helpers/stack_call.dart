void stackStart() {
  print('Started main');
  functioOne();
  print('Finished main');
}

void functioOne() {
  print('Started F01');
  try {
    functionTwo();
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  } finally {
    print('Chegou no finally');
  }
  print('Finished F01');
}

void functionTwo() {
  print('Started F02');
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('22');
  }
  print('Finished F02');
}
