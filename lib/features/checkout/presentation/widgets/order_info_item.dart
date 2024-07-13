import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

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
