import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/menu/menu.dart';
import 'package:tresorly/myvault/myvault.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/home_screen/messenger_screen.dart';
import 'package:tresorly/views/notification_screen/notifiction_screen.dart';

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
      // appBar: PreferredSize(preferredSize: Size(0, 100),
          // child: CustomAppBar(
          //   appBg_Color: Colors.transparent,
          //   // myImage: 'assets/images/mike_hand.png',
          //   // subTitle: 'Secure Your Digital Life!',
          //   actions: [
          //     // Container(
          //     //   height: 40, width: 40,
          //     //   decoration: const BoxDecoration(
          //     //     color: AppColors.whiteColor,
          //     //     shape: BoxShape.circle
          //     //   ),
          //     //   child: InkWell(
          //     //       onTap: (){
          //     //         Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
          //     //       },
          //     //       child: Column(
          //     //         children: [
          //     //           Padding(
          //     //             padding: const EdgeInsets.only(left: 25, top: 1),
          //     //             child: Badge(backgroundColor: Color(0XFF165290),),
          //     //           ),
          //     //           Image.asset('assets/icons/alert_icon.png',scale: 3.5,),
          //     //         ],
          //     //       )),
          //     // ),
          //     // 10.wt,
          //     // Container(
          //     //   height: 40, width: 40,
          //     //   decoration: const BoxDecoration(
          //     //       color: AppColors.whiteColor,
          //     //       shape: BoxShape.circle
          //     //   ),
          //     //   child: InkWell(
          //     //       onTap: (){
          //     //         Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
          //     //       },
          //     //       child: Image.asset('assets/icons/drawer_lines.png',scale: 3.5,)),
          //     // ),
          //     // 22.wt,
          //   ],
          // )),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background/images/bg.png'),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(AppColors.bgColor, BlendMode.color)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

           Padding(
             padding: const EdgeInsets.only(left: 22, right: 22, top: 36),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/mike_hand.png',height: 26, width: 122,),
                    const Text('Secure Your Digital Life!',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                 Spacer(),
                 Container(
                   height: 40, width: 40,
                   decoration: const BoxDecoration(
                       color: AppColors.whiteColor,
                       shape: BoxShape.circle
                   ),
                   child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                       },
                       child: Column(
                         children: [
                           const Padding(
                             padding: EdgeInsets.only(left: 25, top: 1),
                             child: Badge(backgroundColor: Color(0XFF165290),),
                           ),
                           Image.asset('assets/icons/alert_icon.png',scale: 3.5,),
                         ],
                       )),
                 ),
                 10.wt,
                 Container(
                   height: 40, width: 40,
                   decoration: const BoxDecoration(
                       color: AppColors.whiteColor,
                       shape: BoxShape.circle
                   ),
                   child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Menu()));
                       },
                       child: Image.asset('assets/icons/drawer_lines.png',scale: 3.5,)),
                 ),
                 22.wt,

               ],
             ),
           ),

            Center(child: Image.asset('assets/images/percen.png', width: 270, height: 270,)),
            Flexible(
              child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight:  Radius.circular(40)),
                color: Color(0xFFF0F4F7),

              ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: AppColors.balck60.withOpacity(.6), size: 25,),
                            fillColor: Colors.white, filled: true,
                            hintText: 'Search your vaults',
                            isDense: true,
                            hintStyle:  TextStyle(color: AppColors.balck60.withOpacity(.6),
                                fontWeight: FontWeight.w400, fontSize: 14,),
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
                      subtitle: '\n18 password ',
                      subtitleStyle: TextStyle(fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                    CustomContainerH(
                      image:  AppConstants.starIcon,
                      title: 'Mobile App\n',
                      titleStyle: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
                      subtitle: '\n12 password',
                      subtitleStyle: TextStyle(fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                    CustomContainerH(
                      image:  AppConstants.paymentIcon,
                      title: 'Payment\n',
                      titleStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                      subtitle: '\n   Free Trial',
                      subtitleStyle:TextStyle( fontSize: 10, color: Color(0XFF757784), fontWeight: FontWeight.w400),
                    ),
                  ],),
                  const SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.only(left: 25, right: 20),
                   child: Row(
                     children: [
                       TextWidgetInterBold(title: 'Recently Used', fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                       const Spacer(),
                       GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const MyVault()));
                           },
                           child: Padding(
                             padding: const EdgeInsets.only(right: 8),
                             child: TextWidgetInterBold(title: 'See More', fontSize: 16, color: const Color(0XFF757784)),
                           ))
                     ],
                   ),
                 ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNetflix()));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 80, width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Container(
                                  height: 60, width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0XFFF0F4F7),
                                  ),
                                  child: Image.asset('assets/netf.png', scale: 4, )),
                              SizedBox(width: 25,),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                TextWidgetInterMedium(title: 'Netflix', fontSize: 16, color: Color(0XFF171F46), fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular'),
                                                TextWidgetInterRegular(title: 'info@innopulse.io', fontSize: 12, color: Color(0XFF171F46), fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular'),
                                                Row(
                                                  children: [
                                                    TextWidgetInterRegular(title: '********', fontSize: 12, color: Color(0XFF757784), fontWeight: FontWeight.w500, ),
                                                    const SizedBox(width: 14,),
                                                    const Icon(Icons.remove_red_eye, color: Color(0XFF47495B), size: 12,)
                                                  ],

                                            ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Image.asset(AppConstants.copyIcon, height: 22,width: 22),
                              SizedBox(width: 10,),
                              const Icon(Icons.favorite, color: Colors.red,size: 20,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailNetflix()));
                      },
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 80, width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 60, width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0XFFF0F4F7),
                                  ),
                                  child: Image.asset('assets/mesg.png', scale: 4, )),
                              SizedBox(width: 25,),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidgetInterMedium(title: 'Messenger', fontSize: 16, color: Color(0XFF171F46), fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular'),
                                    TextWidgetInterRegular(title: 'info@innopulse.io', fontSize: 12, color: Color(0XFF171F46), fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular'),
                                    Row(
                                      children: [
                                        TextWidgetInterRegular(title: '********', fontSize: 12, color: Color(0XFF757784), fontWeight: FontWeight.w500, ),
                                        const SizedBox(width: 14,),
                                        const Icon(Icons.remove_red_eye, color: Color(0XFF47495B), size: 12,),

                                      ],

                                    ),

                                  ],
                                ),
                              ),
                      SizedBox(width: 25,),
                              Padding(
                                padding: const EdgeInsets.only(left: 70, top: 10),
                                child: Image.asset(AppConstants.addIcon,  height: 72,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: ListView.builder(
                    //     padding: EdgeInsets.zero,
                    //     itemCount: 2,
                    //     itemBuilder: (context, index) {
                    //     return InkWell(
                    //         onTap: (){
                    //           if (index == 0) {
                    //             Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailNetflix()));
                    //           } else {
                    //             Navigator.push(context, MaterialPageRoute(builder: (context) => const MessengerScreen()));
                    //           }
                    //         },
                    //       child: SizedBox(
                    //         width: double.infinity,
                    //         child: ListTile(
                    //           // contentPadding: EdgeInsets.zero,
                    //           tileColor: Colors.red,
                    //           title: TextWidgetInterMedium(title: '${leadingTile[index]}', fontSize: 16),
                    //           subtitle: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               TextWidgetInterRegular(title: 'info@innopulse.io', fontSize: 12),
                    //               Row(
                    //                 children: [
                    //                   TextWidgetInterRegular(title: '********', fontSize: 16),
                    //                   const SizedBox(width: 14,),
                    //                   const Icon(Icons.remove_red_eye, color: AppColors.balck80, size: 15,)
                    //                 ],
                    //               )
                    //             ],
                    //           ),
                    //           leading: AppConstants.leadingTile[index],
                    //           trailing: SizedBox(
                    //             width: 50,
                    //             child: index == 0 ? Row(children: [
                    //               AppConstants.trailingTile1[0],
                    //               const SizedBox(width: 8,),
                    //               AppConstants.trailingTile1[1],
                    //             // ],) : AppConstants.trailingTile2[0],
                    //             ],) : Stack(
                    //               alignment: Alignment.centerRight,
                    //               children: [
                    //                 Container(height: 55,width: 55, child: const Icon(Icons.add, color: Colors.white, size: 30,),
                    //                   decoration: const BoxDecoration(
                    //                       shape: BoxShape.circle,
                    //                       gradient: LinearGradient(colors: [Color(0XFF165290), Color(0XFF168DBC)])
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //
                    //           ),
                    //         ),
                    //       ),
                    //     );
                    //   },),
                    // )
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
      width: 112, height: 130,
      decoration: BoxDecoration(
        color: const Color(0XFFFFFFFF),
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
                    style: subtitleStyle,)
                ]

            )),
          ],
        ),
      ),
    );
  }
}
