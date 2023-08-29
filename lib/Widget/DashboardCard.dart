// ignore_for_file: file_names

import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Util/AppColor.dart';

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String description;
  final VoidCallback goTo;
  const DashboardCard(
      {super.key,
      required this.icon,
      required this.description,
      required this.goTo});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 10),
      child: GestureDetector(
        onTap: goTo,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffF5F6FC),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                size: 72,
                color: AppColor.primaryColor,
              ),
              SmallText(
                text: description,
                font: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
