import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/widgets/custom_home_top_widget.dart';
import 'package:finance_ui/core/widgets/profile_info_widget.dart';
import 'package:finance_ui/core/widgets/profile_text_widget.dart';
import 'package:finance_ui/core/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 27.h),
          CustomHomeTopWidget(text: "My Profile", asset: Appassets.edit),
          SizedBox(height: 39.h),
          ProfileWidget(width: 100.w, height: 100.h),
          SizedBox(height: 9.h),
          ProfileInfoWidget(),
        ],
      ),
    );
  }
}
