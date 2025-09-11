import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Appassets.succsessMark, width: 100, height: 100),
            SizedBox(height: 35.h),
            Text("Password Changed!", style: AppStyles.primaryHeadLineStyle),
            SizedBox(height: 8.h),
            Container(
              width: 226,
              height: 46,
              child: Text(
                "Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: AppStyles.secondryHeadLineStyle,
              ),
            ),
            SizedBox(height: 40.h),
            PrimaryButtons(
              title: "Back to login",
              onPress: () {
                GoRouter.of(context).pushReplacement(AppRoutes.loginPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
