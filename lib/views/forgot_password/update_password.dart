import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';

import '../../utils/app_colors/app_colors.dart';
import '../auth_screens/login_screen/login_screen.dart';


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
            image: DecorationImage(image: AssetImage('assets/background/images/bg.png'), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 250,),
              TextWidgetInterMedium(title: 'Reset Password', fontSize: 28, color: Colors.white, FontFamily: 'Poppins-Regular'),
              SizedBox(height: 15,),
              TextWidgetInterRegular(title: 'Here’s a tip: Use a combination of'
                  '\nnumbers, uppercase, lowercase and \nspecial characters',
                fontSize: 13, color: AppColors.greyF7,
                fontWeight: FontWeight.w400,align: TextAlign.center,
                  FontFamily: 'Poppins-Regular'
              ),
              SizedBox(height: 25,),
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
                      borderSide: BorderSide.none,
                    )
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    suffixIcon: Icon(Icons.lock, color: AppColors.greyF7.withOpacity(.5), size: 18,),
                    hintText: 'Confirm Password',
                    fillColor: AppColors.whiteColor.withOpacity(.1),
                    filled: true,
                    isDense: true,
                    hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.5), fontSize: 14,
                        fontWeight: FontWeight.w400, fontFamily: 'Poppins-Regular'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    )
                ),
              ),

              SizedBox(height: 25,),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                  height: 50, width: 295,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0XFF168DBC), /*Secondary Color*/
                  ),
                  child: Center(child: TextWidgetInterRegular(title: 'Reset Password', fontSize: 16, color: Colors.white, FontFamily: 'Poppins-Regular')),
                ),
              ),
              // const SizedBox(height: 380,),
            ],
          ),
        ),
      ),
    );
  }
}
