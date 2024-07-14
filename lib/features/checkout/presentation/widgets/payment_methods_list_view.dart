import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'payment_details_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  final List<String> items = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: PaymentDetailsMethodItem(
                  isActive: false, image: items[index]),
            );
          }),
    );
  }
}