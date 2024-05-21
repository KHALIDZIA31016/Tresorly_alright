import 'package:flutter/material.dart';

import '../../../base/text_widget.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors/app_colors.dart';

class  CustomChips extends StatelessWidget {
  final String title;
  const CustomChips ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.size36,
      width: MySize.size72,
      child:  GestureDetector(
          onTap: (){},
          child: Chip(
            labelPadding: EdgeInsets.only(left: MySize.size6),
            label: TextWidgetInterBold(
              title: title,
              color: AppColors.lightBlack5B,
              fontSize: MySize.size12,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: AppColors.backgroundF7,
          )
      ),
    );
  }
}
