import 'package:finance_ui/core/widgets/profile_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileTextWidget(superText: 'Full Name', mainText: 'Omar Morsi'),
          SizedBox(height: 16.h),
          ProfileTextWidget(
            superText: 'Email',
            mainText: 'omar.morsi.2024@aiu.edu.eg',
          ),
          SizedBox(height: 16.h),
          ProfileTextWidget(
            superText: 'Phone Number',
            mainText: '+201067998541',
          ),
          SizedBox(height: 16.h),
          ProfileTextWidget(superText: 'Address', mainText: 'Cairo,Egypt'),
        ],
      ),
    );
  }
}
