import 'package:checkout_payment_ui/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsMethodItem extends StatelessWidget {
  const PaymentDetailsMethodItem({super.key, this.isActive = false});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: 62,
      width: 103,
      decoration: BoxDecoration(
          border: Border.all(
              width: isActive ? 1.5 : 1.0,
              color:
                  isActive ? const Color(0xff34A853) : Colors.grey),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: isActive ?  const Color(0xff34A853) : Colors.white,
                blurRadius: isActive ? 4.0 : 0.0,
                offset: const Offset(0, 0),
                spreadRadius: 0.0)
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: SvgPicture.asset(Assets.imagesCard, height: 30)),
      ),
    );
  }
}
