import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  double? width, height;
  ProfileWidget({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: width ?? 48.w,
        height: height ?? 48.h,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset(Appassets.profilephoto, fit: BoxFit.cover),
      ),
    );
  }
}
