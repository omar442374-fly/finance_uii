import 'package:finance_ui/core/widgets/custom_home_top_widget.dart';
import 'package:finance_ui/core/widgets/custom_homepage_items.dart';
import 'package:finance_ui/core/widgets/statistics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatistcsPage extends StatefulWidget {
  const StatistcsPage({super.key});

  @override
  State<StatistcsPage> createState() => _StatistcsPageState();
}

class _StatistcsPageState extends State<StatistcsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 27.h),
          CustomHomeTopWidget(text: "Reload"),
          StatisticsScreen(),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomHomepageItems(
                icon: Icons.download,
                title: "15000 EG",
                subtitle: "Income",
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              SizedBox(width: 15.w),
              CustomHomepageItems(
                icon: Icons.upload,
                title: "35000 EG",
                subtitle: "Outcome",
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
