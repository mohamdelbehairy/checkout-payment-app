import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Card',style: Styles.styleMedium25),
      ),
    );
  }
}