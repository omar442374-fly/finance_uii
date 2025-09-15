import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfeildWidget extends StatelessWidget {
  String? hinttext;
  TextInputType inputType;
  bool? isPassword;
  double? width;
  IconButton? suffix;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  TextfeildWidget({
    super.key,
    required this.inputType,
    this.hinttext,
    this.isPassword,
    this.suffix,
    this.width,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      child: TextFormField(
        keyboardType: inputType,
        controller: controller,
        validator: validator,
        obscureText: isPassword ?? false,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          hintText: hinttext ?? "No hinttext",
          hintStyle: AppStyles.grey15w500,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xffE8ECF4)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xffE8ECF4)),
          ),
          filled: true,
          fillColor: Color(0xffF7F8F9),
          suffixIcon: suffix,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
