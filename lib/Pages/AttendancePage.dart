// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/AttendanceCard.dart';
import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: SmallText(
            text: "Attendance",
            color: AppColor.primaryColor,
            font: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(3000),
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    onDateChanged: (DateTime) {},
                  ),
                  const SizedBox(height: 20),
                  AttendanceCard(
                    color: Colors.red,
                    text: "Absent",
                    circleColor: Colors.red.shade100,
                  ),
                  const SizedBox(height: 20),
                  AttendanceCard(
                    color: Colors.green,
                    text: "Festival & Holiday",
                    circleColor: Colors.green.shade100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
