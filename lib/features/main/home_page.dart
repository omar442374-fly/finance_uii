import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/carousel_widget.dart';
import 'package:finance_ui/core/widgets/custom_homepage_items.dart';
import 'package:finance_ui/core/widgets/profile_widget.dart';
import 'package:finance_ui/features/main/profile_page.dart';
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
                ProfileWidget(),
                SizedBox(width: 11.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back", style: AppStyles.grey12w500),
                    Text(
                      "Omar Morsi",
                      style: AppStyles.black16w600.copyWith(fontSize: 18),
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
          SizedBox(height: 18.h),
          CarouselWidget(),
          SizedBox(height: 18.h),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.sp,
                  crossAxisSpacing: 16.sp,
                ),
                children: [
                  CustomHomepageItems(
                    icon: Icons.telegram,
                    title: "Send money",
                    subtitle: "Take acc to acc",
                  ),
                  CustomHomepageItems(
                    icon: Icons.wallet,
                    title: "Pay the bill",
                    subtitle: "Lorem ipsum",
                  ),
                  CustomHomepageItems(
                    icon: Icons.people,
                    title: "Contact",
                    subtitle: "Contact",
                  ),
                  CustomHomepageItems(
                    icon: Icons.telegram,
                    title: "Request",
                    subtitle: "Lorem ipsum",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
