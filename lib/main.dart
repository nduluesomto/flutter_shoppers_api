import 'package:flutter/material.dart';
import 'package:flutter_shopping_api_app/services/app_bindings.dart';
import 'package:flutter_shopping_api_app/views/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
