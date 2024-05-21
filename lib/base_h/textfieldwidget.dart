import 'package:flutter/material.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/my_size.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget? suffixicon;
  final String? hintText;
  final Widget? prefixIcon;
  final FontWeight? fontWeight;
  final double? height;

  const TextFieldWidget ({super.key, this.suffixicon, this.hintText, this.prefixIcon, this.fontWeight, this.height,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.scaleFactorHeight * 45,
      width: MySize.scaleFactorWidth* 300,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.whiteFF,
            prefixIcon:prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: MySize.size14,
              fontWeight:fontWeight,
              color: AppColors.lightBlack5B,
              height: height,
            ),
            suffixIcon: suffixicon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide:  const BorderSide(
                color:AppColors.greyF7,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide: const BorderSide(
                color: AppColors.greyF7,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide: const BorderSide(
                color: AppColors.greyF7,
                width: 1,
              ),
            ),
          )

      ),
    );
  }
}
