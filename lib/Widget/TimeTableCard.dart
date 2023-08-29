// ignore_for_file: file_names

import "package:erp_ui/Util/AppColor.dart";
import "package:flutter/material.dart";

import "../Util/SmallText.dart";

class TimeTableCard extends StatelessWidget {
  final String moduleName;
  final String time;
  final String teacher;
  final String period;
  const TimeTableCard({
    super.key,
    required this.moduleName,
    required this.time,
    required this.teacher,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.04, vertical: height * 0.01),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.primaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SmallText(
            text: moduleName,
            font: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          SmallText(text: time),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallText(
                text: teacher,
                color: Colors.grey.shade600,
              ),
              SmallText(
                text: period,
                color: Colors.black,
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
