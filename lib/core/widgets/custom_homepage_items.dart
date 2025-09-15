import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomepageItems extends StatelessWidget {
  IconData icon;
  String title;
  String subtitle;
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment? crossAxisAlignment;
  CustomHomepageItems({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142.h,
      width: 156.w,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: AppColors.secondaryColor),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: [
            Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, size: 35, color: AppColors.primaryColor),
            ),
            SizedBox(height: 12.h),
            Text(title, style: AppStyles.black16w600),
            SizedBox(height: 4.h),
            Text(subtitle, style: AppStyles.grey12w500),
          ],
        ),
      ),
    );
  }
}
