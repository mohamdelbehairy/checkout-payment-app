import 'package:checkout_payment_ui/features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';
import 'payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
                formKey: formKey, autovalidateMode: autovalidateMode)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: CustomButton(
                  buttonName: 'Pay',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThankYouView()));
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              )),
        ),
      ],
    );
  }
}
