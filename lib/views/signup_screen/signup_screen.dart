import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/views/login/login_screen.dart';

import '../../../utils/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
 bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background/images/bg.png'),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.darkScaffold, BlendMode.color)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 65,),
                TextWidgetInterMedium(title: 'Create Account', fontSize: 26,
                    color: AppColors.whiteColor, FontFamily: 'Poppins-Regular'),
                2.ht,
                TextWidgetInterRegular(title: 'Safeguard your online identity - create \n your TRESORLY account now!',
                    fontSize: 13, fontWeight: FontWeight.w400,
                  color: AppColors.greyF7,
                    FontFamily: 'Poppins-Regular',
                    align: TextAlign.center,
                ),
                18.ht,
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.mail, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins-Regular',
                          fontSize: 14),
                     // border: InputBorder.none
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                      )
                  ),

                10.ht,
                TextFormField(

                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.person, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins-Regular',),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
                10.ht,
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.phone, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Phone no.',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
                10.ht,
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins-Regular',),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
                10.ht,
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins-Regular',),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
                7.5.ht,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                        checkColor: AppColors.whiteColor,
                        side: BorderSide(style: BorderStyle.solid,width: 1, color: const Color(0XFFD0D5DD).withOpacity(.5)),
                        value: val, onChanged: (value) => setState(() {
                        val = !val;
                      } ),),
                    ),
                    6.wd,
                    TextWidgetInterRegular(title: 'I agree with ', fontSize: 12, color: AppColors.whiteColor.withOpacity(.6), FontFamily: 'Poppins-Regular'),
                    Text('Terms and Privacy Policy', style: TextStyle(fontSize: 11,fontFamily: 'Poppins-Regular' ,color: AppColors.whiteColor.withOpacity(.6), fontWeight: FontWeight.w600,
                        decorationColor: AppColors.whiteColor.withOpacity(.6), decoration: TextDecoration.underline
                    ),)
                  ],
                ),
                7.5.ht,
                Container(
                  height: 45, width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.blueBC),
                    ),
                    child: Center(child: TextWidgetInterMedium(
                        title: 'Create Account', fontSize: 14, color: AppColors.whiteColor, FontFamily: 'Poppins-Regular'),
                    ),
                  ),
                ),
                15.ht,
                // const CustomDivider(title: 'or continue with', color: Colors.white, endIndent: 19, indent: 19,),
                15.ht,
                // FieldContainer(
                //   title: 'Sign Up with Google',
                //   imageIcon: 'assets/images/google.png',
                //   width: 275, height: 54,
                //   borderRadius: BorderRadius.circular(5),
                //   color: AppColors.white20.withOpacity(.2),
                // ),
                15.ht,
                // FieldContainer(
                //   title: 'Sign Up with Apple',
                //   imageIcon: 'assets/images/apple.png',
                //   width: 275, height: 54,
                //   borderRadius: BorderRadius.circular(5),
                //   color: AppColors.white20.withOpacity(.2),
                // ),
                15.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?  ', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.greyF7, fontFamily: 'Poppins-Regular'),),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                        },
                        child: const Text('Sign In ', style: TextStyle(fontSize: 12, color: AppColors.greyF7, fontWeight: FontWeight.w600, fontFamily: 'Poppins-Regular',
                        decorationColor: AppColors.whiteColor, decoration: TextDecoration.underline
                        ),)),
                    const Text('now',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color: AppColors.greyF7, fontFamily: 'Poppins-Regular')),
                  ],
                ),
                const SizedBox(height: 150,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension SetAlignment on Widget {
  Widget allAlignment({
    AlignmentGeometry? topLeft,
    AlignmentGeometry? bottomLeft,
    AlignmentGeometry? topRight,
    AlignmentGeometry? bottomRight,
    AlignmentGeometry? centerLeft,
    AlignmentGeometry? centerRight,
  }) {
    return Align(
      alignment: Alignment.topLeft, // Default alignment
      child: this,
    );
  }
}