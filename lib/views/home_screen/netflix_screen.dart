import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/auth_screens/login_screen/base/appBar.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/change_password/change_password.dart';

import '../../base/text_widget.dart';

class DetailNetflix extends StatefulWidget {
  const DetailNetflix({super.key});

  @override
  State<DetailNetflix> createState() => _DetailNetflixState();
}

class _DetailNetflixState extends State<DetailNetflix> {
  // double _value = 8;
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyF7,
      appBar:  PreferredSize(preferredSize: Size(10, 100),
          child: Padding(
            padding: EdgeInsets.only(left: 0, right: 25),
            child: CustomAppBar(
              appBg_Color: Colors.transparent,
              myTitle: 'Details',
              leadingIcon: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                    minRadius: 10,
                    maxRadius: 40,
                    backgroundColor: AppColors.whiteColor,
                    child: BackButton(
                      color: Colors.black,
                      style: ButtonStyle(
                          iconSize: MaterialStateProperty.all<double>(25)),
                    )),
              ),
              actions: [
                  Container(
                      width: 25, height: 25,
                      child: Icon(Icons.favorite, color: Colors.red, size: 15,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  ),
              ],

            ),
          )),

      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 45, top: 20),
           child: Row(
             children: [
               Container(
                   height: 69, width: 73,
                   color: AppColors.whiteColor,
                   child: Image.asset(AppConstants.netflixIcon, scale: 3,)),
              16.wt,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidgetInterMedium(title: 'Netflix', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0XFF171F46)),
                  TextWidgetInterRegular(title: 'info@innopulse.io', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF171F46)),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      Icon(Icons.star, color: Color(0XFF757784),size: 12,),
                      SizedBox(width: 15,),
                      Icon(Icons.remove_red_eye,color: Color(0XFF757784), size: 18,),
                    ],
                  ),
                ],
              ),
               Spacer(),
               Padding(
                 padding: const EdgeInsets.only(right: 25),
                 child: Row(
                   children: [
                     Image.asset(AppConstants.copyIcon, height: 18,width: 18,  color: AppColors.greyColor,),
                     Image.asset(AppConstants.shareIcon, height: 18,width: 18, color: AppColors.greyColor),

                   ],
                 ),
               )
             ],
           ),
         ),


          Center(child: Image.asset('assets/images/percen.png', width: 270, height: 270,)),
          Expanded(
            child: Container(
              height: 944, width: 375,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                color: Color(0xFFFFFFFF),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 42, bottom: 20, left: 90, right: 90),
                      child: TextWidgetInterMedium(title: 'Score Summary', fontSize: 24, fontWeight: FontWeight.w600, color: Color(0XFF17508F)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidgetInterMedium(
                              title: 'Password Strength', fontSize: 14, fontWeight: FontWeight.w500,
                              color: AppColors.blue8F, align: TextAlign.start
                          ),
                          const SizedBox(height: 8,),
                          TextWidgetInterMedium(
                              title: 'Password can be made stronger by increasing the\n'
                                  'characters and using combination of numbers, special\n'
                                  'characters and uppercase letters',
                              fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.blue8F,
                              align: TextAlign.start
                          ),
                          25.ht,
                          Center(child: Image.asset('assets/background/icons/seekBar.png', width: 144,height: 144,)),
                          Row(
                            children: [
                              Image.asset(AppConstants.loopIcon, height: 18,width: 18),
                              const SizedBox(width: 10,),
                              TextWidgetInterMedium(
                                  title: 'Reuse of Password',
                                  fontSize: 14, fontWeight: FontWeight.w500,
                                  color: AppColors.blue8F, align: TextAlign.start
                              ),
                            ],
                          ),
                          const SizedBox(height: 8,),
                          TextWidgetInterMedium(
                              title: 'Password reuse poses significant security risks, putting your\n'
                                     'personal information and identity at risk of\n'
                                     'being compromised.',
                              fontSize: 10, fontWeight: FontWeight.w400,
                              color: AppColors.blue8F, align: TextAlign.start
                          ),
                          const SizedBox(height: 25),

                         Stack(
                           clipBehavior: Clip.none,
                           children: [

                             Container(
                               height: 4, width: 300,
                               decoration: BoxDecoration( shape: BoxShape.values[0],
                                   gradient: LinearGradient
                                     (colors: [Color(0XFFE5201B),Color(0XFF34A853),Color(0XFF168DBC).withOpacity(.5), Color(0XFF168DBC).withOpacity(.5) ])
                               ),
                             ),

                             Positioned(
                               right: 100,
                               top: -12, // Adjust this value to vertically center the CircleAvatar on the container
                               child: Container(
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.white, // CircleAvatar background color
                                   boxShadow: [
                                     BoxShadow(
                                       color: Colors.black.withOpacity(0.5), // Shadow color
                                       spreadRadius: 1, // Spread radius
                                       blurRadius: 5, // Blur radius
                                       offset: Offset(0, 3), // Offset in the downward direction
                                     ),
                                   ],
                                 ),
                                 child: CircleAvatar(
                                   radius: 12, // Adjust the radius as needed
                                   backgroundColor: Colors.transparent, // Make the background transparent as it's set in the container
                                 ),
                               ),
                             ),
                           ],
                         ),

                        SizedBox(height: 10,),

                          // Container(
                          //   height: 4,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.values[0],
                          //     gradient: LinearGradient(colors: [Colors.white, Colors.white, Colors.red, Colors.brown])
                          //   ),
                          //   child: Slider(
                          //     min: 1,
                          //     max: 10,
                          //     value: _value, // Use _value variable
                          //     // activeColor: Colors.red,
                          //     // inactiveColor: Color(0XFF168DBC).withOpacity(.5),
                          //     onChanged: (value) => setState(() {
                          //       _value = value; // Update the _value variable
                          //     }),
                          //     label: 'Strong',
                          //     thumbColor: AppColors.whiteColor,
                          //     // overlayColor:MaterialStateProperty.all(AppColors.greenColor),
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Text('Strong', style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(.5),
                                  blurRadius: 15,
                                  offset: Offset(02, 03)
                                )
                              ]
                            ),),
                          ),
                          20.ht,


                          Row(
                            children: [
                              Image.asset(AppConstants.dotCalendarIcon, scale: 3.5,),
                              SizedBox(width: 10,),
                              TextWidgetInterMedium(title: 'Age of password', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF17508F)),
                              Spacer(),
                              Container(
                                height: 20, width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0XFF34A853).withOpacity(.20),
                                ),
                                child: Center(child: TextWidgetInterMedium(title: 'Strong Password', fontSize: 8, color: Color(0XFF34A853), fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              TextWidgetInterMedium(title: 'Last Updated: ', fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFF17508F)),
                              SizedBox(width: 2,),
                              TextWidgetInterMedium(title: '23/07/2022 ', fontSize: 10, fontWeight: FontWeight.w400, color: Color(0XFF17508F).withOpacity(.6)),
                            ],
                          ),
                          SizedBox(height: 25,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppConstants.vulnerabilityIcon, scale: 3.5,),
                                  SizedBox(width: 10,),
                                  TextWidgetInterBold(title: 'Vulnerability ', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF17508F))
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Image.asset(AppConstants.tick_Icon, scale: 3.5,),
                                  SizedBox(width: 7,),
                                  TextWidgetInterBold(title: 'Secure Password ', fontSize: 10, fontWeight: FontWeight.w400, color: Color(0XFF34A853))
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Image.asset(AppConstants.auth_Icon, scale: 3.5,),
                              SizedBox(width: 10,),
                              TextWidgetInterMedium(title: '2FA Status', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF17508F)),
                              Spacer(),
                              Switch(
                              value: val,
                              onChanged: (value)
                              => {setState(() {
                              val = !val;
                              })},
                              activeColor: Color(0XFF168DBC),
                              activeTrackColor: Color(0XFF168DBC),
                              inactiveTrackColor: Colors.grey.withOpacity(.15),
                              thumbColor: val ? MaterialStateProperty.all(Colors.white54) : MaterialStateProperty.all(Colors.white12),
                              ),

                            ],
                          ),
                          Row (
                            children: [
                              TextWidgetInterMedium(
                                  title: 'Add an extra layer of security to your accounts by'
                                      ' \nenabling two-factor authentication (2FA).',
                                  fontSize: 10, fontWeight: FontWeight.w400, color: Color(0XFF17508F)),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: TextWidgetInterMedium(title: 'Enabled', fontSize: 8, fontWeight: FontWeight.w400, color: Color(0XFF17508F)),
                              )
                            ],
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 60, right: 50, bottom: 15, top: 40),
                            child: TextWidgetInterMedium(
                                title: 'Recommendations',
                                fontSize: 22  , fontWeight: FontWeight.w600,
                                color: AppColors.blue8F, align: TextAlign.start
                            ),
                          ),
                          TextWidgetInterMedium(
                              title: 'Update your password to a strong and unique '
                                  '\ncombination to protect your account from'
                                  ' \nunauthorized access.',
                              fontSize: 12,
                              color: Color(0XFF17508F), align: TextAlign.start
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 15),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 25),
                                  height: 40, width: 150,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Color(0XFF165290), Color(0XFF168DBC)]),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(child: TextWidgetInterMedium(title: 'Change Password', fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFFF0F4F7)))
                                ),
                              ),
                            ),
                          ),
                          
                          30.ht,
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
