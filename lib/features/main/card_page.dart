import 'package:finance_ui/core/Style/AppAssets.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/card_item.dart';
import 'package:finance_ui/core/widgets/custom_home_top_widget.dart';
import 'package:finance_ui/core/widgets/list_of_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 27.h),
            CustomHomeTopWidget(text: "All Cards"),
            SizedBox(height: 24.h),
            ListOfCards(),
          ],
        ),
      ),
    );
  }
}
