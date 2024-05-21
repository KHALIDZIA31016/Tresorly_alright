import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/myvault/myvault.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/home_screen/messenger_screen.dart';

import '../auth_screens/login_screen/base/appBar.dart';
import 'netflix_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> leadingTile = ['Netflix', 'Messenger'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.whiteColor,
      appBar: PreferredSize(preferredSize: Size(0, 100),
          child: CustomAppBar(
            appBg_Color: Colors.transparent,
            myImage: 'assets/images/mike_hand.png',
            subTitle: 'Secure Your Digital Life!',
            actions: [
              Container(
                height: 40, width: 40,
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  shape: BoxShape.circle
                ),
                child: Image.asset('assets/icons/alert_icon.png',scale: 3.5,),
              ),
              10.wt,
              Container(
                height: 40, width: 40,
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle
                ),
                child: Image.asset('assets/icons/drawer_lines.png',scale: 3.5,),
              ),
              22.wt,
            ],
          )),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background/images/bg.png'),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 105,),
            Center(child: Image.asset('assets/images/percen.png', width: 230, height: 239,)),
            Flexible(
              child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight:  Radius.circular(40)),
                color: AppColors.greyF7,

              ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: AppColors.balck60.withOpacity(.6), size: 16,),
                            fillColor: const Color(0xFFF0F4F7), filled: true,
                            hintText: 'Search your vaults',
                            isDense: true,
                            hintStyle:  TextStyle(color: AppColors.balck60.withOpacity(.6),
                                fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Poppins'),
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none
                        )),
                      ),
                    ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    CustomContainerH(
                      image:  AppConstants.browsIcon,
                      title: 'Browser\n',
                      titleStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                      subtitle: '18 password ',
                      subtitleStyle: TextStyle(fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                    CustomContainerH(
                      image:  AppConstants.starIcon,
                      title: 'Mobile App\n',
                      titleStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
                      subtitle: '12 password',
                      subtitleStyle: TextStyle(fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                    CustomContainerH(
                      image:  AppConstants.paymentIcon,
                      title: 'Payment\n',
                      titleStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                      subtitle: 'Free Trial',
                      subtitleStyle:TextStyle(fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                  ],),
                  const SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.only(left: 20, right: 20),
                   child: Row(
                     children: [
                       TextWidgetInterBold(title: 'Recently Used', fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                       const Spacer(),
                       GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => MyVault()));
                           },
                           child: TextWidgetInterBold(title: 'see more', fontSize: 16, color: Color(0XFF757784)))
                     ],
                   ),
                 ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: (){
                                if (index == 0) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailNetflix()));
                                } else {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MessengerScreen()));
                                }
                              },
                            child: ListTile(
                              // tileColor: Colors.blue,
                              title: TextWidgetInterMedium(title: '${leadingTile[index]}', fontSize: 16),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextWidgetInterRegular(title: 'info@innopulse.io', fontSize: 12),
                                  Row(
                                    children: [
                                      TextWidgetInterRegular(title: '********', fontSize: 12),
                                      SizedBox(width: 10,),
                                      Icon(Icons.remove_red_eye, color: AppColors.balck80, size: 12,)
                                    ],
                                  )
                                ],
                              ),
                              leading: AppConstants.leadingTile[index],
                              trailing: SizedBox(
                                width: 70,
                                child: index == 0 ? Row(children: [
                                  AppConstants.trailingTile1[0],
                                  AppConstants.trailingTile1[1],

                                ],) : AppConstants.trailingTile2[0],

                              ),
                            ),
                          ),
                        );
                      },),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainerH extends StatelessWidget {
  const CustomContainerH({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.titleStyle,
    required this.subtitleStyle,
  });

  final String image;
  final String title;
  final String subtitle;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115, height: 130,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 14, bottom: 14),
        child: Column(
          children: [
            Image.asset(image, height: 43, width: 43,),
            const SizedBox(height: 14,),
            RichText(text: TextSpan(
                text: title,
                style: titleStyle,
                children: [
                  TextSpan(text: subtitle,
                    style: subtitleStyle)
                ]

            )),
          ],
        ),
      ),
    );
  }
}
