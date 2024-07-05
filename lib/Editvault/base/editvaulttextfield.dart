import 'package:flutter/material.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors/app_colors.dart';
class EditVaultTextField extends StatelessWidget {
  final IconData? suffixicon;
  final String? hintText;
  final Widget? prefixIcon;
  final FontWeight? fontWeight;
  final double? height;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefix;

  const EditVaultTextField ({super.key, this.suffixicon, this.hintText, this.prefixIcon, this.fontWeight, this.height, this.suffixIcon, this.suffix, this.prefix,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MySize.scaleFactorHeight * 45,
      width: MySize.scaleFactorWidth* 300,
      child: TextFormField(
          decoration: InputDecoration(

            filled: true,
            fillColor: AppColors.whiteFF,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 0.0,right: 10),
              child: prefixIcon,
            ),
            prefix: prefix,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: MySize.size14,
              fontWeight:fontWeight,
              color: const Color(0xff47495B),
              height: height,
            ),
            suffixIcon: Icon(suffixicon,color: AppColors.lightBlack5B,size: MySize.size20,),
            suffix: suffix,
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
