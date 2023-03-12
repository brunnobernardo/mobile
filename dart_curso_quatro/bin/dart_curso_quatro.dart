import 'dart:io';
import 'dart:math';
import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  
  Account? myAccount =
      Account(name: 'Richart', balance: 200, isAuthenticated: true);

  // Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber % 2 == 0) {
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.runtimeType);

  // Teste forçado, não funciona
  //print(myAccount.balance);
  //print(myAccount.createdAt);

  // Conversão direta: Má Prática!
  //print(myAccount!.balance);
  //print(myAccount.createdAt!.day);

  // Conversão com if/eles "Tradicional": Boa prática
  if (myAccount != null) {
    print(myAccount.balance);
    if (myAccount.createdAt != null) {
      print(myAccount.createdAt!.day);
    }
  } else {
    print("Conta nula");
  }

  // Conversão com operador ternário, simplifica o if/else: Boa prática
  print(myAccount != null ? myAccount.balance : "Conta nula");

  // Chamada segura: Boa prática
  print(myAccount?.balance);
}

void main() {
  testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  // Account accountTest = Account(name: 'Brunno', balance: -60, isAuthenticated: true);

  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 600);
    if (result) {
      //print("Transação concluída com sucesso!");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente não é válido");
  } on ReciverIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idReciver}' do destinatário não é válido");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário remetente do ID '${e.idSender}' não está autenticado");
  } on ReciverNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário destinador de ID '${e.idReciver}' não está autenticado");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuário de ID '${e.idSender}', tentou enviar '${e.amount}', sendo que na sua conta tem apenas '${e.senderBalance}'");
  } on Exception {
    print("Algo inesperado deu errado =( ");
  }
}
