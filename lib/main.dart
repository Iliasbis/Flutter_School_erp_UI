import 'package:erp_ui/Util/AppColor.dart';
import 'package:flutter/material.dart';

import 'Pages/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.primaryColor,
      ),
      home: const SplashPage(),
    );
  }
}
