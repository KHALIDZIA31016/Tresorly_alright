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
    this.borderRadius,
  });
  final String title;
  final String? imageIcon;
  final double height;
  final double width;
  final Color? color;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50, width: 295,
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: const Border.fromBorderSide(BorderSide.none),
        // boxShadow: const[
           // BoxShadow(
           //    color:AppColors.bgColor,
           //    blurRadius: 4,
           //    spreadRadius: 0,
           //    offset: Offset(0,  0)
          // ),],

        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageIcon != null) Image.asset(imageIcon!, height: 26, width: 22,),
          const SizedBox(width: 15,),
          TextWidgetInterRegular(title: title, fontSize: 14, color: const Color(0XFFF0F4F7), FontFamily: 'Poppins-Regular')
        ],
      ),
    );
  }
}