// ignore_for_file: file_names

import "package:erp_ui/Util/AppColor.dart";
import "package:flutter/material.dart";

import "../Util/SmallText.dart";
import "DefaultButton.dart";

class FeesCard extends StatelessWidget {
  final String no;
  final String month;
  final String date;
  final String total;
  const FeesCard(
      {super.key,
      required this.no,
      required this.month,
      required this.date,
      required this.total});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.04, vertical: height * 0.02),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.primaryColor),
        borderRadius: BorderRadius.circular(29),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Receipt No",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: no,
              color: Colors.black,
            )
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Month",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: month,
              color: Colors.black,
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Payment Date",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: date,
              color: Colors.black,
            )
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Total Pending Amout",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: "\$$total",
              color: Colors.black,
            ),
          ],
        ),
        const SizedBox(height: 20),
        DefaultButton(
          text: "Pay Now",
          icon: Icons.arrow_forward_rounded,
          ontap: () {},
        )
      ]),
    );
  }
}
