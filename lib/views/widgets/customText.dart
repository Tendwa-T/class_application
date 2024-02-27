// ignore_for_file: file_names

import 'package:class_application/configs/constants.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final Color labelColor;
  final double uFontSize;
  const CustomText({
    super.key,
    required this.label,
    this.labelColor = appGrey,
    this.uFontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
            color: labelColor,
            fontSize: uFontSize,
            fontWeight: FontWeight.w700));
  }
}
