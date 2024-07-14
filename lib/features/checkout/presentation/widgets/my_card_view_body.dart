import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/views/payment_details_view.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/widgets/total_price.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'order_info_item.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Expanded(child: Image.asset(Assets.imagesBacket)),
          const SizedBox(height: 25),
          const OrderInfoItem(title: 'Order Subtotal', value: r'$42.97'),
          const SizedBox(height: 5),
          const OrderInfoItem(title: 'Discount', value: r'$0'),
          const SizedBox(height: 5),
          const OrderInfoItem(title: 'Shipping', value: r'$8'),
          const Divider(height: 34, thickness: 2, color: Color(0xffC7C7C7)),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(height: 16),
          CustomButton(
            buttonName: 'Complete Payment',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentDetailsView()))),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
