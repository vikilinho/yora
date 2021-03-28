import 'package:get/get.dart';
import 'package:yora/views/home.dart';
import 'package:yora/views/signIn.dart';

class MyRouter {
  static final route = [
    GetPage(
      name: '/SignIn',
      page: () => SignIn(),
    ),
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
  ];
}
