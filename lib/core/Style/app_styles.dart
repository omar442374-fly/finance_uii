import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class AppStyles {
  static TextStyle primaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle move15w500 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static TextStyle secondryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );
  static TextStyle black16w600 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle black14w500 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
  static TextStyle Primary15w800 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.underPageColor,
  );
  static TextStyle grey12w500 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle grey15w500 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle white15w600 = TextStyle(
    fontFamily: AppFonts.mainfontname,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.backgroundColor,
  );
}
