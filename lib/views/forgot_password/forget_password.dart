// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tresorly/base/text_widget.dart';
// import 'package:tresorly/views/forgot_password/otp_verification.dart';
//
// import '../../utils/app_colors/app_colors.dart';
//
// class ForgotPassword extends StatefulWidget {
//   const ForgotPassword({super.key});
//
//   @override
//   State<ForgotPassword> createState() => _ForgotPasswordState();
// }
//
// class _ForgotPasswordState extends State<ForgotPassword> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(image: AssetImage('assets/background/images/bg.png'),
//                 fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
//             )
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 60, right: 60),
//           child: SingleChildScrollView(
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: 250,),
//                 TextWidgetInterMedium(title: 'Forgot Password?', fontSize: 26, color: Colors.white),
//                 SizedBox(height: 15,),
//                 TextWidgetInterRegular(title: 'Forgot Your Password? Don’t Worry we \nhave your back',
//                   fontSize: 12, color: AppColors.greyF7,
//                   fontWeight: FontWeight.w400, align: TextAlign.center,
//                 ),
//                 SizedBox(height: 25,),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       suffixIcon: Icon(Icons.mail, color: AppColors.greyF7.withOpacity(.5), size: 18,),
//                       hintText: 'Email',
//                       fillColor: AppColors.whiteColor.withOpacity(.1),
//                       filled: true,
//                       hintStyle: TextStyle(color: AppColors.greyF7.withOpacity(.5), fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                         borderSide: const BorderSide(color: Color(0XFFF0F4F7)),
//                       )
//                   ),
//                 ),
//                 SizedBox(height: 7,),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 3),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: TextWidgetInterRegular(title: 'A link will be sent to your email to reset \nyour password',
//                       fontSize: 12, color: AppColors.greyF7,
//                       fontWeight: FontWeight.w400, align: TextAlign.start,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 35,),
//                 GestureDetector(
//                   onTap:(){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerification()));
//                   },
//                   child: Container(
//                     height: 50, width: 295,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(7),
//                       color: AppColors.blueBC, /*Secondary Color*/
//                     ),
//                     child: Center(child: TextWidgetInterRegular(title: 'Send Recovery Link', fontSize: 16, color: AppColors.whiteColor, fontWeight: FontWeight.w500)),
//                   ),
//                 ),
//                 const SizedBox(height: 380,),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



/// 2nd time


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/my_size.dart';
import 'package:tresorly/views/forgot_password/otp_verification.dart';
import '../../base_h/buttoncontainer.dart';
import '../../base_h/customtextfield.dart';
import '../../myvault/myvault.dart';
import '../../utils/app_colors/app_colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff073b5c),
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background/Sign.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidgetInterBold(
                    title: 'Forgot Password?',
                    color: AppColors.greyF7,
                    fontWeight: FontWeight.w500,
                    FontFamily: 'Poppins-Regular',
                    fontSize: 28,
                  ),
                  SizedBox(
                    height: MySize.size10,
                  ),
                  TextWidgetInterBold(
                    title: 'Forgot Your Password? Don’t Worry we\nhave your back',
                    color: AppColors.greyF7,
                    fontWeight: FontWeight.w400,
                    fontSize: 12.5,
                    FontFamily: 'Poppins-Regular',
                    align: TextAlign.center,
                  ),
                  SizedBox(
                    height: MySize.size25,
                  ),
                  SizedBox(
                      width: MySize.scaleFactorWidth * 280,
                      height: MySize.scaleFactorHeight * 45,
                      child: const CustomTextField(
                        hintText: 'Email',
                        icon: Icons.email_rounded,
                      )
                  ),
                  SizedBox(
                    height: MySize.size5,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidgetInterBold(
                        title:
                        'A link will be sent to your email to reset\nyour password',
                        color: AppColors.greyF7,
                        fontWeight: FontWeight.w300,
                        FontFamily: 'Poppins-Regular',
                        fontSize: 13.5,
                        align: TextAlign.start,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MySize.size25,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OTPVerification()),
                        );
                      },
                      child: ButtonContainer(
                        height: MySize.scaleFactorHeight * 45,
                        width: MySize.scaleFactorWidth * 272,
                          title: 'Send Recovery Link',
                      )),
                ],
              ),
            ),
        ),
    );
  }
}
