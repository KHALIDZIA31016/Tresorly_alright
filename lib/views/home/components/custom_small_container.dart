import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class CustomSmallContainer extends StatelessWidget {
  const CustomSmallContainer({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      height: 140.h,
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 42.h,
              width: 42.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.whiteColor),
              child: Center(
                child: CustomImageViewer(
                  imagePath: image,
                  scale: 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text14(
              title: title,
              fontWeight: FontWeight.w600,
              color: AppColors.darkBlue46,
              textAlign: TextAlign.center,
            ),
            5.ht,
            Text10(
              title: title,
              fontWeight: FontWeight.w400,
              color: AppColors.balck60,
            ),
          ],
        ),
      ),
    );
  }
}
