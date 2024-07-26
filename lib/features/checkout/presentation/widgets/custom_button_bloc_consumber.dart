import 'dart:developer';

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

            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId:
                    "ARAgsigPfGo321gYonTC5mVJjTJ3CAJPXoVEPpx9NWzrfWl0sxU_fkFEKA79sbt-LvMrXhh0cflYQ4P2",
                secretKey:
                    "EOFEPh-R0r_TZM4thJpv6HUvMTxjY-xJx9D-uvfvz4RxI3HajwiThw66k-_zhwfDgEkRcstoadJkzhTC",
                transactions: const [
                  {
                    "amount": {
                      "total": '100',
                      "currency": "USD",
                      "details": {
                        "subtotal": '100',
                        "shipping": '0',
                        "shipping_discount": 0
                      }
                    },
                    "description": "The payment transaction description.",
                    "item_list": {
                      "items": [
                        {
                          "name": "Apple",
                          "quantity": 4,
                          "price": '10',
                          "currency": "USD"
                        },
                        {
                          "name": "Pineapple",
                          "quantity": 5,
                          "price": '12',
                          "currency": "USD"
                        }
                      ],
                    }
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
          },
        );
      },
    );
  }
}
