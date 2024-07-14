import 'package:flutter/material.dart';

import '../../../../core/widgets/build_app_bar.dart';
import '../widgets/my_card_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Card'),
      body: const MyCardViewBody(),
    );
  }


}
