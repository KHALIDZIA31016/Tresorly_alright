import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_text.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double? horizontal;
  final double? vertical;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color = AppColors.blueBC,
    this.textColor = AppColors.whiteColor,
    this.height = 50.0,
    this.width = double.infinity,
    this.borderRadius = 7.0,
    this.fontWeight = FontWeight.w400,
    this.horizontal = 0,
    this.vertical = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontal!, vertical: vertical!),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: Center(
          child: Text14(
            title: title,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
