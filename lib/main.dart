import 'package:flutter/material.dart';
import 'package:flutter_semester2/src/pages/register_page.dart';
import 'package:get/get.dart';

import 'src/pages/login_page.dart';

void main() {
  // Entry point of the Flutter application
  runApp(const MyApp());
}

/// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner in the top-right corner
      debugShowCheckedModeBanner: false,

      // Application title
      title: 'Flutter Demo',

      // Global theme configuration
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),

      // First screen of the app
      home: const RegisterPage(),
    );
  }
}
