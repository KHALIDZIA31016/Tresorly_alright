import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/views/forgotPassword/forgotPassword/forget_password.dart';
import 'package:tresorly/views/home/home_screen.dart';
import 'package:tresorly/views/login/provider/login_provider.dart';
import 'package:tresorly/widgets/custom_button.dart';
import 'package:tresorly/widgets/custom_divider.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';
import 'package:tresorly/widgets/custom_text_field.dart';
import 'package:tresorly/widgets/social_media_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.backgroundImg),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(AppColors.darkScaffold, BlendMode.color)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: SingleChildScrollView(
            child: Consumer<LoginProvider>(
              builder: (context, loginProvider, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    125.ht,
                    const Text26(
                      title: "Sign in",
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor,
                    ),
                    25.ht,
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: loginProvider.emailController,
                      hintText: "Email",
                      suffixIcon: Icon(
                        Icons.mail,
                        color: AppColors.greyF7.withOpacity(.5),
                        size: 18.sp,
                      ),
                    ),
                    15.ht,
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: loginProvider.emailController,
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.lock,
                        color: AppColors.greyF7.withOpacity(.5),
                        size: 18.sp,
                      ),
                    ),
                    10.ht,
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text14(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPassword()));
                          },
                          title: 'Forgot Password?',
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteColor.withOpacity(.8)),
                    ),
                    15.ht,
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      title: "Sign in",
                      borderRadius: 100.r,
                      width: 112.w,
                      height: 45.h,
                    ),
                    15.ht,
                    const CustomDivider(
                      title: "or continue with",
                      color: AppColors.whiteColor,
                    ),
                    15.ht,
                    SocialMediaButton(
                      title: 'Sign in with Google',
                      imagePath: AppImages.googleSvg,
                      height: 55.h,
                      buttonColor: AppColors.skyF9.withOpacity(.25),
                      borderColor: Colors.transparent,
                    ),
                    15.ht,
                    SocialMediaButton(
                      title: 'Sign in with Apple',
                      imagePath: AppImages.appleSvg,
                      height: 55.h,
                      buttonColor: AppColors.skyF9.withOpacity(.25),
                      borderColor: Colors.transparent,
                    ),
                    15.ht,
                    RichText(
                        text: TextSpan(
                            text: 'Don’t have an account? ',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyF7,
                            ),
                            children: [
                          TextSpan(
                            text: 'Sign up ',
                            style: GoogleFonts.poppins(
                                decoration: TextDecoration.underline,
                                fontSize: 12.sp,
                                color: AppColors.greyF7,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: 'now',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: AppColors.greyF7,
                                fontWeight: FontWeight.w400),
                          )
                        ])),
                    25.ht,
                    CustomImageViewer(
                      onTap: () {},
                      imagePath: AppImages.faceIDSvg,
                    ),
                    10.ht,
                    const Text12(
                      title: "Enable Face ID",
                      fontWeight: FontWeight.w400,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
