import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        Image.asset(Assets.imagesBacket),
      ],
    );
  }
}
