// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:tresorly/base/text_widget.dart';
// import 'package:tresorly/views/accessibility_screen/accessibility_screen.dart';
// import 'package:tresorly/views/biliing_history/billing_history.dart';
// import 'package:tresorly/views/forgot_password/update_password.dart';
// import 'package:tresorly/views/language_selection/language_selection.dart';
// import 'package:tresorly/views/legal_regulatory/legal_regulatory.dart';
// import 'package:tresorly/views/notification_screen/notifiction_screen.dart';
// import 'package:tresorly/views/payment_method/payment_screen.dart';
// import 'package:tresorly/views/security_privacySetting/security_privacy.dart';
// import 'package:tresorly/views/subscription_plan/subscription_screen.dart';
// import '../../utils/my_size.dart';
// import '../authentication/authentication.dart';
// import '../base_h/customAppBar.dart';
// import '../datamanagement/datamanagement.dart';
// import '../editprofile/editprofile.dart';
// import '../helpandsupport/helpandsupport.dart';
// import '../utils/app_colors/app_colors.dart';
// import '../utils/app_constants/app_constant.dart';
// import '../views/change_password/change_password.dart';
// import 'base/menurow.dart';
// import 'base/showdialog.dart';
//
// class Menu extends StatelessWidget {
//   const Menu({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundF7,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(MySize.size42),
//         child: Padding(
//           padding: EdgeInsets.only(left: MySize.size20),
//           child: GestureDetector(
//             onTap: (){
//               Navigator.pop(context);
//             },
//             child: const CustomAppBar(
//               text: 'Menu',
//               icon: Icons.arrow_back_rounded,
//             ),
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Column(
//             children: [
//               SizedBox(
//                 height: MySize.size20,
//               ),
//               Stack(
//                 children: [
//                   Center(
//                     child: AppConstants.profileLogo,
//                   ),
//                   Positioned(
//                     top: 115,
//                     left: 215,
//                     child: Container(
//                       height: MySize.size30,
//                       width: MySize.size30,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: AppColors.whiteFF,
//                       ),
//                       child: Center(
//                         child: Icon(
//                           Icons.mode_edit_outlined,
//                           color: AppColors.darkBlue46,
//                           size: MySize.size18,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: MySize.size12,
//               ),
//               TextWidgetInterBold(
//                 title: 'Mike Stark',
//                 color: AppColors.darkBlue46,
//                 fontSize: MySize.size20,
//                 fontWeight: FontWeight.w500,
//               ),
//               SizedBox(
//                 height: MySize.size4,
//               ),
//               TextWidgetInterBold(
//                 title: 'mikestark@gmail.com',
//                 color: AppColors.darkBlack21.withOpacity(.5),
//                 fontSize: MySize.size14,
//                 fontWeight: FontWeight.w400,
//               ),
//               SizedBox(
//                 height: MySize.size30,
//               ),
//               SizedBox(
//                 height: MySize.scaleFactorHeight * 630,
//                 width: MySize.scaleFactorWidth * 286,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     TextWidgetInterBold(
//                       title: 'Account Settings',
//                       color: AppColors.darkBlue46,
//                       fontSize: MySize.size14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => const EditProfile()),
//                           );
//                         },
//                       child: MenuRow(
//                         title: 'edit profile',
//                         image: const AssetImage(AppConstants.editProfileLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const ChangePassword()), // aslmi
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Change Password',
//                         image: const AssetImage(AppConstants.changePasswordLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const Authentication()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Authentication Options',
//                         image: const AssetImage(AppConstants.authenticationLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     TextWidgetInterBold(
//                       title: 'Subscription and Payment',
//                       color: AppColors.darkBlue46,
//                       fontSize: MySize.size14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SubscriptionPlan()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Subscription Plans',
//                         image: const AssetImage(AppConstants.moneyLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const PaymentScreen()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Payment Methods',
//                         image: const AssetImage(AppConstants.paymentLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const BillingHistory()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Billing History',
//                         image: const AssetImage(AppConstants.historyLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     TextWidgetInterBold(
//                       title: 'General Settings',
//                       color: AppColors.darkBlue46,
//                       fontSize: MySize.size14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const SecurityAndPrivacySetting()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Security & Privacy',
//                         image: const AssetImage(AppConstants.securityLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const NotificationScreen()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Notifications',
//                         image: const AssetImage(AppConstants.notificationLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const LanguageSelection()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Language ',
//                         image: const AssetImage(AppConstants.languageLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => const DataManagement()),
//                           );
//                       },
//                       child: MenuRow(
//                         title: 'Data Management',
//                         image: const AssetImage(AppConstants.dataLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const AccessibilityScreen()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Customization & Accessibility',
//                         image: const AssetImage(AppConstants.customizationLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => const HelpAndSupport()),
//                           );
//                       },
//                       child: MenuRow(
//                         title: 'Help & Support',
//                         image: const AssetImage(AppConstants.helpCenterLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const LegalRegulatoryScreen()),
//                         );
//                       },
//                       child: MenuRow(
//                         title: 'Legal and Regulatory',
//                         image: const AssetImage(AppConstants.legalLogo),
//                       ),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     const ShowDialogBox(),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     const Divider(
//                       thickness: 1,
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                     MenuRow(
//                       title: 'Logout',
//                       image: const AssetImage(
//                         AppConstants.logoutLogo,
//                       ),
//                       color2: AppColors.red1B,
//                       color: AppColors.red1B.withOpacity(.5),
//                     ),
//                     SizedBox(
//                       height: MySize.size12,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: MySize.size30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextWidgetInterBold(
//                       title: 'Follow us:',
//                       fontSize: MySize.size14,
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.blueBC.withOpacity(.5)),
//                   SizedBox(
//                     width: MySize.size12,
//                   ),
//                   Image.asset(AppConstants.linkedinLogo),
//                   SizedBox(
//                     width: MySize.size12,
//                   ),
//                   Image.asset(
//                     AppConstants.instaLogo,
//                   ),
//                   SizedBox(
//                     width: MySize.size12,
//                   ),
//                   Image.asset(
//                     AppConstants.twitterLogo,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MySize.size30,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/views/accessibility_screen/accessibility_screen.dart';
import 'package:tresorly/views/biliing_history/billing_history.dart';
import 'package:tresorly/views/language_selection/language_selection.dart';
import 'package:tresorly/views/legal_regulatory/legal_regulatory.dart';
import 'package:tresorly/views/notification_screen/notifiction_screen.dart';
import 'package:tresorly/views/payment_method/payment_screen.dart';
import 'package:tresorly/views/security_privacySetting/security_privacy.dart';
import 'package:tresorly/views/subscription_plan/subscription_screen.dart';
import '../../utils/my_size.dart';
import '../authentication/authentication.dart';
import '../base_h/customAppBar.dart';
import '../datamanagement/datamanagement.dart';
import '../editprofile/editprofile.dart';
import '../helpandsupport/helpandsupport.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_constants/app_constant.dart';
import '../views/change_password/change_password.dart';
import 'base/menurow.dart';
import 'base/showdialog.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundF7,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.size72),
        child: Padding(
          padding: EdgeInsets.only(left: MySize.size25, top: MySize.size25),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomAppBar(
              text: 'Menu',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MySize.size20,
              ),
              Stack(
                children: [
                  Center(
                    child: AppConstants.profileLogo,
                  ),
                  Positioned(
                    top: 115,
                    left: 215,
                    child: Container(
                      height: MySize.size30,
                      width: MySize.size30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.whiteFF,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.mode_edit_outlined,
                          color: AppColors.darkBlue46,
                          size: MySize.size18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MySize.size12,
              ),
              TextWidgetInterBold(
                title: 'Mike Stark',
                color: AppColors.darkBlue46,
                fontSize: MySize.size20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: MySize.size4,
              ),
              TextWidgetInterBold(
                title: 'mikestark@gmail.com',
                color: AppColors.darkBlack21.withOpacity(.5),
                fontSize: MySize.size14,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: MySize.size30,
              ),
              SizedBox(
                height: MySize.scaleFactorHeight * 630,
                width: MySize.scaleFactorWidth * 286,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextWidgetInterBold(
                      title: 'Account Settings',
                      color: AppColors.darkBlue46,
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()),
                        );
                      },
                      child: MenuRow(
                        title: 'Edit Profile',
                        image: const AssetImage(AppConstants.editProfileLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePassword()),
                        );
                      },
                      child: MenuRow(
                        title: 'Change Password',
                        image: const AssetImage(
                            AppConstants.changePasswordLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Authentication()),
                        );
                      },
                      child: MenuRow(
                        title: 'Authentication Options',
                        image: const AssetImage(
                            AppConstants.authenticationLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    TextWidgetInterBold(
                      title: 'Subscription and Payment',
                      color: AppColors.darkBlue46,
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SubscriptionPlan()),
                        );
                      },
                      child: MenuRow(
                        title: 'Subscription Plans',
                        image: const AssetImage(AppConstants.moneyLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentScreen()),
                        );
                      },
                      child: MenuRow(
                        title: 'Payment Methods',
                        image: const AssetImage(AppConstants.paymentLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BillingHistory()),
                        );
                      },
                      child: MenuRow(
                        title: 'Billing History',
                        image: const AssetImage(AppConstants.historyLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    TextWidgetInterBold(
                      title: 'General Settings',
                      color: AppColors.darkBlue46,
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecurityAndPrivacySetting()),
                        );
                      },
                      child: MenuRow(
                        title: 'Security & Privacy',
                        image: const AssetImage(AppConstants.securityLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationScreen()),
                        );
                      },
                      child: MenuRow(
                        title: 'Notifications',
                        image: const AssetImage(AppConstants.notificationLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LanguageSelection()),
                        );
                      },
                      child: MenuRow(
                        title: 'Language ',
                        image: const AssetImage(AppConstants.languageLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DataManagement()),
                        );
                      },
                      child: MenuRow(
                        title: 'Data Management',
                        image: const AssetImage(AppConstants.dataLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccessibilityScreen()),
                        );
                      },
                      child: MenuRow(
                        title: 'Customization & Accessibility',
                        image: const AssetImage(AppConstants.customizationLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpAndSupport()),
                        );
                      },
                      child: MenuRow(
                        title: 'Help & Support',
                        image: const AssetImage(AppConstants.helpCenterLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LegalRegulatoryScreen()),
                        );
                      },
                      child: MenuRow(
                        title: 'Legal and Regulatory',
                        image: const AssetImage(AppConstants.legalLogo),
                      ),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    const ShowDialogBox(),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                    MenuRow(
                      title: 'Logout',
                      image: const AssetImage(
                        AppConstants.logoutLogo,
                      ),
                      color2: AppColors.red1B,
                      color: AppColors.red1B.withOpacity(.5),
                    ),
                    SizedBox(
                      height: MySize.size12,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidgetInterBold(
                      title: 'Follow us:',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blueBC.withOpacity(.5)),
                  SizedBox(
                    width: MySize.size12,
                  ),
                  Image.asset(AppConstants.linkedinLogo),
                  SizedBox(
                    width: MySize.size12,
                  ),
                  Image.asset(
                    AppConstants.instaLogo,
                  ),
                  SizedBox(
                    width: MySize.size12,
                  ),
                  Image.asset(
                    AppConstants.twitterLogo,
                  ),
                ],
              ),
              SizedBox(
                height: MySize.size30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
