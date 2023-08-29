import "package:erp_ui/Util/AppColor.dart";
import "package:erp_ui/Util/ExtraSmallText.dart";
import "package:erp_ui/Util/MediumText.dart";
import "package:erp_ui/Util/SmallText.dart";
import "package:erp_ui/Widget/DefaultButton.dart";
import "package:erp_ui/Widget/DefaultTextField.dart";
import "package:erp_ui/Widget/EventsCard.dart";
import "package:flutter/material.dart";

import "EventsDetailsPage.dart";

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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
                text: "Events",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: Column(
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    EventsCard(
                      title: "Shepeer Night",
                      day: "05",
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return EventsDetailsPage(
                                title: "Shepeer Night",
                                day: "05",
                                description:
                                    "A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.");
                          },
                        ));
                      },
                      description:
                          "A sleepover is a great treat for kids. Many schools use such an event as the culminating activity of the school year.",
                    ),
                    EventsCard(
                      title: "Fishing Tournament",
                      day: "09",
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return EventsDetailsPage(
                                title: "Fishing Tournament",
                                day: "09",
                                description:
                                    "Silver Sands Middle School in Port Orange, Florida, offers many special events, but one of the most unique ones is a springtime...");
                          },
                        ));
                      },
                      description:
                          "Silver Sands Middle School in Port Orange, Florida, offers many special events, but one of the most unique ones is a springtime...",
                    ),
                    EventsCard(
                      title: "Rhyme Time: A Night of Poetry",
                      day: "15",
                      ontap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return EventsDetailsPage(
                                title: "Rhyme Time: A Night of Poetry",
                                day: "15",
                                description:
                                    "April is also National Poetry Month. Now there is a great theme for a fun family night! Combine poetry readings by students...");
                          },
                        ));
                      },
                      description:
                          "April is also National Poetry Month. Now there is a great theme for a fun family night! Combine poetry readings by students...",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
