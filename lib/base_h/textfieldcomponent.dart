import 'package:flutter/material.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/my_size.dart';

class TextFieldComponent extends StatelessWidget {
  final IconData? suffixicon;
  final String? hintText;
  final Widget? prefixIcon;
  final FontWeight? fontWeight;
  final double? height;

  const TextFieldComponent ({super.key, this.suffixicon, this.hintText, this.prefixIcon, this.fontWeight, this.height,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.scaleFactorHeight * 45,
      width: MySize.scaleFactorWidth * 300,
      child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.backgroundF7,
            prefixIcon:prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: MySize.size14,
              fontWeight:fontWeight,
              fontFamily: 'Outfit-Regular',
              // color: AppColors.blue8F.withOpacity(.6),
              color: Color(0XFF165290).withOpacity(.6),
              height: height,
            ),
            suffixIcon: Icon(suffixicon,color: AppColors.blue8F.withOpacity(.6),size: MySize.size20,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide:  BorderSide(
                color: AppColors.blue8F.withOpacity(.2),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide:  BorderSide(
                color: AppColors.blue8F.withOpacity(.20),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MySize.size8),
              borderSide:  BorderSide(
                color: AppColors.blue8F.withOpacity(.2),
                width: 1,
              ),
            ),
          )

      ),
    );
  }
}
