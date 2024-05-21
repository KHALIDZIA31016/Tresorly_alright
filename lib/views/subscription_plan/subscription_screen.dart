import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';

import '../../base_h/customAppBar.dart';
import '../../utils/my_size.dart';

class SubscriptionPlan extends StatefulWidget {
  const SubscriptionPlan({super.key});

  @override
  State<SubscriptionPlan> createState() => _SubscriptionPlanState();
}

class _SubscriptionPlanState extends State<SubscriptionPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.size72),
        child: Padding(
          padding: EdgeInsets.only(left: MySize.size25, top: MySize.size25),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomAppBar(
              text: 'Subscription Plans',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),

      backgroundColor: AppColors.greyF7,
      body: Padding(
        padding: const EdgeInsets.only(left: 37, right: 38, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 480,width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/background/images/subs_bg.png'),
                  fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 25, width: 120,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            color: Color(0XFF168DBC)
                        ),
                        child: Center(child: TextWidgetInterRegular(
                            title: '14 Days Free Trial', fontSize: 8,
                            fontWeight: FontWeight.w500, color: Color(0XFFFFFFFF))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 18, top: 20),
                      child: TextWidgetInterMedium(title: 'Tresorly Password Manager\nSubscription Features', fontSize: 16, color: const Color(0XFFF0F4F7), fontWeight: FontWeight.w600),
                    ),
                    const CustomListTile(
                      title: 'Unlimited Password Storage',
                      imageIcon: 'assets/images/unlimited_pass.png',
                    ),
                    const CustomListTile(
                      title: 'AES-256 Encryption',
                      imageIcon: 'assets/images/encrypt.png',
                    ),
                    const CustomListTile(
                      title: 'Biometric Access',
                      imageIcon: 'assets/images/face_id.png',
                    ),
                    const CustomListTile(
                      title: 'Auto Password Generation',
                      imageIcon: 'assets/images/auto_pass.png',
                    ),
                    const CustomListTile(
                      title: 'Autofill and Auto-login',
                      imageIcon: 'assets/images/auto_fill.png',
                    ),
                    const CustomListTile(
                      title: 'Secure Sharing',
                      imageIcon: 'assets/images/secure_share.png',
                    ),
                    const CustomListTile(
                      title: 'Multi-Device Sync',
                      imageIcon: 'assets/images/multi_device.png',
                    ),
                    const CustomListTile(
                      title: 'Data Breach Alerts',
                      imageIcon: 'assets/images/breach_alert.png',
                    ),
                    const CustomListTile(
                      title: 'Two Factor Authentication',
                      imageIcon: 'assets/images/2FA.png',
                    ),
                    const CustomListTile(
                      title: 'Priority Support',
                      imageIcon: 'assets/images/support.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              TextWidgetInterBold(title: 'Trial Period', fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.blue8F),
              SizedBox(height: 15,),
              RichText(text: const TextSpan(
               text: '14-Day Free Trial: ',
                 style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.blue8F),
               children: [
                 TextSpan( text: ' Users can access all the '
                     'features of the full plan during the trial period without any restrictions',
                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue8F),),
          
                 TextSpan( text: '\n\nNo Commitment:',
                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color:AppColors.blue8F),),
                 TextSpan( text: ' Users can cancel anytime during the trial period without being charged.',
                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue8F),),
          
                 TextSpan( text: '\n\nAutomatic Transition:',
                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.blue8F),),
                 TextSpan( text: '  If not cancelled, the trial automatically converts into the chosen '
                                 'subscription type (monthly or yearly) at the end of the trial period.',
                   style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue8F),),
               ]
          
             )),
              SizedBox(height: 15,),


              Center(
                child: Container(
                  height: 245, width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.whiteColor
                  ),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Align(
                         alignment: Alignment.centerLeft,
                         child: Container(
                           height: 25, width: 120,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                               color: AppColors.blueBC
                           ),
                           child: Center(child: TextWidgetInterRegular(
                               title: '14 Days Free Trial', fontSize: 8,
                               fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 25, top: 13, bottom: 6),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             TextWidgetInterBold(title: 'Monthly Subscription', fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                             TextWidgetInterRegular(title: 'Have to pay for two months extra in a year compared to yearly plan',
                                 fontSize: 5, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                             TextWidgetInterRegular(title: '2.45 CHF',
                                 fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.blue8F),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 23, bottom: 35),
                         child: Align(
                           alignment: Alignment.centerRight,
                           child: Container(
                             width: 75,height: 22,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(5),
                               color: AppColors.blueBC
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(child: TextWidgetInterMedium(title: 'Get Now', fontSize: 8, fontWeight: FontWeight.w400, color: AppColors.greyF7)),
                                 const Icon(Icons.arrow_forward, size: 7,color: AppColors.greyF7)
                               ],
                             ),
                           ),
                         ),
                       ),
                       Align(
                         alignment: Alignment.centerLeft,
                         child: Container(
                           height: 25, width: 120,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                               color: Color(0XFF168DBC)
                           ),
                           child: Center(child: TextWidgetInterRegular(
                               title: '14 Days Free Trial', fontSize: 8,
                               fontWeight: FontWeight.w500, color: AppColors.greyF7)),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 25, top: 13, bottom: 6),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             TextWidgetInterBold(title: '(Yearly Subscription)', fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                             TextWidgetInterRegular(title: 'offering a savings equivalent to two months free compared to the monthly rate',
                                 fontSize: 5, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                             TextWidgetInterRegular(title: '24.50 CHF',
                                 fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.blue8F),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 23, bottom: 35),
                         child: Align(
                           alignment: Alignment.centerRight,
                           child: Container(
                             width: 75,height: 22,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: AppColors.blueBC
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(child: TextWidgetInterMedium(title: 'Cancel Now', fontSize: 8, fontWeight: FontWeight.w400, color: Color(0XFFF0F4F7))),
                                 const Icon(Icons.arrow_forward, size: 7,color: AppColors.greyF7)
                               ],
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.imageIcon,
  });

  final String title;
  final String imageIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        dense: true,
        // contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(vertical: -4),
        title: TextWidgetInterRegular(
            title: title,
            fontSize: 12, color: AppColors.greyF7,
            fontWeight: FontWeight.w400),
        leading: Image.asset(imageIcon, width: 16, height: 16,),
      ),
    );
  }
}
