// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/TimeTableCard.dart';
import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        leadingWidth: width / 2,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 15),
              const SmallText(
                text: "Timetable",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: height * 0.05),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.02),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SizedBox(
                  height: height,
                  width: width,
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        TimeTableCard(
                            moduleName: "Computer Science",
                            time: "08:15am - 9:00am",
                            teacher: "Yassine",
                            period: "period1"),
                        SizedBox(height: 20),
                        TimeTableCard(
                            moduleName: "Mathematics",
                            time: "09:15am - 10:00am",
                            teacher: "Samir",
                            period: "period2"),
                        SizedBox(height: 20),
                        TimeTableCard(
                            moduleName: "English",
                            time: "10:15am - 11:00am",
                            teacher: "Zakaria",
                            period: "period3"),
                        SizedBox(height: 20),
                        TimeTableCard(
                            moduleName: "Science",
                            time: "11:15am - 11:50am",
                            teacher: "Youssef",
                            period: "period4"),
                        SizedBox(height: 20),
                        TimeTableCard(
                            moduleName: "Social Study",
                            time: "12:15am - 1:00pm",
                            teacher: "Mehdi",
                            period: "period5"),
                        SizedBox(height: 20),
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
