// ignore_for_file: file_names

import 'package:erp_ui/Pages/LoginPage.dart';
import 'package:erp_ui/Util/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                "School",
                style: GoogleFonts.nunito(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "ERP",
                style: GoogleFonts.nunito(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Container(
            width: width,
            height: height / 3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/splashIcon.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
