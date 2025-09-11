import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_outlined_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              Appassets.onBoard,
              width: double.infinity,
              height: 570.h,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 21.h),
            PrimaryButtons(
              title: "Login",
              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginPage);
              },
            ),
            SizedBox(height: 15.h),
            PrimaryOutlinedButtons(
              title: "Register",
              onPress: () {
                GoRouter.of(context).push(AppRoutes.registerPage);
              },
            ),
            SizedBox(height: 46.h),
            InkWell(
              onTap: () {},
              child: Text(
                "Continue as a guest",
                style: AppStyles.Primary15w800.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
