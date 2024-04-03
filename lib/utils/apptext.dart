import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/utils/colors.dart';

// ignore: camel_case_types
class weathetTextStyles {
  TextStyle locStyle = GoogleFonts.openSans(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w600, color: primary, fontSize: 25));
  TextStyle msgStyle = GoogleFonts.merriweather(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w600, color: grey, fontSize: 16));
}

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  String? data;
  double? size;
  Color? color;
  FontWeight? fw;
  TextAlign? textAlign;
  AppText(
      {super.key,
      required this.data,
      this.size,
      this.color,
      this.fw,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(data.toString(),
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fw,
        ));
  }

  Widget subheadText(String text) {
    return Text(text,
        style: GoogleFonts.lato(
          fontSize: size,
          color: color,
          fontWeight: fw,
        ));
  }
}
