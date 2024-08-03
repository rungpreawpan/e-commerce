import 'package:e_commerce/constant/value_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFontStyle extends StatelessWidget {
  final String data;
  final double size;
  final FontWeight? weight;
  final Color color;
  final String? fontFamily;
  final TextOverflow? overflow;
  final bool isUnderLine;

  const TextFontStyle(
    this.data, {
    super.key,
    this.size = fontSizeS,
    this.weight = FontWeight.normal,
    this.color = Colors.black,
    this.fontFamily,
    this.overflow,
    this.isUnderLine = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        fontFamily: GoogleFonts.prompt().fontFamily,
        overflow: overflow,
        decoration:
            isUnderLine ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
