import 'package:class_application/configs/constants.dart';
import 'package:class_application/views/widgets/customButton.dart';
import 'package:class_application/views/widgets/customText.dart';
import 'package:class_application/views/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  SizedBox(
                    height: 100,
                    width: 200,
                    child:
                        Image(image: AssetImage('assets/images/F1-logo.png')),
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
              CustomTextField(
                controller: usernameController,
                hideText: false,
                icon: Icons.person,
                hint: "Enter your username",
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(label: 'Password'),
              CustomTextField(
                controller: passController,
                hideText: true,
                isPassword: true,
                icon: Icons.lock,
                hint: "Password",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CustomText(label: "No Account yet?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Password Reset");
                    },
                    child: const CustomText(
                      label: "Reset Password",
                      labelColor: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                buttonLabel: "Login",
                action: () {
                  Get.offAndToNamed("/home");
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(label: "No Account yet?"),
                  SizedBox(
                    width: 15,
                  ),
                  CustomText(
                    label: "Register",
                    labelColor: primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
