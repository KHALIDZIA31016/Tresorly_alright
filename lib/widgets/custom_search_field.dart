import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tresorly/utils/app_colors.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final Icon? prefixIcon;
  final Color fillColor;
  final Color hintColor;
  final double borderRadius;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const SearchField({
    super.key,
    this.hintText = 'Search...',
    this.prefixIcon,
    this.fillColor = Colors.white,
    this.hintColor = AppColors.balck60,
    this.borderRadius = 16,
    this.iconSize = 25.0,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w400,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon ??
            Icon(
              Icons.search,
              color: hintColor,
              size: iconSize,
            ),
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        isDense: true,
        hintStyle: GoogleFonts.poppins(
          color: hintColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
