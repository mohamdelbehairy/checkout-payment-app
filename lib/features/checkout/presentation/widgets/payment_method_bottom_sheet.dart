import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'payment_methods_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const PaymentMethodsListView(),
          const SizedBox(height: 32),
          CustomButton(
            buttonName: 'Continue',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
