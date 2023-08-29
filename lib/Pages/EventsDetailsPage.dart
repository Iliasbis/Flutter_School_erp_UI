import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/ExtraSmallText.dart';
import 'package:erp_ui/Util/MediumText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

class EventsDetailsPage extends StatelessWidget {
  final String title;
  final String day;
  final String description;
  const EventsDetailsPage(
      {super.key,
      required this.title,
      required this.day,
      required this.description});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
                text: "Events Details",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: width,
              child: Column(children: [
                Expanded(
                  child: Container(
                    width: width,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                    width: width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: AppColor.primaryColor,
                                ),
                                SizedBox(width: 4),
                                MediumText(
                                  text: "$day Jan 21, 9:00 AM",
                                  color: AppColor.primaryColor,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            MediumText(text: title),
                            SizedBox(height: 10),
                            Container(
                              width: width,
                              // height: 100,
                              child: MediumText(
                                text: description,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
