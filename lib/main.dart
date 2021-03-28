import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yora/controller/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      defaultTransition: Transition.rightToLeft,
      getPages: MyRouter.route,
      initialRoute: '/SignIn',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: Home(),
    );
  }
}
