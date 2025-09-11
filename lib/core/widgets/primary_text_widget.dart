import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextWidget extends StatelessWidget {
  String text;
  PrimaryTextWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 28.h, left: 22.w),
        child: Text(
          text,
          style: AppStyles.primaryHeadLineStyle,
        ),
      ),
    );
  }
}
