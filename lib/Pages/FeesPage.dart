// ignore_for_file: file_names

import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:erp_ui/Widget/FeesCard.dart';
import 'package:flutter/material.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key});

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
                text: "Fees Due",
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
                        FeesCard(
                            no: "#54390",
                            month: "October",
                            date: "10 Oct 2020",
                            total: "4352"),
                        SizedBox(height: 20),
                        FeesCard(
                            no: "431",
                            month: "April",
                            date: "18 apl 2021",
                            total: "394"),
                        SizedBox(height: 20),
                        FeesCard(
                            no: "087",
                            month: "March",
                            date: "2 Mar 2021",
                            total: "5243"),
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
