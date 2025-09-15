import 'package:finance_ui/core/Style/app_fonts.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTextWidget extends StatelessWidget {
  String superText;
  String mainText;
  ProfileTextWidget({
    super.key,
    required this.superText,
    required this.mainText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(superText, style: AppStyles.grey15w500),
          SizedBox(height: 6.h),
          Text(
            mainText,
            style: AppStyles.black16w600.copyWith(
              fontFamily: AppFonts.secondfontname,
            ),
          ),
          SizedBox(height: 16.h),
          Divider(),
        ],
      ),
    );
  }
}
