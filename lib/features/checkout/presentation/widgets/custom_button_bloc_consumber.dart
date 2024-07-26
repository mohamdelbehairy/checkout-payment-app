import 'dart:developer';

import 'package:checkout_payment_ui/core/utils/api_keys.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/amount_model.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/items_list_model.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/manager/payment/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../views/thank_you_view.dart';
import 'custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const ThankYouView()));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoading ? true : false,
          buttonName: 'Continue',
          onTap: () {
            // PaymentIntentInputModel paymentIntentInputModel =
            //     PaymentIntentInputModel(
            //         amount: '350',
            //         currency: 'USD',
            //         customerID: "cus_QWGBrAwUg8gRDV");
            // BlocProvider.of<PaymentCubit>(context)
            //     .makePayment(paymentIntentInputModel: paymentIntentInputModel);
            var transactionsData = getTransctionsData();
            exceutePaypalPayment(context, transactionsData);
          },
        );
      },
    );
  }

  void exceutePaypalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) transactionsData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientID,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": transactionsData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionsData.itemList.toJson()
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          debugPrint('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }

  ({AmountModel amount, ItemListModel itemList}) getTransctionsData() {
    var amount = AmountModel(
        total: "100",
        currency: "USD",
        details:
            DetailsModel(shipping: "0", shippingDiscount: 0, subtotal: "100"));
    List<OrderItemModel> orders = [
      OrderItemModel(currency: 'USD', name: 'Apple', price: '10', quantity: 4),
      OrderItemModel(
          currency: 'USD', name: 'Pineapple', price: '12', quantity: 5),
    ];
    var itemList = ItemListModel(orders: orders);
    return (amount: amount, itemList: itemList);
  }
}
