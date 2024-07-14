import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'payment_item_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
          child: Column(
            children: [
              const Text('Thank you!', style: Styles.styleMedium25),
              Text('Your transaction was successful',
                  style: Styles.styleRegular20),
              const SizedBox(height: 42),
              const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
              const SizedBox(height: 20),
              const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
              const SizedBox(height: 20),
              const PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            ],
          ),
        ));
  }
}

