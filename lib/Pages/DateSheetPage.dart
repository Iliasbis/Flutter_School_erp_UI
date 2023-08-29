import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/BigText.dart';
import 'package:erp_ui/Util/MediumText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/DateSheetCard.dart';
import 'package:flutter/material.dart';

class DateSheetPage extends StatelessWidget {
  const DateSheetPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List dateSheetList = [
      ["Math", "Monday"],
      ["Physic", "Tuesday"],
      ["JavaScript", "Wednesday"],
      ["OOP", "Thursday"],
      ["Alghoritm", "Friday"],
      ["DataBase", "Saturday"],
      ["Math", "Monday"],
      ["Physic", "Tuesday"],
      ["JavaScript", "Wednesday"],
      ["OOP", "Thursday"],
      ["Alghoritm", "Friday"],
      ["DataBase", "Saturday"],
      ["Math", "Monday"],
      ["Physic", "Tuesday"],
      ["JavaScript", "Wednesday"],
      ["OOP", "Thursday"],
      ["Alghoritm", "Friday"],
      ["DataBase", "Saturday"],
      ["Math", "Monday"],
      ["Physic", "Tuesday"],
      ["JavaScript", "Wednesday"],
      ["OOP", "Thursday"],
      ["Alghoritm", "Friday"],
      ["DataBase", "Saturday"],
      ["Math", "Monday"],
      ["Physic", "Tuesday"],
      ["JavaScript", "Wednesday"],
      ["OOP", "Thursday"],
      ["Alghoritm", "Friday"],
      ["DataBase", "Saturday"],
    ];
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
                text: "DateSheet",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: Column(
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
              child: ListView.builder(
                itemCount: 29,
                itemBuilder: (BuildContext context, int index) {
                  var number = index + 1;
                  return DateSheetCard(
                    number: number.toString(),
                    module: dateSheetList[index][0],
                    day: dateSheetList[index][1],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
