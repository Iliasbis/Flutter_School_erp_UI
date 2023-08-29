// ignore_for_file: file_names

import 'package:erp_ui/Util/MediumText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

import '../Util/AppColor.dart';

class HomePageMainCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text1;
  final VoidCallback ontap;
  final String text2;
  final Color circleColor;
  const HomePageMainCard(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.text1,
      required this.ontap,
      required this.text2,
      required this.circleColor});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height * 0.23,
        width: width / 2.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: AppColor.primaryColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  backgroundColor: circleColor,
                  radius: 30,
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
                MediumText(
                  text: text1,
                  font: FontWeight.bold,
                  size: 30,
                ),
                SmallText(
                  text: text2,
                  color: Colors.grey,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
