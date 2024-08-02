import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors.dart';

class CustomContainerHome extends StatelessWidget {
  final Widget child;
  final double topLeftRadius;
  final double topRightRadius;
  final Color color;
  final double? horizontal;
  final double? vertical;

  const CustomContainerHome({
    super.key,
    required this.child,
    this.topLeftRadius = 40.0,
    this.topRightRadius = 40.0,
    this.color = AppColors.whiteColor, this.horizontal = 20, this.vertical = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: horizontal!, vertical: vertical!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
