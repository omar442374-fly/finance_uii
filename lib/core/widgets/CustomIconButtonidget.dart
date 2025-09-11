import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconbuttonWidget extends StatelessWidget {
  String path;
  VoidCallback? onPress;

  CustomIconbuttonWidget({super.key, required this.path, this.onPress});
  @override
  Widget build(Object context) {
    return Padding(
      padding: EdgeInsets.only(top: 22.h, right: 8.w, left: 8.w),
      child: InkWell(
        onTap: onPress,
        child: Container(
          width: 105.w,
          height: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: BoxBorder.all(color: AppColors.greyColor, width: 1.w),
          ),
          child: Center(
            child: SvgPicture.asset(path, width: 26.w, height: 26.h),
          ),
        ),
      ),
    );
  }
}
