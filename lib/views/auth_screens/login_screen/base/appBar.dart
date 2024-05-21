import 'package:flutter/material.dart';

import '../../../../base/text_widget.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_constants/app_constant.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, this.myImage, this.subTitle, this.actions, this.myTitle, this.leadingIcon, required this.appBg_Color});

  final String? myImage;
  final String? myTitle;
  final String? subTitle;
  final Color appBg_Color;
  final Widget?   leadingIcon;
  final List<Widget>? actions;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(0, 100),
      child: Padding(
        padding: const EdgeInsets.only(left: 19, top: 20),
        child: AppBar(
          backgroundColor: widget.appBg_Color,
          scrolledUnderElevation: 0,
          elevation: 0,
          leading: widget.leadingIcon,
          flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.myImage != null) // Check if image is provided
                    Image.asset(
                      widget.myImage!,
                      height: 26,
                      width: 122,
                    ),
                  const SizedBox(
                    width: 15,
                  ),
                  if (widget.subTitle != null)
                    TextWidgetInterRegular(
                      title: widget.subTitle!,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteColor,
                    ),
                  if (widget.myTitle != null)
                    Center(
                      child: TextWidgetInterRegular(
                        title: widget.myTitle!,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.balck,
                      ),
                    ),
                ],
              )),
         actions: widget.actions,
        ),
      ),
    );
  }
}
