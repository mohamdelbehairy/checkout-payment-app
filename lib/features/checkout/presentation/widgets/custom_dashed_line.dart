import 'package:flutter/material.dart';

class CustoDashedLine extends StatelessWidget {
  const CustoDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          30,
          (index) => Expanded(
                child: Container(
                  height: 2,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  color: const Color(0xffB8B8B8),
                ),
              )),
    );
  }
}
