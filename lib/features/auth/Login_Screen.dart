import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/Social_Medial_login.dart';
import 'package:finance_ui/core/widgets/Textfeild_widget.dart';
import 'package:finance_ui/core/widgets/Tow_styles_text.dart';
import 'package:finance_ui/core/widgets/back_arrow_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_text_widget.dart';
import 'package:finance_ui/core/widgets/textbetweenlinewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPass = false;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            // aligns children to the left
            children: <Widget>[
              BackArrowWidget(),
              PrimaryTextWidget(text: "Welcome back! \nAgain!"),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 32.h),
                    TextfeildWidget(
                      inputType: TextInputType.emailAddress,
                      hinttext: "Enter your email",
                      controller: emailController,
                      validator: (vlue) {
                        if (vlue!.isEmpty) {
                          return "Enter your email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15.h),
                    TextfeildWidget(
                      inputType: TextInputType.text,
                      controller: passwordController,
                      validator: (vlue) {
                        if (vlue!.isEmpty) {
                          return "Enter your password";
                        }
                        if (vlue.length < 8) {
                          return "Password must be at least 8 charchters";
                        }
                        return null;
                      },
                      hinttext: "Enter your password",
                      isPassword: isPass,
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isPass = !isPass;
                          });
                        },
                        icon: Icon(
                          isPass
                              ? Icons.visibility_off_sharp
                              : Icons.remove_red_eye_sharp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, right: 22.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.forgetPassword);
                      },
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: AppStyles.grey15w500.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 21.h),
              Center(
                child: Column(
                  children: [
                    PrimaryButtons(
                      title: "Login",
                      onPress: () {
                        if (formkey.currentState!.validate()) {
                          GoRouter.of(context).push(AppRoutes.mainscreen);
                        }
                      },
                    ),
                    Textbetweenlinewidget(text: "Or Login with"),
                    SocialMedialLogin(),
                    SizedBox(height: 120.h),
                    TowStylesText(
                      location: AppRoutes.registerPage,
                      secondaryStyledText: "Register Now",
                      primaryStyledText: "Don’t have an account? ",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
