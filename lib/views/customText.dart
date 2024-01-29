import 'package:class_application/configs/constants.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  const CustomText({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: const TextStyle(
            color: appGrey, fontSize: 15, fontWeight: FontWeight.w700));
  }
}
