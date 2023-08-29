// ignore_for_file: prefer_const_constructors, file_names

import 'package:erp_ui/Pages/HomePage.dart';
import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/BigText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/DefaultButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool hiddenPass = true;
  IconData icon = CupertinoIcons.eye_slash_fill;

  void showPassword() {
    setState(() {
      hiddenPass = !hiddenPass;
      if (hiddenPass) {
        icon = CupertinoIcons.eye_slash_fill;
      } else {
        icon = CupertinoIcons.eye_fill;
      }
    });
  }

  void signIn() {
    if (emailController.text.toString() != "" &&
        passwordController.text.toString() != "" &&
        nameController.text.toString() != "") {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return HomePage(
            userName: nameController.text.toString(),
            email: emailController.text.toString(),
          );
        },
      ));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const CupertinoAlertDialog(
            title: Text("The email And Password are required"),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                width: width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: height / 4,
                            width: width / 2,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/images/splashIcon.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BigText(
                                text: "Hi Student ",
                                color: Colors.white,
                                font: FontWeight.bold,
                              ),
                              SmallText(
                                text: "Sign in to Continue",
                                color: Colors.grey.shade300,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.04),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SmallText(
                              text: "Full Name",
                              color: Colors.grey,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                    hintText: "Ilias Bis",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade800),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SmallText(
                              text: "Mobile Number/Email",
                              color: Colors.grey,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: TextField(
                                readOnly: false,
                                controller: emailController,
                                decoration: InputDecoration(
                                    hintText: "Bissoufailiasjob@gmail.com",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade800),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SmallText(
                              text: "Password",
                              color: Colors.grey,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: TextField(
                                controller: passwordController,
                                obscureText: hiddenPass,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(icon),
                                      onPressed: showPassword,
                                    ),
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade800),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        DefaultButton(
                          ontap: signIn,
                          icon: Icons.arrow_forward_rounded,
                          text: "Sign In",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
