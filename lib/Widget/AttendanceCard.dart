// ignore_for_file: file_names

import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  final Color color;
  final String text;
  final Color circleColor;
  const AttendanceCard(
      {super.key,
      required this.color,
      required this.text,
      required this.circleColor});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color,
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 20,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(width: 10),
            SmallText(text: text),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: circleColor,
              child: SmallText(
                text: "0",
                color: color,
                font: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10)
          ],
        )
      ]),
    );
  }
}
