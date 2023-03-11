import 'dart:io';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
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
      print("Transação concluída com sucesso!");
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
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuário de ID '${e.idSender}', tentou enviar '${e.amount}', sendo que na sua conta tem apenas '${e.senderBalance}'");
  } on Exception {
    print("Algo inesperado deu errado =( ");
  }
}
