import 'package:class_application/utils/routes.dart';
import 'package:class_application/views/pages/calculator.dart';
import 'package:class_application/views/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    initialRoute: "/",
    getPages: Routes.routes,
    debugShowCheckedModeBanner: false,
  ));
}


// Change to GetMaterialApp()
// Create a class and name your routes
// Define initialRoute and getPages in your main.dart
// Use Routes.route in GetPages

//login functionality
//Registration functionality
//Dashboard functionality
//Full navigation and routes
