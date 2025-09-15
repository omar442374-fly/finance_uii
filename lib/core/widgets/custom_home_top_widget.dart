import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeTopWidget extends StatelessWidget {
  final String text;
  final String? asset;
  const CustomHomeTopWidget({super.key, required this.text, this.asset});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SizedBox(
          height: 56.h, 
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(Appassets.homeBackArrow),
              ),
              Center(child: Text(text, style: AppStyles.primarymainpageStyle)),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(asset ?? Appassets.threePoints),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
