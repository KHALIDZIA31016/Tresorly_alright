import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tresorly/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Icon? suffixIcon;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final int maxLines;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
        suffixIcon: suffixIcon,
        hintText: hintText,
        fillColor: Colors.white.withOpacity(0.1),
        isDense: true,
        filled: true,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.greyF7.withOpacity(.5),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
