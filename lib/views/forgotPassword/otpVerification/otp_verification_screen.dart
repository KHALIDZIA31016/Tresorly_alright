import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/views/forgotPassword/otpVerification/provider/otp_verification_provider.dart';
import 'package:tresorly/views/forgotPassword/resetPassword/reset_password.dart';
import 'package:tresorly/widgets/custom_button.dart';
import 'package:tresorly/widgets/custom_pinput.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  void initState() {
    Provider.of<OTPVerificationProvider>(context, listen: false).StartTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.backgroundImg),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(AppColors.darkScaffold, BlendMode.color))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Consumer<OTPVerificationProvider>(
            builder: (context, otpVerificationProvider, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text26(
                    title: "Check Email",
                    fontWeight: FontWeight.w500,
                  ),
                  15.ht,
                  const Text12(
                    title:
                        "Check your email we have sent you the recovery code.",
                    color: AppColors.greyF7,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  25.ht,
                  CustomPinPut(
                    onCompleted: (pin) =>
                        print("This is my pin code ========>> $pin"),
                    validator: (s) {
                      return s == '2222' ? null : 'Pin is incorrect';
                    },
                  ),
                  35.ht,
                  Text16(
                    title:
                        '00 : ${otpVerificationProvider.count.toString().padLeft(2, '0')}',
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w200,
                  ),
                  35.ht,
                  RichText(
                      text: TextSpan(
                          text: 'Didn\'t get a code? ',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyF7,
                          ),
                          children: [
                        TextSpan(
                          text: 'Resend',
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: AppColors.greyF7,
                              fontWeight: FontWeight.w600),
                        ),
                      ])),
                  35.ht,
                  CustomButton(
                    title: 'Reset Password',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdatePassword()));
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
