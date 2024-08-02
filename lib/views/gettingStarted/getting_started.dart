import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/widgets/social_media_button.dart';
import 'package:tresorly/views/login/login_screen.dart';
import 'package:tresorly/widgets/custom_button.dart';
import 'package:tresorly/widgets/custom_divider.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({super.key});

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkScaffold,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.simpleBg), fit: BoxFit.cover)),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomImageViewer(
                    imagePath: AppImages.smallBg,
                    height: 345.h,
                    width: 300.w,
                  ),
                  const Positioned(
                      bottom: -20,
                      left: 100,
                      child: Center(
                        child: Text36(
                            title: "TRESORLY",
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                        width: 230.w,
                        child: const Text12(
                          title:
                              'Streamline your password management with TRESORLY\'s secure storage',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        )),
                    15.ht,
                    SocialMediaButton(
                      onTap: () {},
                      title: 'Sign in with Google',
                      imagePath: AppImages.googleSvg,
                    ),
                    12.ht,
                    SocialMediaButton(
                      onTap: () {},
                      title: 'Sign in with Apple',
                      imagePath: AppImages.appleSvg,
                    ),
                    12.ht,
                    SocialMediaButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      title: 'Sign in',
                    ),
                    12.ht,
                    CustomDivider(
                      title: 'OR',
                      color: AppColors.greyF7.withOpacity(.3),
                    ),
                    12.ht,
                    CustomButton(onTap: () {}, title: "Create Account"),
                    20.ht,
                    RichText(
                        text: TextSpan(
                            text: 'By Signing up, You agree to our ',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyF7,
                            ),
                            children: [
                          TextSpan(
                            text: 'Terms and Privacy Policy',
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                color: AppColors.blueE1,
                                fontWeight: FontWeight.w400),
                          )
                        ])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
