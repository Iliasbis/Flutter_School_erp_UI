import 'package:erp_ui/Util/AppColor.dart';
import 'package:erp_ui/Util/ExtraSmallText.dart';
import 'package:erp_ui/Util/MediumText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  final String title;
  final String description;
  final String day;
  final VoidCallback ontap;
  const EventsCard(
      {super.key, required this.title,required this.description, required this.day, required this.ontap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: AppColor.primaryColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(text: title),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width / 3.8,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                ),
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
                        SmallText(
                          text: "$day Jan 21, 9:00 AM",
                          color: AppColor.primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: width / 2.2,
                      // height: 100,
                      child: ExtraSmallText(
                        text:
                            description,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
