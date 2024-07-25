import 'package:checkout_payment_ui/core/utils/api_keys.dart';
import 'package:checkout_payment_ui/core/utils/api_service.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/init_payment_sheet_model.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripService {
  final ApiService apiService = ApiService();
  Future<PatmentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey,
        contentType: Headers.formUrlEncodedContentType);

    var paymentIntentModel = PatmentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future<void> initPaymentSheet(
      {required InitPaymentSheetModel initPaymentSheetModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: initPaymentSheetModel.clientSecret,
            merchantDisplayName: 'Mohamed Elbehairy',
            customerEphemeralKeySecret:
                initPaymentSheetModel.ephemeralKeySecret,
            customerId: initPaymentSheetModel.customerId));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var epemeralKeyModel =
        await createEphemeralKey(customID: paymentIntentInputModel.customerID);

    var initPaymentSheetModel = InitPaymentSheetModel(
        clientSecret: paymentIntentModel.clientSecret!,
        ephemeralKeySecret: epemeralKeyModel.secret!,
        customerId: paymentIntentInputModel.customerID);

    await initPaymentSheet(initPaymentSheetModel: initPaymentSheetModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customID}) async {
    var response = await apiService.post(
        body: {"customer": customID},
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          "Authorization": "Bearer ${ApiKeys.secretKey}",
          "Stripe-Version": "2024-06-20"
        });

    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
