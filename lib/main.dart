import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x/views/login_screen.dart';
import 'package:get_x/views/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Auth',
      theme: ThemeData(
        primaryColor: Color(0xFF493AD5),
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
        useMaterial3: true,
      ),
      home: SignUpScreen(),
    );
  }
}

