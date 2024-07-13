import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:checkout_payment_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/my_card_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('My Card', style: Styles.styleMedium25),
        leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
      ),
      body: const MyCardViewBody(),
    );
  }
}
