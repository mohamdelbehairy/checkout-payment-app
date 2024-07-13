import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Image.asset(Assets.imagesBacket),
          const SizedBox(height: 25),
          const OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(height: 5),
          const OrderInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(height: 5),
          const OrderInfoItem(title: 'Shipping', value: r'$8'),
        ],
      ),
    );
  }
}

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.styleRegular18),
        Text(value, style: Styles.styleRegular18)
      ],
    );
  }
}
