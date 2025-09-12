import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TowStylesText extends StatelessWidget {
  String location;
  String secondaryStyledText;
  String primaryStyledText;
  TowStylesText({
    super.key,
    required this.location,
    required this.secondaryStyledText,
    required this.primaryStyledText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          primaryStyledText,
          style: AppStyles.Primary15w800.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        InkWell(
          onTap: () {
            GoRouter.of(context).pushReplacement(location);
          },
          child: Text(secondaryStyledText, style: AppStyles.Primary15w800),
        ),
      ],
    );
  }
}
