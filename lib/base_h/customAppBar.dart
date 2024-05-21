import 'package:flutter/material.dart';
import '../utils/app_colors/app_colors.dart';
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
      leading: Container(
        height: MySize.size40,
        width: MySize.size40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.whiteFF,
        ),
        child:  Icon(icon),
      ),
      title:  Text(text,style: TextStyle(color: AppColors.darkBlue46,fontSize: MySize.size20,fontWeight: FontWeight.w600),),
    );
  }
}
