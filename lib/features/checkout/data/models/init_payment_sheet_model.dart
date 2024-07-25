class InitPaymentSheetModel {
  final String clientSecret, ephemeralKeySecret, customerId;

  InitPaymentSheetModel(
      {required this.clientSecret,
      required this.ephemeralKeySecret,
      required this.customerId});
}
