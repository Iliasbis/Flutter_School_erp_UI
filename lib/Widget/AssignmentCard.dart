// ignore_for_file: file_names

import "package:erp_ui/Util/AppColor.dart";
import "package:flutter/material.dart";

import "../Util/SmallText.dart";
import "DefaultButton.dart";

class AssignmentCard extends StatelessWidget {
  final String module;
  final String modulPart;
  final String assignDate;
  final String lastSubmissionDate;
  const AssignmentCard({
    super.key, required this.module, required this.modulPart, required this.assignDate, required this.lastSubmissionDate,
  });

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0XFFE6EFFF),
          ),
          child: SmallText(
            text: module,
            color: AppColor.primaryColor,
          ),
        ),
        const SizedBox(height: 10),
        SmallText(
          text: modulPart,
          font: FontWeight.bold,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Assign Date",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: assignDate,
              color: Colors.black,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmallText(
              text: "Last Submission Date",
              color: Colors.grey.shade600,
            ),
            SmallText(
              text: lastSubmissionDate,
              color: Colors.black,
            ),
          ],
        ),
        const SizedBox(height: 20),
        DefaultButton(
          text: "To Be Submitted",
          sizeIcon: 0,
          icon: Icons.arrow_forward_rounded,
          ontap: () {},
        )
      ]),
    );
  }
}
