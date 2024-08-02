import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/my_size.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomAppBar({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: MySize.size24,
          width: MySize.size24,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteFF,
          ),
          child:  Icon(icon, size: 20,),
        ),
      ),
      title:  Text(text,style: const TextStyle(color: AppColors.darkBlue46,fontSize: 20,fontWeight: FontWeight.w600, fontFamily: 'Outfit-Regular'),),
    );
  }
}
