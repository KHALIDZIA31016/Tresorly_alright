import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String imagePath;
  final VoidCallback? onVisibilityTap;
  final VoidCallback? onIcon1Tap;
  final VoidCallback? onIcon2Tap;
  final VoidCallback? onTitleTap;
  final Color? bgColor;
  final Color? leadingContainerColor;
  final String? icon1;
  final String? icon2;

  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.imagePath,
    this.onVisibilityTap,
    this.onIcon1Tap,
    this.onIcon2Tap,
    this.onTitleTap,
    this.bgColor = AppColors.whiteFF,
    this.leadingContainerColor = AppColors.backgroundF7,
  this.icon1 = AppImages.copy,
    this.icon2 = AppImages.favRedSvg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: [
          Container(
            height: 65.h,
            width: 65.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: leadingContainerColor,
            ),
            child: Center(
              child: CustomImageViewer(
                imagePath: imagePath,
                scale: 3.5,
              ),
            ),
          ),
          10.wd,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: onTitleTap,
                  child: Text16(
                    title: title,
                    color: AppColors.darkBlue46,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                5.ht,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text12(
                      title: subtitle1,
                      color: AppColors.darkBlue46,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text12(
                            title: subtitle2,
                            color: AppColors.darkBlue46,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        5.wd,
                        GestureDetector(
                          onTap: onVisibilityTap,
                          child: Icon(
                            Icons.visibility,
                            size: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(child: Row(
            children: [
              const Spacer(),
               CustomImageViewer(
                onTap: onIcon1Tap,
                  imagePath: icon1,
                   scale: 3.5
              ),
              6.wd,
               CustomImageViewer(
                 onTap: onIcon2Tap,
                  imagePath: icon2,
                  scale: 3.5
              ),
            ],
          ))
        ],
      ),
    );
  }
}
