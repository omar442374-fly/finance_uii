import 'package:finance_ui/Routing/app_routes.dart';
import 'package:finance_ui/features/ForgetPassword_Screen.dart';
import 'package:finance_ui/features/Login_Screen.dart';
import 'package:finance_ui/features/OTPVerification.dart';
import 'package:finance_ui/features/Password_Changed.dart';
import 'package:finance_ui/features/Register_Screen.dart';
import 'package:finance_ui/features/new_password.dart';
import 'package:finance_ui/features/onbording_Screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter mainRouter = GoRouter(
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text("No Screen Avilable"))),
    initialLocation: AppRoutes.homePage,
    routes: [
      GoRoute(
        path: AppRoutes.homePage,
        name: AppRoutes.homePage,
        builder: (context, state) => OnbordingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginPage,
        name: AppRoutes.loginPage,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerPage,
        name: AppRoutes.registerPage,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => ForgetpasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerification,
        name: AppRoutes.otpVerification,
        builder: (context, state) => Otpverification(),
      ),
      GoRoute(
        path: AppRoutes.newPassword,
        name: AppRoutes.newPassword,
        builder: (context, state) => NewPassword(),
      ),
      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => PasswordChanged(),
      ),
    ],
  );
}
