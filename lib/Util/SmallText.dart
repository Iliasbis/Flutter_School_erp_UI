// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight font;
  final Color color;
  const SmallText({
    required this.text,
    this.size=17,
    this.font=FontWeight.w600,
    this.color=Colors.black,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.nunito(
      fontSize: size,
      fontWeight: font,
      color: color,
    ),);
  }
}
