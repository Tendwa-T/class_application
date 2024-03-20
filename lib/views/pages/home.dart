import 'package:class_application/configs/constants.dart';
import 'package:class_application/controller/home_controller.dart';
import 'package:class_application/views/pages/calculator.dart';
import 'package:class_application/views/pages/fetchDataPage.dart';
import 'package:class_application/views/pages/login.dart';
import 'package:class_application/views/pages/students.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  HomeController _controller = Get.put(HomeController());

  var screens = [
    Text(
      usernameController.text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    ),
    Calculator(),
    const FetchPage(),
    Student()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Row(
            children: [
              Icon(Icons.handshake),
              Text("Hello Tendwa"),
            ],
          )),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: primaryColor,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: primaryColor,
        items: const [
          Icon(Icons.home),
          Icon(Icons.calculate),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
        onTap: (value) {
          _controller.updateSelectedPage(value);
        },
        animationDuration: const Duration(milliseconds: 200),
      ),
      body: Obx(() => Center(child: screens[_controller.selectedPage.value])),
    );
  }
}
