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
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 300,
                  child: Image(image: AssetImage('assets/images/F1-logo.png')),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  label: 'Login Screen',
                  labelColor: primaryColor,
                  uFontSize: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
