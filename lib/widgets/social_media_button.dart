import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class SocialMediaButton extends StatelessWidget {
  final String? imagePath;
  final String title;
  final void Function()? onTap;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final Color? borderColor;

  const SocialMediaButton({
    super.key,
    this.imagePath,
    required this.title, this.onTap,
    this.height = 50,
    this.width = double.infinity,
    this.buttonColor =  Colors.transparent,
    this.borderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(9.r)),
          border: Border.all(color: borderColor!),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              CustomImageViewer(imagePath: imagePath!,
                height: 26.h,
                width: 22.w,
              ),
            if (imagePath != null)
             15.wd,
            Text14(
             title: title,
              color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
