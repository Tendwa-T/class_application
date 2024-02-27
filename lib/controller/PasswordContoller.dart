// ignore: file_names
import 'package:flutter/material.dart';

class PasswordTextEdit extends StatelessWidget {
  const PasswordTextEdit({
    super.key,
    required this.passController,
  });

  final TextEditingController passController;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: true,
        controller: passController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.lock),
        ));
  }
}
