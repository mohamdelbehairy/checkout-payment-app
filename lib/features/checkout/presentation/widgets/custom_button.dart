import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onTap, required this.buttonName});
  final Function() onTap;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: const Color(0xff34A853),
            borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(buttonName, style: Styles.styleMedium22)),
      ),
    );
  }
}
