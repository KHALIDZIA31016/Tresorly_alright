import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../base/text_widget.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors/app_colors.dart';

class ContainerComponent extends StatelessWidget {
  final String image;
  final String title;
  const ContainerComponent({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MySize.scaleFactorHeight*100,
      width: MySize.scaleFactorWidth*140,
      decoration: BoxDecoration(
          color: AppColors.blue8F.withOpacity(.10),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          SizedBox(height: MySize.size12,),
          Image.asset(image,),
          SizedBox(height: MySize.size4,),
          TextWidgetInterBold(
            title:title,
            fontSize: MySize.size12,
            fontWeight: FontWeight.w500,
            color: AppColors.blue8F,
          ),

        ],
      ),
    );
  }
}
