import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtons extends StatelessWidget {
  String title;
  Color? textColor;
  Function()? onPress;
  PrimaryOutlinedButtons({super.key, required this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      height: 56.h,
      child: OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColors.primaryColor, width: 2.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? AppColors.primaryColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
