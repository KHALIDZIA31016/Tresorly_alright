import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/views/home/components/custom_container_home.dart';
import 'package:tresorly/widgets/custom_list_tile.dart';
import 'package:tresorly/views/home/components/custom_small_container.dart';
import 'package:tresorly/widgets/custom_search_field.dart';
import 'package:tresorly/widgets/round_image_button.dart';

import '../productDetails/product_details_screen.dart';

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
      // resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   backgroundColor: AppColors.darkBlue46,
      //   scrolledUnderElevation: 0,
      //   leadingWidth: 200.w,
      //   leading: const Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text20(
      //         title: "Hello Mike 👋",
      //         fontWeight: FontWeight.w600,
      //       ),
      //       Text14(
      //         title: "Secure Your Digital Life!",
      //         fontWeight: FontWeight.w400,
      //       )
      //     ],
      //   ),
      //   actions: [
      //     SizedBox(
      //       width: 100.w,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           RoundImageButton(
      //             onPressed: () {},
      //             imagePath: AppImages.notificationSvg,
      //             showNotificationDot: true,
      //           ),
      //           RoundImageButton(
      //               onPressed: () {}, imagePath: AppImages.menuSvg),
      //         ],
      //       ),
      //     )
      //   ],
      //   // title: ListTile(
      //   //   // title: ,
      //   //   // subtitle: ,
      //   //   trailing: ,
      //   // ),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.simpleBg),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(AppColors.darkScaffold, BlendMode.color))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              15.ht,
              ListTile(
                title: const Text20(
                  title: "Hello Mike 👋",
                  fontWeight: FontWeight.w600,
                ),
                subtitle: const Text14(
                  title: "Secure Your Digital Life!",
                  fontWeight: FontWeight.w400,
                ),
                trailing: SizedBox(
                  width: 85.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundImageButton(
                        onPressed: () {},
                        imagePath: AppImages.notificationSvg,
                        showNotificationDot: true,
                      ),
                      RoundImageButton(
                          onPressed: () {}, imagePath: AppImages.menuSvg),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/percen.png',
                      width: 270,
                      height: 270,
                    )),
                    30.ht,
                    CustomContainerHome(
                        child: Column(
                      children: [
                        const SearchField(
                          hintText: 'Search your vaults',
                        ),
                        20.ht,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomSmallContainer(
                              image: AppImages.browseSvg,
                              title: 'Browser',
                              subtitle: '18 password ',
                            ),
                            CustomSmallContainer(
                              image: AppImages.mobileAppSvg,
                              title: 'Mobile App',
                              subtitle: '12 password',
                            ),
                            CustomSmallContainer(
                              image: AppImages.paymentSvg,
                              title: 'Payment',
                              subtitle: 'Free Trial',
                            ),
                          ],
                        ),
                        20.ht,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text16(
                              title: "Recently Used",
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkBlue46,
                            ),
                            Text12(
                              title: "See More",
                              fontWeight: FontWeight.w500,
                              color: AppColors.balck60,
                            ),
                          ],
                        ),
                        CustomListTile(
                          onTitleTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProductDetailsScreen()));
                          },
                          onVisibilityTap: (){},
                          onIcon1Tap: (){},
                          onIcon2Tap: (){},
                          title: 'Netflix',
                          subtitle1: 'info@innopulse.io',
                          subtitle2: '**************',
                          imagePath: 'assets/netf.png',
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){},
        child: Container(
          height: 52.h,
          width: 52.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  AppColors.darkBlue46,
                  AppColors.blueBC,
                ])
          ),
          child: const Center(
            child: Icon(Icons.add, color: AppColors.whiteFF,),
          ),
        ),
      ),
    );
  }
}
