import 'package:class_application/views/pages/calculator.dart';
import 'package:class_application/views/pages/home.dart';
import 'package:class_application/views/pages/login.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/home", page: () => Home()),
    GetPage(name: "/calculator", page: () => Calculator())
  ];
}
