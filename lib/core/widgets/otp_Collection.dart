import 'package:finance_ui/core/widgets/otp_numbers_widgets.dart';
import 'package:flutter/material.dart';

class OtpCollection extends StatelessWidget {
  const OtpCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Otpnumber(),
          SizedBox(width: 17),
          Otpnumber(),
          SizedBox(width: 17),
          Otpnumber(),
          SizedBox(width: 17),
          Otpnumber(),
          SizedBox(width: 17),
        ],
      ),
    );
  }
}
