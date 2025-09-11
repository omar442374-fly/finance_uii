import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtons extends StatelessWidget {
  String title;
  Color? color;
  Color? textColor;
  TextStyle? primarystyle;
  Function()? onPress;
  PrimaryButtons({
    super.key,
    required this.title,
    this.color,
    this.primarystyle,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? AppColors.backgroundColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
