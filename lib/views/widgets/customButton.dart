import 'package:class_application/configs/constants.dart';
import 'package:class_application/views/widgets/customText.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  const CustomButton({
    super.key,
    required this.buttonLabel,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
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
