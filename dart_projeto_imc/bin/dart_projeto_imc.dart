import 'dart:io';

void main() {
  print('Seja bem vindo ao calculador de IMC');

  print('Por gentileza, informe o seu nome');
  String? nome = stdin.readLineSync();

  print('Agora a idade');
  String? idadei = stdin.readLineSync();

  print('Agora a altura');
  String? alturai = stdin.readLineSync();

  print('E o peso');
  String? pesoi = stdin.readLineSync();


  if (idadei != null && alturai != null && pesoi != null) {
    int idade = int.parse(idadei);
    double altura = double.parse(alturai);
    double peso = double.parse(pesoi);
    double imc = peso / (altura * altura);
    String imcString = imc.toStringAsFixed(2);

    if (imc < 17) { // Muito abaixo do peso
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está muito abaixo do peso');
    } else if (imc <= 18.49) { // Abaixo do peso
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está abaixo do peso ');
    } else if (imc <= 24.99) { // Peso normal
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está no peso normal ');
    } else if (imc <= 29.99) { // Acima do peso
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está acima do peso ');
    } else if (imc <= 34.99) { // Obesidade I
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está com obesidade I ');
    } else if (imc <= 39.99) { // Obesidade II (severa)
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está com obesidade II (severa) ');
    } else if (imc >= 40) { // Obesidade III (mórbida)
      print('$nome, seu IMC(Índice de massa corporal) é: $imcString Você está com obesidade III (mórbida) ');
    }
  }
}
