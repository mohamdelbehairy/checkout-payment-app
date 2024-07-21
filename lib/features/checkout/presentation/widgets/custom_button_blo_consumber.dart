import 'package:checkout_payment_ui/features/checkout/presentation/manager/payment/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is PaymentLoading ? true : false,
          buttonName: 'Continue',
          onTap: () {},
        );
      },
    );
  }
}
