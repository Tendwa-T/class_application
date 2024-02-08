import 'package:class_application/configs/constants.dart';
import 'package:class_application/views/customText.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  const CustomButton(
      {super.key, required this.usernameController, required this.buttonLabel});

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Button clicked ${usernameController.text}");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        elevation: 4,
        padding: EdgeInsets.all(15),
        shadowColor: primaryColor,
      ),
      child: CustomText(
        label: buttonLabel,
        labelColor: appWhite,
      ),
    );
  }
}
