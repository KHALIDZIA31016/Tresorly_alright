import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_colors.dart';
import '../utils/app_text.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider(
      {super.key,
      required this.title,
      required this.color,
      });
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Divider(
          color: color,
          endIndent: 10.w,
          thickness: 2,
        )),
        Text16(title: title, color: AppColors.greyF7),
        Expanded(
            child: Divider(
          color: color,
          indent: 10.w,
          thickness: 2,
        )),
      ],
    );
  }
}
// const Color(0XFFF0F4F7).withOpacity(.2)
