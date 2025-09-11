import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/widgets/Textfeild_widget.dart';
import 'package:finance_ui/core/widgets/Tow_styles_text.dart';
import 'package:finance_ui/core/widgets/back_arrow_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_text_widget.dart';
import 'package:finance_ui/core/widgets/secondary_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetpasswordScreen extends StatefulWidget {
  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailControler = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              BackArrowWidget(),
              PrimaryTextWidget(text: "Forgot Password?"),
              SecondaryTextWidget(
                text:
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
              ),
              SizedBox(height: 32.h),
              TextfeildWidget(
                hinttext: "Enter your email",
                controller: emailControler,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Enter your email";
                  }
                },
              ),
              SizedBox(height: 38.h),
              PrimaryButtons(
                title: "Send Code",
                onPress: () {
                  if (formkey.currentState!.validate()) { GoRouter.of(context).push(AppRoutes.otpVerification);}
                 
                },
              ),
              SizedBox(height: 361.h),
              TowStylesText(
                location: AppRoutes.loginPage,
                secondaryStyledText: "Login",
                primaryStyledText: "Remember Password? ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
