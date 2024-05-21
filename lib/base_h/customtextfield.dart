import 'package:flutter/material.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/my_size.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  const CustomTextField({super.key, this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteFF.withOpacity(0.10),
          contentPadding: EdgeInsets.all(MySize.size12),
          suffixIcon: Icon(icon,
              color: AppColors.greyF7.withOpacity(0.5)),
          hintText: hintText,
          hintStyle:
          TextStyle(color: AppColors.greyF7.withOpacity(0.5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MySize.size5),
            borderSide: BorderSide.none,
          ),
        ),
    );
  }
}
