import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'payment_details_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> items = const [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];
  int activeIndex = 0;
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                child: PaymentDetailsMethodItem(
                    isActive: activeIndex == index, image: items[index]),
              ),
            );
          }),
    );
  }
}
