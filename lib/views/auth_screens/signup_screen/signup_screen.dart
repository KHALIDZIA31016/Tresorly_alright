import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/views/auth_screens/login_screen/login_screen.dart';
import 'package:tresorly/views/getting_started/base/custom_divider.dart';
import 'package:tresorly/views/getting_started/base/field_container.dart';

import '../../../utils/app_colors/app_colors.dart';

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
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 67,),
                TextWidgetInterMedium(title: 'Create Account', fontSize: 26, color: AppColors.whiteColor),
                2.ht,
                TextWidgetInterRegular(title: 'Safeguard your online identity - create your TRESORLY account now!',
                    fontSize: 12, color: AppColors.greyF7,
                    align: TextAlign.center,
                ),
                29.ht,
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.mail, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
                      )
                  ),
                ),
                15.ht,
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.person, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Name',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
                      )
                  ),
                ),
                15.ht,
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.phone, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Phone no.',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
                      )
                  ),
                ),
                15.ht,
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
                      )
                  ),
                ),
                15.ht,
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      filled: true,
                      isDense: true,
                      suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.6),size: 18),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.6), fontWeight: FontWeight.w400, fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
                      )
                  ),
                ),
                17.5.ht,
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.85,
                      child: Checkbox(
                        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                        checkColor: AppColors.whiteColor,
                        side: BorderSide(style: BorderStyle.solid,width: 1, color: Color(0XFFD0D5DD).withOpacity(.5)),
                        value: val, onChanged: (value) => setState(() {
                        val = !val;
                      } ),),
                    ),
                    TextWidgetInterRegular(title: 'I agree with ', fontSize: 14, color: AppColors.whiteColor.withOpacity(.6)),
                    Text('Terms and Privacy Policy', style: TextStyle(fontSize: 13, color: AppColors.whiteColor.withOpacity(.6), fontWeight: FontWeight.w600,
                        decorationColor: AppColors.whiteColor.withOpacity(.6), decoration: TextDecoration.underline
                    ),)
                  ],
                ),
                17.5.ht,
                Container(
                  height: 45, width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Center(child: TextWidgetInterMedium(
                        title: 'Create Account', fontSize: 14, color: AppColors.whiteColor),
                    ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.blueBC),
                    ),
                  ),
                ),
                15.ht,
                const CustomDivider(title: 'or continue with', color: Colors.white, endIndent: 10, indent: 10,),
                15.ht,
                FieldContainer(
                  title: 'Sign Up with Google',
                  imageIcon: 'assets/images/google.png',
                  width: 255, height: 54,
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white20.withOpacity(.2),
                ),
                15.ht,
                FieldContainer(
                  title: 'Sign Up with Apple',
                  imageIcon: 'assets/images/apple.png',
                  width: 255, height: 54,
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white20.withOpacity(.2),
                ),
                15.ht,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account? ', style: TextStyle(fontSize: 12, color: AppColors.greyF7),),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Text('Sign In ', style: TextStyle(fontSize: 13, color: AppColors.greyF7, fontWeight: FontWeight.w600,
                        decorationColor: AppColors.whiteColor, decoration: TextDecoration.underline
                        ),)),
                    Text('now',style: TextStyle(fontSize: 12, color: AppColors.greyF7)),
                  ],
                ),
                const SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension heightOrWidth on  num {
  SizedBox get ht => SizedBox(height: toDouble());
  SizedBox get wt => SizedBox(width: toDouble());
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