// ignore_for_file: file_names

import 'package:erp_ui/Pages/AskDoubtPage.dart';
import 'package:erp_ui/Pages/AssignmentPage.dart';
import 'package:erp_ui/Pages/AttendancePage.dart';
import 'package:erp_ui/Pages/ChangePasswordPage.dart';
import 'package:erp_ui/Pages/EventsPage.dart';
import 'package:erp_ui/Pages/FeesPage.dart';
import 'package:erp_ui/Pages/LoginPage.dart';
import 'package:erp_ui/Pages/ProfilePage.dart';
import 'package:erp_ui/Pages/SchoolGalery.dart';
import 'package:erp_ui/Pages/TimeTablePage.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/DashboardCard.dart';
import 'package:erp_ui/Widget/HomePageMainCard.dart';
import 'package:flutter/cupertino.dart';
import 'DateSheetPage.dart';
import 'package:flutter/material.dart';

import '../Util/AppColor.dart';
import '../Util/BigText.dart';

class HomePage extends StatelessWidget {
  final String userName;
  final String email;
  const HomePage({
    super.key,
    required this.email,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    List card = [
      [
        CupertinoIcons.book_solid,
        "Assignment",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const AssignmentPage();
            },
          ));
        }
      ],
      [
        CupertinoIcons.calendar_today,
        "Time Table",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const TimeTablePage();
            },
          ));
        }
      ],
      [
        Icons.fact_check_sharp,
        "Date Sheet",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const DateSheetPage();
            },
          ));
        }
      ],
      [
        Icons.help,
        "Ask Doubts",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const AskDoubt();
            },
          ));
        }
      ],
      [
        CupertinoIcons.photo,
        "School Gallery",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const SchoolGaleryPage();
            },
          ));
        }
      ],
      [
        CupertinoIcons.lock,
        "Change Password",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const ChangePasswordPage();
            },
          ));
        }
      ],
      [
        Icons.event_available,
        "Events",
        () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const EventsPage();
            },
          ));
        }
      ],
      [
        Icons.logout_outlined,
        "Logout",
        () {
          Navigator.pop(context);
        }
      ],
    ];
    String classNumber = "Class XI-B | Roll no: 04";
    String classYear = "2022 - 2023";
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.01,
                horizontal: width * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BigText(
                        text: "Hi $userName",
                        color: Colors.white,
                      ),
                      SizedBox(height: height * 0.01),
                      SmallText(
                        text: classNumber,
                        color: Colors.white,
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: SmallText(text: classYear),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ProfilePage(
                            email: email,
                            image: "lib/images/photo.jpg",
                            name: userName,
                            classNumber: classNumber,
                            classYear: classYear,
                          );
                        },
                      ));
                    },
                    child: Container(
                      width: width / 6,
                      height: height * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.4, color: Colors.white),
                        color: Colors.grey,
                        image: const DecorationImage(
                          image: AssetImage("lib/images/photo.jpg"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: SizedBox(
                width: width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 80,
                      bottom: 0,
                      child: Container(
                        width: width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(children: [
                          SizedBox(height: height * 0.15),
                          Expanded(
                            child: SizedBox(
                              width: width,
                              child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                itemCount: card.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return DashboardCard(
                                    icon: card[index][0],
                                    description: card[index][1],
                                    goTo: card[index][2],
                                  );
                                },
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomePageMainCard(
                          ontap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const AttendancePage();
                              },
                            ));
                          },
                          icon: CupertinoIcons.person_alt,
                          iconColor: const Color(0xffE9AE24),
                          text1: "80.39 %",
                          text2: "Attendance",
                          circleColor: const Color(0xffFCF3E2),
                        ),
                        HomePageMainCard(
                          ontap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const FeesPage();
                              },
                            ));
                          },
                          icon: CupertinoIcons.money_dollar,
                          iconColor: const Color(0xffDD50F2),
                          text1: "\$6400",
                          text2: "Fees Due",
                          circleColor: const Color(0xffFFD8FF),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
