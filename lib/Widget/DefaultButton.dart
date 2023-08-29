// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/MediumText.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final IconData icon;
  final double sizeIcon;

  const DefaultButton(
      {required this.text,
      required this.icon,
      required this.ontap,
      this.sizeIcon = 30,
      super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        width: width,
        height: height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 2),
            MediumText(
              text: text,
              color: Colors.white,
            ),
            Icon(
              icon,
              size: sizeIcon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
