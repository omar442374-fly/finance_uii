import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  String cardName;
  int cardNumber;
  int balance;
  Color? color;
  double? container1width;
  double? containerheight;
  double? layer1width;
  double? layer1height;
  double? layer2width;
  double? layer2height;
  double? textspacing1;

  CardItem({
    super.key,
    required this.cardName,
    required this.balance,
    required this.cardNumber,
    this.color,
    this.layer1width,
    this.layer1height,
    this.layer2width,
    this.layer2height,
    this.containerheight,
    this.container1width,
    this.textspacing1,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: containerheight ?? 263.h,
          width: container1width ?? 207.w,
          decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Appassets.layer1,
            width: layer1width ?? 200.w,
            height: layer1height ?? 200.h,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            Appassets.layer2,
            width: layer2width ?? 140.w,
            height: layer2height ?? 140.h,
          ),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Text(
                      cardName,
                      style: AppStyles.white15w600.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(Appassets.visa, width: 52.w, height: 16.h),
                    SizedBox(width: 40.w),
                  ],
                ),
                SizedBox(height: textspacing1 ?? 57.h),
                Text(
                  "Balance",
                  style: AppStyles.black14w500.copyWith(
                    color: Color(0xffFDFDFD),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "$balance EG",
                  style: AppStyles.white15w600.copyWith(fontSize: 24),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "****  $cardNumber",
                      style: AppStyles.black14w500.copyWith(
                        color: Color(0xffFDFDFD),
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "12/24",
                      style: AppStyles.white15w600.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 40.w),
                  ],
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
