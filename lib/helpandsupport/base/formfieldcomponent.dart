import 'package:flutter/material.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors.dart';

class FormFieldComponent extends StatelessWidget {
  final int? maxLines;
  final String hintText;
  final double? height;
  const FormFieldComponent({super.key,  this.height, required this.hintText, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(MySize.size4),
        border: Border.all(
          color: AppColors.blue8F.withOpacity(.2),
          width: .5,
        )
      ) ,
      child: TextFormField(
        maxLines: maxLines,
        decoration:InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintText:hintText,
            hintStyle: TextStyle(color: AppColors.blue8F.withOpacity(.6),fontSize: MySize.size14,fontWeight: FontWeight.w400),
            border: InputBorder.none,
        ),
      ),
    );
  }
}
