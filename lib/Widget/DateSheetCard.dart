import 'package:erp_ui/Util/MediumText.dart';
import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

class DateSheetCard extends StatelessWidget {
  final String number;
  final String module;
  final String day;
  const DateSheetCard({super.key, required this.number, required this.module, required this.day});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Column(
            children: [
              SmallText(
                text: number,
                color: Colors.black,
              ),
              SmallText(
                text: "JAN",
                color: Colors.black,
              )
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MediumText(
                        text: module,
                        color: Colors.black,
                      ),
                      SmallText(
                        text: day,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      SmallText(
                        text: "9:00 AM",
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
