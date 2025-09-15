import 'package:finance_ui/core/Style/app_colors.dart';
import 'package:finance_ui/core/Style/app_styles.dart';
import 'package:finance_ui/core/widgets/Textfeild_widget.dart';
import 'package:finance_ui/core/widgets/custom_home_top_widget.dart';
import 'package:finance_ui/core/widgets/primary_elevated_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  late TextEditingController amountController;
  late TextEditingController reciverCardNumberController;
  late TextEditingController recivernameController;
  late TextEditingController notesController;
  final formkey = GlobalKey<FormState>();
  @override
  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
    recivernameController = TextEditingController();
    reciverCardNumberController = TextEditingController();
    notesController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 27.h),
              CustomHomeTopWidget(text: "Add Transaction"),
              SizedBox(height: 20.h),
              TextfeildWidget(
                hinttext: "\$  Amount",
                inputType: TextInputType.number,
                controller: amountController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Enter the anount , please";
                  }
                },
              ),

              SizedBox(height: 20.h),
              TextfeildWidget(
                inputType: TextInputType.text,
                hinttext: "Reciver Name",
                controller: recivernameController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Enter the Reciver Name , please";
                  }
                },
              ),
              SizedBox(height: 20.h),
              TextfeildWidget(
                inputType: TextInputType.phone,
                hinttext: "Phone Number please",
                controller: reciverCardNumberController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Enter the Card Number please , please";
                  }
                },
              ),
              SizedBox(height: 20.h),
              TextfeildWidget(
                controller: notesController,
                hinttext: "Notes (optional)",
                inputType: TextInputType.text,
              ),
              SizedBox(height: 20.h),
              PrimaryButtons(
                title: "Send",
                onPress: () {
                  if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Transaction Added!",
                          style: AppStyles.white15w600,
                        ),
                        backgroundColor: AppColors.primaryColor,
                      ),
                    );
                    recivernameController.text = "";
                    amountController.text = "";
                    reciverCardNumberController.text = "";
                    notesController.text = "";
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
