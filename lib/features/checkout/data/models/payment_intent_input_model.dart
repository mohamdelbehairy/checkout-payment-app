class PaymentIntentInputModel {
  final String amount, currency, customerID;

  PaymentIntentInputModel(
      {required this.amount, required this.currency, required this.customerID});

  Map<String, dynamic> toJson() {
    return {
      'amount': '${amount}00',
      'currency': currency,
      'customer': customerID
    };
  }
}
