import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // background image

            Expanded(
              child: Stack(
                children: [
                  Image.asset('assets/background/images/bg_image.png', width: 315, height: 350,),
                  Positioned(
                    top: 330,
                      left: 70,
                      child: TextWidgetInterBold(title: 'TRESORLY', fontSize: 36, color: AppColors.greyF7, fontWeight: FontWeight.w500, FontFamily: 'Poppins-Regular')),
                ],
              ),
            ),
            
           Expanded(
             child: Column(
               children: [
                 const Padding(
                   padding: EdgeInsets.only(left: 40, right: 40),
                   child: Text('Streamline your password management with \n TRESORLY\'s secure storage',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.greyF7,
                       fontFamily: 'Poppins-Regular'
                     ),),
                 ),
                 //
                 // TextWidgetInterRegular(title: 'Streamline your password management with TRESORLY\'s secure storage',
                 //     fontSize: 16, color: AppColors.greyF7, align: TextAlign.center),
                 const SizedBox(height: 15,),
                 //  const FieldContainer(
                 //    height: 50,
                 //    width: 305,
                 //   title: 'Sign in with Google',
                 //   borderRadius: BorderRadius.all(Radius.circular(9)),
                 //   imageIcon: 'assets/images/google.png',
                 //
                 // ),
                 const SizedBox(height: 12,),
                 Container(
                   height: 50,
                   width: 305,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(9)),
                     border: Border.all(color:AppColors.greyF7.withOpacity(.3)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset('assets/images/google.png', height: 26, width: 22,),
                       SizedBox(width: 15,),
                       Text('Sign in with Google', style: TextStyle(
                         color: Colors.white,
                         fontFamily: 'Poppins-Regular'
                       ),),
             
                     ],
                   ) ,
                 ),
             
                 const SizedBox(height: 12,),
             
                 Container(
                   height: 50,
                   width: 305,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(9)),
                     border: Border.all(color:AppColors.greyF7.withOpacity(.3)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Image.asset('assets/images/apple.png', height: 26, width: 22,),
                       SizedBox(width: 15,),
                       Text('Sign in with Apple', style: TextStyle(
                         color: Colors.white,
                          fontFamily:   'Poppins-Regular'
                       ),),
             
                     ],
                   ) ,
                 ),
             
                 // const FieldContainer(
                 //   height: 50,
                 //   width: 305,
                 //   title: 'Sign in with Apple',
                 //   borderRadius: BorderRadius.all(Radius.circular(9)),
                 //   imageIcon: 'assets/images/apple.png',
                 // ),
                 const SizedBox(height: 12,),
                 InkWell(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                   },
                   child: Container(
                     height: 50,
                     width: 305,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(9)),
                       border: Border.all(color:AppColors.greyF7.withOpacity(.3)),
                     ),
                     child: Center(
                       child: Text('Sign in ', style: TextStyle(
                         color: Colors.white,
                         fontFamily: 'Poppins-Regular'
                       ),),
                     ),
                   ),
                 ),
                 const SizedBox(height: 12,),
                 CustomDivider(title: 'OR',color: AppColors.greyF7.withOpacity(.3), endIndent: 30, indent: 63,),
                 const SizedBox(height: 12,),
                 InkWell(
                   onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                   },
                   child: Container(
                     height: 50, width: 305,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(7),
                       color: AppColors.blueBC, /*Secondary Color*/
                     ),
                     child: Center(child: TextWidgetInterRegular(title: 'Create Account', fontSize: 16, color: AppColors.greyF7, FontFamily: 'Poppins-Regular') ),
                   ),
                 ),
                 const SizedBox(height: 21,),
             
                 RichText(text: const TextSpan(
                     text: 'By Signing up, You agree to our ',
                     style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: AppColors.greyF7, fontFamily: 'Poppins-Regular'),
                     children: [
                       TextSpan(text: 'Terms and Privacy Policy',
                         style: TextStyle(fontSize: 10, color: AppColors.blueE1,  fontWeight: FontWeight.w400, fontFamily: 'Poppins-Regular'),)
                     ]
             
                 )),
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}



