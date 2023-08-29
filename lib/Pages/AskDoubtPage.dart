import "package:erp_ui/Util/AppColor.dart";
import "package:erp_ui/Util/SmallText.dart";
import "package:erp_ui/Widget/DefaultButton.dart";
import "package:erp_ui/Widget/DefaultTextField.dart";
import "package:flutter/material.dart";

class AskDoubt extends StatelessWidget {
  const AskDoubt({super.key});

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
                text: "Ask Doubt",
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
                  children: [
                    DefaultTextField(
                      hintText: "Name",
                      readOnly: true,
                      width: width,
                      label: "Select Teacher",
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    SizedBox(height: 40),
                    DefaultTextField(
                      hintText: "Math",
                      readOnly: true,
                      width: width,
                      label: "Select Subject",
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    SizedBox(height: 40),
                    DefaultTextField(
                      hintText: "Factoring a sum or difference of two cubes",
                      readOnly: true,
                      width: width,
                      label: "Title",
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    SizedBox(height: 40),
                    DefaultTextField(
                      hintText: "--",
                      readOnly: true,
                      width: width,
                      label: "Doubt Description",
                      icon: Icons.keyboard_arrow_down_outlined,
                    ),
                    SizedBox(height: 40),
                    DefaultButton(
                      text: "Send",
                      icon: Icons.abc,
                      ontap: () {},
                      sizeIcon: 0,
                    )
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
