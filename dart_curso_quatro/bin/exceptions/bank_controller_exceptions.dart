class SenderIdInvalidException implements Exception {
  static const String report = 'SenderIdInavlidException';
  String idSender;

  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\nidSender: $idSender";
  }
}

class ReciverIdInvalidException implements Exception {
  static const String report = 'ReciverIdInvalidException';
  String idReciver;
  ReciverIdInvalidException({required this.idReciver});

  @override
  String toString() {
    return "$report\nidReciver: $idReciver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = 'SenderNotAuthenticatedException';
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "$report\nidReciver: $idSender";
  }
}

class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = 'SenderBalanceLowerThanAmountException';
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  @override
  String toString() {
    return '$report\nidSender: $idSender\nSender Balance: $senderBalance\nAmount: $amount';
  }
}

class ReciverNotAuthenticatedException implements Exception {
  static const String report = "ReciverNotAuthenticatedException";
  String idReciver;
  
  ReciverNotAuthenticatedException(
      {required this.idReciver});

  @override
  String toString() {
    return "$report\nidReciver: $idReciver";
  }
}
