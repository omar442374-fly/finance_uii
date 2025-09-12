import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/widgets/Tow_styles_text.dart';
import 'package:finance_ui/core/widgets/back_arrow_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:finance_ui/core/widgets/primary_text_widget.dart';
import 'package:finance_ui/core/widgets/secondary_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otpverification extends StatefulWidget {
  const Otpverification({super.key});

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {
  late TextEditingController codeControler;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    codeControler = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BackArrowWidget(),
              PrimaryTextWidget(text: "OTP Verification"),
              SecondaryTextWidget(
                text:
                    "Enter the verification code we just sent on your email address.",
              ),
              SizedBox(height: 32.h),
              Padding(
                padding: EdgeInsets.only(left: 22.w, right: 22.w),
                child: PinCodeTextField(
                  controller: codeControler,
                  validator: (value) {
                      if (value!.length < 4) {
                        return "Enter the code";
                      }
                  },
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  enableActiveFill: true,
                  pinTheme: PinTheme(
                    fieldWidth: 70.w,

                    fieldHeight: 60.h,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8.r),
                    activeColor: AppColors.primaryColor,
                    activeFillColor: AppColors.backgroundColor,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: Color(0xffE8ECF4),
                    selectedColor: AppColors.blackColor,
                    selectedFillColor: AppColors.backgroundColor,
                  ),
                ),
              ),

              SizedBox(height: 38.h),
              PrimaryButtons(
                title: "Verify",
                onPress: () {
                  if (formkey.currentState!.validate()) {
                    GoRouter.of(context).push(AppRoutes.newPassword);
                  }
                },
              ),
              SizedBox(height: 352.h),
              TowStylesText(
                location: AppRoutes.forgetPassword,
                secondaryStyledText: " Resend",
                primaryStyledText: "Didn’t received code?",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
