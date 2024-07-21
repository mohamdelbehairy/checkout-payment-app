class PaymentIntentInputModel {
  final String amount, currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {
      'amount': '${amount}00',
      'currency': currency,
    };
  }
}
