import 'package:class_application/configs/constants.dart';
import 'package:class_application/views/PasswordContoller.dart';
import 'package:class_application/views/UtextEditController.dart';
import 'package:class_application/views/customText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        backgroundColor: primaryColor,
        foregroundColor: appWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: Column(
          children: [
            const CustomText(
              label: 'Username',
            ),
            TextEdit(usernameController: usernameController),
            const CustomText(label: 'Password'),
            PasswordTextEdit(passController: passController)
          ],
        ),
      ),
    );
  }
}
