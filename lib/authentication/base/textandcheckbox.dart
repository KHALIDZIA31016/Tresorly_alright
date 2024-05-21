import 'package:flutter/material.dart';

import '../../../base/text_widget.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors/app_colors.dart';

class TextAndCheckBox extends StatefulWidget {
  final String image;
  final  String title;
  final String title2;
  final String title3;

  const TextAndCheckBox({super.key, required this.image, required this.title, required this.title2, required this.title3});
  @override
  State<TextAndCheckBox> createState() => _TextAndCheckBoxState();
}
class _TextAndCheckBoxState extends State<TextAndCheckBox> {
  bool val=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MySize.size26,),
        Row(
          children: [
            Image.asset(widget.image,color: AppColors.blue8F,),
            SizedBox(width: MySize.size10,),
            TextWidgetInterBold(
              title: widget.title,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w500,
              color: AppColors.blue8F,
            ),
            const Spacer(),
            Switch(
              activeColor: Colors.indigo,
              inactiveTrackColor: AppColors.greyF7,
              inactiveThumbColor: AppColors.whiteFF,
              focusColor: AppColors.whiteFF,
              autofocus: true,
              activeTrackColor: Colors.indigo,
              thumbColor:MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.white;
                }
                return Colors.white;
              }),
              value: val,
              onChanged: (value) {
                setState(() {
                  val = !val;
                }
                );
              },
            ),
          ],
        ),
        //sSizedBox(height: MySize.size5,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetInterBold(
              title:widget.title2,
              fontSize: MySize.size10,
              fontWeight: FontWeight.w400,
              color: AppColors.blue8F,
            ),
            const Spacer(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MySize.size16,),
              child: TextWidgetInterBold(
                title:widget.title3,
                fontSize: MySize.size10,
                fontWeight: FontWeight.w400,
                color: AppColors.blue8F,
              ),
            ),

          ],
        )
      ],
    );
  }
}
