import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/widgets/Textfeild_widget.dart';
import 'package:finance_ui/core/widgets/back_arrow_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_text_widget.dart';
import 'package:finance_ui/core/widgets/secondary_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BackArrowWidget(),
          PrimaryTextWidget(text: "Create new password"),
          SizedBox(height: 10.h),
          SecondaryTextWidget(
            text:
                "Your new password must be unique from those previously used.",
          ),
          SizedBox(height: 32.h),
          TextfeildWidget(hinttext: "New Password"),
          SizedBox(height: 15.h),
          TextfeildWidget(hinttext: "Confirm Password"),
          SizedBox(height: 38.h),
          PrimaryButtons(
            title: "Reset Password",
            onPress: () {
              GoRouter.of(context).push(AppRoutes.passwordChanged);
            },
          ),
        ],
      ),
    );
  }
}
