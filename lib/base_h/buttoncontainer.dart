import 'package:flutter/material.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/my_size.dart';
import 'text_widget.dart';

class ButtonContainer extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  const ButtonContainer({super.key, required this.title, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MySize.size7),
          color: AppColors.blueBC),
      child: Center(
        child: TextWidgetInterRegular(
            title: title,
            fontSize:16,
            color:AppColors.whiteFF,
            fontWeight: FontWeight.w500,
          FontFamily: 'Poppins-Regular'
        ),
      ),
    );
  }
}
