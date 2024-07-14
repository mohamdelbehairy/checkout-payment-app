import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 62,
          width: 103,
          decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xff34A853)),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff34A853),
                    blurRadius: 4.0,
                    offset: Offset(0, 0),
                    spreadRadius: 0.0)
              ]),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child:
                Center(child: SvgPicture.asset(Assets.imagesCard, height: 30)),
          ),
        )
      ],
    );
  }
}
