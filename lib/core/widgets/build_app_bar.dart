  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';
import '../utils/styles.dart';

AppBar buildAppBar({ String? title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Text(title ?? "", style: Styles.styleMedium25),
      leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
    );
  }