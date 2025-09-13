import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/features/main/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomePage(),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 94, 0),
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.amber,
    ),
    Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 0, 0, 0),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        backgroundColor: AppColors.backgroundColor,
        selectedLabelStyle: AppStyles.Primary15w800.copyWith(fontSize: 13),

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet, size: 30),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded, size: 45),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics, size: 30),
            label: "Statistic",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
