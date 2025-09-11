import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otpnumber extends StatelessWidget {
  Otpnumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 60.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff202955), width: 1.5.w),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
          style: AppStyles.primaryHeadLineStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
