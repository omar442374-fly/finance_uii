import 'package:finance_ui/core/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCards extends StatelessWidget {
  const ListOfCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            height: 179.h,
            child: CardItem(
              cardName: "X-Card",
              balance: 23400,
              cardNumber: 4545,
              container1width: 327.w,
              textspacing1: 18.h,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            height: 179.h,
            child: CardItem(
              cardName: "M-Card",
              balance: 3209,
              cardNumber: 4545,
              color: Color(0xff4151A6),
              container1width: 327.w,
              textspacing1: 18.h,
            ),
          ),
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            height: 179.h,
            child: CardItem(
              cardName: "W-Card",
              balance: 14005,
              cardNumber: 7070,
              color: Color.fromARGB(255, 14, 18, 36),
              container1width: 327.w,
              textspacing1: 18.h,
            ),
          ),
        ),
      ],
    );
  }
}
