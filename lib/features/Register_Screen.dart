import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/widgets/Social_Medial_login.dart';
import 'package:finance_ui/core/widgets/Textfeild_widget.dart';
import 'package:finance_ui/core/widgets/Tow_styles_text.dart';
import 'package:finance_ui/core/widgets/back_arrow_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_text_widget.dart';
import 'package:finance_ui/core/widgets/textbetweenlinewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController usernameControler;
  late TextEditingController emailControler;
  late TextEditingController passwordControler;
  late TextEditingController confirmPasswordControler;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameControler = TextEditingController();
    emailControler = TextEditingController();
    passwordControler = TextEditingController();
    confirmPasswordControler = TextEditingController();
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
              PrimaryTextWidget(text: "Hello! Register to get started"),
              SizedBox(height: 32.h),
              TextfeildWidget(
                hinttext: "Username",
                controller: usernameControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your username";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              TextfeildWidget(
                hinttext: "Email",
                controller: emailControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              TextfeildWidget(
                hinttext: "Password",
                controller: passwordControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  }
                  if (value.length < 8) {
                    return "Password must be at least 8 charchters";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              TextfeildWidget(
                hinttext: "Confirm password",
                controller: confirmPasswordControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Confirm your password ";
                  }
                  if (confirmPasswordControler.text != passwordControler.text) {
                    return "Pasword must match";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30.h),
              PrimaryButtons(
                title: "Register",
                onPress: () {
                  if (formkey.currentState!.validate()) {}
                },
              ),
              Textbetweenlinewidget(text: "Or Register with"),
              SocialMedialLogin(),
              SizedBox(height: 40.h),
              TowStylesText(
                location: AppRoutes.loginPage,
                primaryStyledText: "Already have an account? ",
                secondaryStyledText: "Login Now",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
