import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/forgot_password/base/countNotifier.dart';
import 'package:tresorly/views/forgot_password/update_password.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {


  @override
  void initState() {
    Provider.of<CounterNotifier>(context, listen: false).StartTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background/images/bg.png'),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 250,),
                TextWidgetInterMedium(title: 'Check Email', fontSize: 26, color: AppColors.whiteColor, fontWeight: FontWeight.w500, FontFamily: 'Poppins-Regular'),
                const SizedBox(height: 15,),
                TextWidgetInterRegular(title: 'Check your email we have sent you the \nrecovery code.',
                  fontSize: 12, color: AppColors.greyF7,
                  fontWeight: FontWeight.w400, align: TextAlign.center,FontFamily: 'Poppins-Regular'
                ),
                const SizedBox(height: 50,),
                //   Pinput(
                //   showCursor: true,
                //   closeKeyboardWhenCompleted: true,
                //   validator: (s) {
                //     return s == '2222' ? null : 'Pin is incorrect';
                //   },
                //   defaultPinTheme: PinTheme(
                //       width: 25, height: 1,
                //       margin: EdgeInsets.only(right: 15),
                //       decoration: BoxDecoration(
                //     color: Colors.white,
                //   )),
                // ),
            25.ht,
            Consumer<CounterNotifier>(builder: (context, val, child){
              return InkWell(
                onTap: () {
                    Provider.of<CounterNotifier>(context, listen: false).StartTimer();
                },
                child: Text('00 : ${val.count.toString().padLeft(2, '0')}',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins-Regular')),
              );
            }),

                SizedBox(height: 35,),
                RichText(text: const TextSpan(
                    text: 'Didn\'t get a code?',
                    style: TextStyle(fontSize: 15, color: AppColors.whiteColor, fontFamily:  'Poppins-Regular'),
                    children: [
                      TextSpan(text: ' Resend',
                        style: TextStyle(fontSize: 15, color: AppColors.whiteColor, fontWeight: FontWeight.bold, fontFamily: 'Poppins-Regular'

                        ),)
                    ]

                )),
                SizedBox(height: 35,),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatePassword()));
                  },
                  child: Container(
                    height: 50, width: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: AppColors.blueBC, /*Secondary Color*/
                    ),
                    child: Center(child: TextWidgetInterRegular(title: 'Reset Password', fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w500, FontFamily: 'Poppins-Regular')),
                  ),
                ),
                const SizedBox(height: 380,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


