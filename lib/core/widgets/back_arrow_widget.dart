import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackArrowWidget extends StatelessWidget {
  const BackArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () {
          GoRouter.of(context).pop();
        },
        child: Padding(
          padding: EdgeInsets.only(left: 22.w, top: 40.h),
          child: Image.asset(Appassets.backArrow, width: 45.w, height: 45.h),
        ),
      ),
    );
  }
}
