// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextEdit extends StatelessWidget {
  const TextEdit({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: usernameController,
    );
  }
}
