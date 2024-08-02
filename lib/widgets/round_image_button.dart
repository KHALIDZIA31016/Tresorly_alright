import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class RoundImageButton extends StatelessWidget {
  final String? imagePath;
  final Icon? icon;
  final bool showNotificationDot;
  final VoidCallback onPressed;
  final double? height;
  final double? width;

  const RoundImageButton({
    super.key,
    this.imagePath,
    this.icon,
    this.showNotificationDot = false,
    required this.onPressed,
    this.height = 40.0,
    this.width = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height!,
            width: width!,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: imagePath != null
                  ? CustomImageViewer(
                imagePath: imagePath!,
                scale: 3.5,
              )
                  : icon,
            ),
          ),
          if (showNotificationDot)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 8.h,
                height: 8.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff165290),
                        Color(0xff168DBC),

                      ]),
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
