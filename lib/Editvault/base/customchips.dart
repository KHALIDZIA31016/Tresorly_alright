import 'package:flutter/material.dart';

import '../../utils/app_text.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors.dart';

class  CustomChips extends StatelessWidget {
  final String title;
  const CustomChips ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.size32,
      width: MySize.size68,
      child:  GestureDetector(
          onTap: (){},
          child: Chip(
            labelPadding: EdgeInsets.only(left: MySize.size0,bottom: 0,top: 0),
            label: ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xff165290), Color(0xff168DBC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: TextWidgetInterBold(
                title: title,
                color: AppColors.lightBlack5B,
                fontSize: MySize.size12,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: AppColors.backgroundF7,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              side: const BorderSide(
                  color: AppColors.backgroundF7
              ), // This removes the border
            ),
          )
      ),
    );
  }
}
