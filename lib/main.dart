import 'package:bmi_calculator/config/thems.dart';
import 'package:bmi_calculator/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI APP",
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
