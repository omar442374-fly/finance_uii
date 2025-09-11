import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textbetweenlinewidget extends StatelessWidget {
  String text;
  Textbetweenlinewidget( {super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35.h, left: 22.w, right: 22.w),
      child: Row(
        children: [
          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 12.w),
            child: Text(
              text,
              style: AppStyles.grey15w500.copyWith(
                color: Color(0xff6A707C),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
        ],
      ),
    );
  }
}
