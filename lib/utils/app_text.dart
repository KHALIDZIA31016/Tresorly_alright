import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tresorly/utils/app_colors.dart';



class Text36 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text36(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 36.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text26 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text26(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 26.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text20 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text20(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 20.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text16 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text16(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text14 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text14(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text12 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text12(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text10 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text10(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 10.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}

class Text8 extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  final Color? color;
  final void Function()? onTap;
  final int? maxLines;
  final TextAlign? textAlign;
  const Text8(
      {super.key,
        required this.title,
        this.fontWeight,
        this.color,
        this.onTap,
        this.maxLines,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 8.sp,
          fontWeight: fontWeight ?? FontWeight.w400,
          color: color ?? AppColors.whiteColor,
        ),
        maxLines: maxLines ?? 1,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign ?? TextAlign.left,
      ),
    );
  }
}












Widget TextWidgetInterBold({
  required String title,
  required double fontSize,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align = TextAlign.start,
  String FontFamily = 'Poppins',
  Color color = Colors.black,
}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontFamily,
    ),
    maxLines: 4,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}

Widget TextWidgetInterRegular(
    {required String title,
    required double fontSize,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign align = TextAlign.start,
    String FontFamily = 'Poppins'
    // decoration =  TextDecoration.underline,
    // decorationColor = Colors.white,

    }) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontFamily,
      // decoration: decoration, decorationColor: decorationColor,
    ),
    maxLines: 100,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}

Widget TextWidgetInterMedium(
    {required String title,
    required double fontSize,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign align = TextAlign.start,
    String FontFamily = 'Poppins'}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: FontFamily,
    ),
    maxLines: 4,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}
