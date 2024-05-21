import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/generated/assets.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/auth_screens/login_screen/login_screen.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';

import 'base/custom_divider.dart';
import 'base/field_container.dart';


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
        // backgroundColor: const Color(0XFF00132D),
        backgroundColor: AppColors.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // background image
            Image.asset('assets/background/images/bg_image.png', width: 295, height: 300,),
            TextWidgetInterBold(title: 'TRESORLY', fontSize: 32, color: AppColors.greyF7, fontWeight: FontWeight.w500),
            const SizedBox(height: 12,),
            TextWidgetInterRegular(title: 'Streamline your password management with TRESORLY\'s secure storage',
                fontSize: 16, color: AppColors.greyF7, align: TextAlign.center),
            const SizedBox(height: 32,),
             const FieldContainer(
               height: 50,
               width: 295,
              title: 'Sign in with google',
              borderRadius: BorderRadius.all(Radius.circular(16)),
              imageIcon: 'assets/images/google.png',

            ),
            const SizedBox(height: 12,),
            const FieldContainer(
              height: 50,
              width: 295,
              title: 'Sign in with apple',
              borderRadius: BorderRadius.all(Radius.circular(16)),
              imageIcon: 'assets/images/apple.png',
            ),
            const SizedBox(height: 12,),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const FieldContainer(
                height: 50,
                width: 295,
                title: 'Sign in ',
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            const SizedBox(height: 12,),
            CustomDivider(title: 'OR',color: AppColors.greyF7.withOpacity(.3), endIndent: 30, indent: 63,),
            const SizedBox(height: 12,),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Container(
                height: 50, width: 295,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: AppColors.blueBC, /*Secondary Color*/
                ),
                child: Center(child: TextWidgetInterRegular(title: 'Create Account', fontSize: 16, color: AppColors.greyF7)),
              ),
            ),
            const SizedBox(height: 21,),

            RichText(text: const TextSpan(
              text: 'By Signing up, You agree to our ',
                style: TextStyle(fontSize: 10, color: AppColors.greyF7),
              children: [
                TextSpan(text: 'Terms and Privacy Policy',
                  style: TextStyle(fontSize: 10, color: AppColors.blueE1),)
              ]

            )),
            const SizedBox(height: 6,),
          ],
        ),
      ),
    );
  }
}



