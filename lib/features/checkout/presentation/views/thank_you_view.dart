import 'package:checkout_payment_ui/core/widgets/build_app_bar.dart';
import 'package:checkout_payment_ui/features/checkout/presentation/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const ThankYouViewBody()),
    );
  }
}