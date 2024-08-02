import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/views/forgotPassword/forgotPassword/provider/forgot_password_provider.dart';
import 'package:tresorly/views/forgotPassword/otpVerification/otp_verification_screen.dart';
import 'package:tresorly/widgets/custom_button.dart';
import 'package:tresorly/widgets/custom_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff073b5c),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.backgroundImg),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Consumer<ForgotPasswordProvider>(builder: (context, forgotPasswordProvider, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text26(
                    title: "Forgot Password?",
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyF7,
                  ),
                  10.ht,
                  const Text12(
                    title: 'Forgot Your Password? Don’t Worry we have your back',
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  25.ht,
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: forgotPasswordProvider.emailController,
                    hintText: "Email",
                    suffixIcon: Icon(
                      Icons.mail,
                      color: AppColors.greyF7.withOpacity(.5),
                      size: 18.sp,
                    ),
                  ),
                  5.ht,
                  const Text12(
                    title:
                    "A link will be sent to your email to reset your password",
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyF7,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  25.ht,
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OTPVerification()),
                      );
                    },
                    title: 'Send Recovery Link',

                    height: 45.h,),
                ],
              );
            },),
          ),
        ),
      ),
    );
  }
}
