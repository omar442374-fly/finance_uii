import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25.w),
          SafeArea(
            child: Row(
              children: [
                SizedBox(width: 19.w),
                ClipOval(
                  child: Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      Appassets.profilephoto,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 11.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back", style: AppStyles.grey12w500),
                    Text(
                      "Omar Morsi",
                      style: AppStyles.black16w600.copyWith(fontSize: 18.sp),
                    ),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(
                  Appassets.notification,
                  width: 48.w,
                  height: 48.h,
                ),
                SizedBox(width: 24.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
