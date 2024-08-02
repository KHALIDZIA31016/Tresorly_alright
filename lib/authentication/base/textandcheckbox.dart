import 'package:flutter/material.dart';

import '../../utils/app_text.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors.dart';

class TextAndCheckBox extends StatefulWidget {
  final String image;
  final String title;
  final String title2;
  final String title3;

  const TextAndCheckBox({
    super.key,
    required this.image,
    required this.title,
    required this.title2,
    required this.title3,
  });

  @override
  State<TextAndCheckBox> createState() => _TextAndCheckBoxState();
}

class _TextAndCheckBoxState extends State<TextAndCheckBox> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MySize.size26),
        Row(
          children: [
            Image.asset(
              widget.image,
              color: AppColors.blue8F,
            ),
            SizedBox(width: MySize.size10),
            Expanded(
              child: TextWidgetInterBold(
                align: TextAlign.start,
                title: widget.title,
                FontFamily: 'Outfit-Regular',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.blue8F,
              ),
            ),
            Switch(
              value: val,
              onChanged: (bool value)  {
                       setState(() {
                    val = value;
                       });
                    },
              activeTrackColor: AppColors.blueBC,
              focusColor: AppColors.whiteFF,
              autofocus: true,
              inactiveThumbColor: AppColors.whiteFF,
              inactiveTrackColor: Colors.white38,
              trackOutlineColor: const MaterialStatePropertyAll(Color(0x00000000)),
            ),
            // Switch(
            //   activeColor: Colors.indigo,
            //   inactiveTrackColor: Colors.transparent, // Set to transparent to remove border color
            //   inactiveThumbColor: AppColors.whiteFF,
            //   focusColor: AppColors.whiteFF,
            //   autofocus: true,
            //
            //   activeTrackColor: AppColors.blueBC,
            //   trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
            //     if (states.contains(MaterialState.disabled)) {
            //       return const Color(0xffF2F4F7);
            //     }
            //     return null; // Use the default color.
            //   }),
            //   thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            //     if (states.contains(MaterialState.disabled)) {
            //       return Colors.white;
            //     }
            //     return Colors.white;
            //   }),
            //   value: val,
            //   onChanged: (value) {
            //     setState(() {
            //       val = value;
            //     });
            //   },
            // ),

          ],
        ),
        // SizedBox(height: MySize.size5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 241,
              child: TextWidgetInterBold(
                title: widget.title2,
                FontFamily: 'Outfit-Regular',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.blue8F,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52),
              child: TextWidgetInterBold(
                title: widget.title3,
                FontFamily: 'Outfit-Regular',
                fontSize: 12.5,
                fontWeight: FontWeight.w400,
                color: AppColors.blue8F,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
