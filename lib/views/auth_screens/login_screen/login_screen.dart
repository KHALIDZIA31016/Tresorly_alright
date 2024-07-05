import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/forgot_password/forget_password.dart';
import 'package:tresorly/views/getting_started/base/custom_divider.dart';
import 'package:tresorly/views/getting_started/base/field_container.dart';
import 'package:tresorly/views/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // backgroundColor: AppColors.bgColor,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/background/Sign.png'),
              fit: BoxFit.cover
              ,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 125,),
                TextWidgetInterMedium(title: 'Sign in', fontSize: 26, color: AppColors.whiteColor, FontFamily: 'Poppins-Regular'),
                const SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Icon(Icons.mail, color: AppColors.greyF7.withOpacity(.5), size: 18,),
                      hintText: 'Email',
                      fillColor: Colors.white.withOpacity(.1),
                      isDense: true,
                      filled: true,
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.5), fontSize: 14,
                          fontWeight: FontWeight.w400, fontFamily: 'Poppins-Regular'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.5), size: 18,),
                      hintText: 'Password',
                      fillColor: AppColors.whiteColor.withOpacity(.1),
                      isDense: true,
                      filled: true,
                      hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.5), fontSize: 14,
                          fontWeight: FontWeight.w400, fontFamily: 'Poppins-Regular'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),

                SizedBox(height: 10,),
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                        },
                        child: Text('Forgot Password?', style: TextStyle(
                          fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFF0F4F7).withOpacity(.7),
fontFamily: 'Poppins-Regular'
                        ),) )),
                SizedBox(height: 15,),
                Container(
                  height: 45, width: 112,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Center(child: TextWidgetInterMedium(
                          title: 'Sign in', fontSize: 14, color: AppColors.whiteColor,FontFamily: 'Poppins-Regular'),
                      ),
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.blueBC),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                CustomDivider(title: 'or continue with', color: Color(0XFFF0F4F7).withOpacity(.7) , endIndent: 19, indent: 19,),
                SizedBox(height: 15,),
                FieldContainer(
                  title: 'Sign in with Google',
                  imageIcon: 'assets/images/google.png',
                  width: 275, height: 54,
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white20.withOpacity(.2),

                ),
                SizedBox(height: 15,),
                FieldContainer(
                  title: 'Sign in with Apple',
                  imageIcon: 'assets/images/apple.png',
                  width: 275, height: 54,
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.white20.withOpacity(.2),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account? ', style: TextStyle(fontSize: 12, color: AppColors.greyF7, fontFamily: 'Poppins-Regular'),),
                    GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                        },
                        child: Text('Sign up ', style: TextStyle(fontSize: 12, color: AppColors.greyF7, fontWeight: FontWeight.w600, decoration: TextDecoration.underline, decorationColor: Colors.white,),)),
                    Text('now',style: TextStyle(fontSize: 12, color: AppColors.greyF7, fontFamily: 'Poppins-Regular')),
                  ],
                ),
            
                SizedBox(height: 25,),
                Image.asset('assets/images/face_id.png', height: 88, width: 86, color: Color(0XFFF0F4F7),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
