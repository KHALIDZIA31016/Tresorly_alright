import 'package:flutter/material.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MySize.scaleFactorWidth*334,
      height: MySize.scaleFactorHeight*52,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteFF,
          prefixIcon: Icon(Icons.search, color: AppColors.darkGrey84, size: MySize.size20,),
          border: OutlineInputBorder(
            borderSide: BorderSide.none, // No border side
            borderRadius: BorderRadius.circular(16.0),
          ),
          hintText: 'Search your Vaults',
          hintStyle: TextStyle(color: AppColors.darkGrey84, fontWeight: FontWeight.w400, fontSize: MySize.size14),
        ),
      ),
    );
  }
}
