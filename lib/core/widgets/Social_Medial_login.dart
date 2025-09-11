import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/widgets/CustomIconButtonidget.dart';
import 'package:flutter/material.dart';

class SocialMedialLogin extends StatelessWidget {
  SocialMedialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomIconbuttonWidget(path: Appassets.facebook, onPress: () {}),
        CustomIconbuttonWidget(path: Appassets.google, onPress: () {}),
        CustomIconbuttonWidget(path: Appassets.apple, onPress: () {}),
      ],
    );
  }
}
