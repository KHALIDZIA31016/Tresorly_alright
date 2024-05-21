import 'package:flutter/material.dart';

import '../../../base/text_widget.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors/app_colors.dart';

class MenuRow extends StatelessWidget {
  ImageProvider<Object> image;
  final String title;
  Color? color2;
  final Color? color;

  MenuRow({super.key, required this.image, required this.title,  this.color,  this.color2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
         height: 20,
         width: 20,
         decoration: BoxDecoration(
           image: DecorationImage(
             image: image,
           )
         ),
       ),
         SizedBox(width: MySize.size20,),
        TextWidgetInterBold(
          title:title,
          color:color2 ?? AppColors.darkBlue46,
          fontSize: MySize.size14,
          fontWeight: FontWeight.w400,
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios_outlined,color:color,size: MySize.size15,),
      ],
    );
  }
}
