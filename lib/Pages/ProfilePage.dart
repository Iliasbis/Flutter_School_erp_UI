
// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/BigText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/DefaultTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final String classNumber;
  final String classYear;
  const ProfilePage({
    super.key,
    required this.email,
    required this.classNumber,
    required this.classYear,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.checkmark_alt,
                      color: AppColor.primaryColor,
                    ),
                    SmallText(
                      text: 'Done',
                      font: FontWeight.w500,
                      color: AppColor.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
                text: "My Profile",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: width,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width / 4,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.green.shade500),
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BigText(text: name, font: FontWeight.bold),
                            SmallText(
                              text: classNumber,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        const Icon(Icons.camera_alt_outlined, color: Colors.grey),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextField(
                        hintText: "124 321 538 34",
                        readOnly: false,
                        label: "Adhar No",
                      ),
                      DefaultTextField(
                        hintText: "2022-2023",
                        readOnly: false,
                        label: "Academic Year",
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextField(
                        hintText: "XV",
                        readOnly: false,
                        label: "Admission Class",
                      ),
                      DefaultTextField(
                        hintText: "T0043",
                        readOnly: false,
                        label: "Old Admission No",
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextField(
                          hintText: "18 April 2020",
                          readOnly: false,
                          label: "Date of Admission"),
                      DefaultTextField(
                        hintText: "18 April 2003",
                        readOnly: false,
                        label: "Date of Birth",
                      ),
                    ],
                  ),
                  DefaultTextField(
                    width: width,
                    hintText: "parent@gmail.com",
                    readOnly: false,
                    label: "Parent Mail",
                  ),
                  DefaultTextField(
                    width: width,
                    hintText: "Mother",
                    readOnly: false,
                    label: "Mother Name ",
                  ),
                  DefaultTextField(
                    width: width,
                    hintText: "Father",
                    readOnly: false,
                    label: "Father Name",
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
