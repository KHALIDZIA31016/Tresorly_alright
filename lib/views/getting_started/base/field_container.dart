import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';

import '../../../base/text_widget.dart';

class FieldContainer extends StatelessWidget {
  const FieldContainer({
    super.key,
    required this.title,
    this.imageIcon,
    required this.height,
    required this.width,
    this.color,
    required this.borderRadius,
  });
  final String title;
  final String? imageIcon;
  final double height;
  final double width;
  final Color? color;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50, width: 295,
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(color:AppColors.greyF7.withOpacity(.3)),
        boxShadow: [BoxShadow(color:AppColors.bgColor, blurRadius: 4, spreadRadius: 0),],
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageIcon != null) Image.asset(imageIcon!, height: 26, width: 22,),
          const SizedBox(width: 15,),
          TextWidgetInterRegular(title: title, fontSize: 14, color: AppColors.greyF7)
        ],
      ),
    );
  }
}