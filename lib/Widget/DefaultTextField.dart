// ignore_for_file: file_names

import 'package:erp_ui/Util/SmallText.dart';
import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool readOnly;
  final double width;
  final double iconsSize;
  final IconData icon;
  const DefaultTextField(
      {required this.hintText,
      required this.readOnly,
      this.width = 160,
      this.icon = Icons.lock,
      required this.label,
      this.iconsSize = 24,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallText(
          text: label,
          color: Colors.grey,
        ),
        Container(
          width: width,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey),
            ),
          ),
          child: TextField(
            readOnly: readOnly,
            decoration: InputDecoration(
              suffixIcon: Icon(
                icon,
                size: iconsSize,
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.shade800),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
