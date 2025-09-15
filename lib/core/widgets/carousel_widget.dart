import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  double currentPage = 0;
  final List<Widget> imageSliders = [
    CardItem(cardName: "X-Card", balance: 23400, cardNumber: 4545),
    CardItem(
      cardName: "M-Card",
      balance: 3209,
      cardNumber: 4545,
      color: Color(0xff4151A6),
    ),
    CardItem(
      cardName: "W-Card",
      balance: 14005,
      cardNumber: 7070,
      color: Color.fromARGB(255, 14, 18, 36),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 263.h,
              padEnds: true,
              viewportFraction: 0.65,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index.toDouble();
                });
              },
            ),

            items: imageSliders.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return item;
                },
              );
            }).toList(),
          ),
          SizedBox(height: 16.h),
          DotsIndicator(
            dotsCount: imageSliders.length,
            position: currentPage,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              spacing: EdgeInsets.symmetric(horizontal: 4.w),
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
