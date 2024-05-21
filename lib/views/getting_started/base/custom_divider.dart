import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import '../../../base/text_widget.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.title,
    required this.color,
    required this.indent,
    required this.endIndent
  });
  final String title;
  final Color color;
  final double indent;
  final double endIndent;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Divider(color: color,indent: indent, endIndent: endIndent,)),
        TextWidgetInterRegular(title: title, fontSize: 16,color: AppColors.greyF7),
        Expanded(child: Divider(color: color,endIndent: indent, indent: endIndent,)),
      ],
    );
  }
}
// const Color(0XFFF0F4F7).withOpacity(.2)