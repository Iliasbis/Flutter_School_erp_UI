// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/AssignmentCard.dart';
import 'package:flutter/material.dart';

class AssignmentPage extends StatelessWidget {
  const AssignmentPage({super.key});

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
                text: "Assignment",
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
                        AssignmentCard(
                            module: "Mathematics",
                            modulPart: "Surface Areas and Volumes",
                            assignDate: "10 Nov 20",
                            lastSubmissionDate: "10 Dec 20"),
                        SizedBox(height: 20),
                        AssignmentCard(
                            module: "Science",
                            modulPart: "Structure of Atoms",
                            assignDate: "10 Oct 20",
                            lastSubmissionDate: "30 Oct 20"),
                        SizedBox(height: 20),
                        AssignmentCard(
                            module: "English",
                            modulPart: "My Bestfriend Essay",
                            assignDate: "10 Sep 20",
                            lastSubmissionDate: "30 Sep 20"),
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
