import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final bool showButton;
  final bool showSwitch;
  final bool switchValue;
  final Function(bool)? onSwitchChanged;
  final void Function()? onButtonTap;

  const InfoRow({super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.showButton = false,
    this.showSwitch = false,
    this.switchValue = false,
    this.onSwitchChanged, this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      CustomImageViewer(
                        imagePath: imagePath,
                        scale: 3.5,
                      ),
                      SizedBox(width: 10.w),
                      Text14(
                        title: title,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blue8F,
                      ),
                    ],
                  ),
                ),
                10.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text10(
                      title: "Last Updated: ",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blue8F,
                    ),
                    Text10(
                      title: subtitle,
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                  ],
                ),
              ],
            ),
            if (showButton)
              GestureDetector(
                onTap: onButtonTap,
                child: Container(
                  height: 20.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                    color: AppColors.greenColor.withOpacity(.3),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: const Center(
                    child: Text8(
                      title: "Strong Password",
                      fontWeight: FontWeight.w500,
                      color: AppColors.greenColor,
                    ),
                  ),
                ),
              ),
            if (showSwitch)
              Column(
                children: [
                  Switch(
                    value: switchValue,
                    onChanged: onSwitchChanged,
                  ),
                  const Text8(title: "Enabled", fontWeight: FontWeight.w400, color: AppColors.blue8F,)
                ],
              ),
          ],
        ),

      ],
    );
  }
}
