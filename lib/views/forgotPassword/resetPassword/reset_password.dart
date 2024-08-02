import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/views/forgotPassword/resetPassword/provider/reset_password_provider.dart';
import 'package:tresorly/views/login/login_screen.dart';
import 'package:tresorly/widgets/custom_button.dart';
import 'package:tresorly/widgets/custom_text_field.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.backgroundImg), fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Consumer<ResetPasswordProvider>(builder: (context, resetPasswordProvider, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text26(
                  title: "Reset Password",
                  fontWeight: FontWeight.w500,
                ),
                15.ht,
                const Text12(
                  title: "Here’s a tip: Use a combination of numbers, uppercase, lowercase and special characters",
                  fontWeight: FontWeight.w400,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
                25.ht,
                CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: resetPasswordProvider.passwordController,
                  hintText: "Password",
                  suffixIcon: Icon(
                    Icons.lock,
                    color: AppColors.greyF7.withOpacity(.5),
                    size: 18.sp,
                  ),
                ),
                15.ht,
                CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: resetPasswordProvider.confirmPasswordController,
                  hintText: "Confirm Password",
                  suffixIcon: Icon(
                    Icons.lock,
                    color: AppColors.greyF7.withOpacity(.5),
                    size: 18.sp,
                  ),
                ),
                25.ht,
                CustomButton(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  title: 'Reset Password',
                  height: 45.h,
                ),
                // const SizedBox(height: 380,),
              ],
            );
          },),
        ),
      ),
    );
  }
}
