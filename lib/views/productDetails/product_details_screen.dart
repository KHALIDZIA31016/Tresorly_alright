import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_slider/gradient_slider.dart';
import 'package:provider/provider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/views/home/components/custom_container_home.dart';
import 'package:tresorly/views/productDetails/components/info_row.dart';
import 'package:tresorly/views/productDetails/provider/product_details_provider.dart';
import 'package:tresorly/widgets/custom_image_viewer.dart';
import 'package:tresorly/widgets/custom_list_tile.dart';
import 'package:tresorly/widgets/round_image_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double _value = 67;
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyF7,
      body: SingleChildScrollView(
        child: Consumer<ProductDetailsProvider>(builder: (context, productDetailsProvider, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundImageButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.darkBlue46,
                    ),
                  ),
                  const Text20(
                    title: "Details",
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkBlue46,
                  ),
                  RoundImageButton(
                    onPressed: () {},
                    imagePath: AppImages.favRedSvg,
                  ),
                ],
              ),
              CustomListTile(
                bgColor: Colors.transparent,
                leadingContainerColor: AppColors.whiteFF,
                onTitleTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen()));
                },
                icon2: AppImages.shareSvg,
                onVisibilityTap: () {},
                onIcon1Tap: () {},
                onIcon2Tap: () {},
                title: 'Netflix',
                subtitle1: 'info@innopulse.io',
                subtitle2: '**************',
                imagePath: 'assets/netf.png',
              ),
              Center(
                  child: Image.asset(
                    'assets/images/percen.png',
                    width: 270,
                    height: 270,
                  )),
              CustomContainerHome(
                color: AppColors.whiteFF,
                horizontal: 30.w,
                vertical: 40.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                        child: Text20(
                          title: "Score Summary",
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkBlue46,
                        )),
                    20.ht,
                    const Text14(
                      title: "Password Strength",
                      fontWeight: FontWeight.w500,
                      color: AppColors.blue8F,
                    ),
                    5.ht,
                    const Text10(
                      title:
                      "Password can be made stronger by increasing the  characters and using combination of numbers, special characters and uppercase letters",
                      textAlign: TextAlign.left,
                      maxLines: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                    20.ht,
                    Center(
                      child: SleekCircularSlider(
                          min: 0,
                          max: 100,
                          initialValue: productDetailsProvider.circularProgressValue,
                          appearance: CircularSliderAppearance(
                            infoProperties: InfoProperties(
                              topLabelText: productDetailsProvider.circularProgressValue < 50
                                ? "Weak"
                                  : "Strong",
                              topLabelStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: AppColors.darkBlue46,
                              ),
                            ),
                            customWidths: CustomSliderWidths(
                                trackWidth: 16,
                                progressBarWidth: 17 ),
                            customColors: CustomSliderColors(
                                hideShadow: true,
                                trackColor: AppColors.whiteColor,
                                progressBarColors: [
                                  Colors.green,
                                  Colors.red,
                                ]),
                          ),
                          onChange: (double value) {
                            productDetailsProvider.setCircularProgressValue(value);
                            print(value);
                          }),
                    ),
                    Row(
                      children: [
                        const CustomImageViewer(
                          imagePath: AppImages.reuseSvg,
                          scale: 3.5,
                        ),
                        10.wd,
                        const Text14(
                          title: "Reuse of Password",
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue8F,
                        ),
                      ],
                    ),
                    5.ht,
                    const Text10(
                      title:
                      "Password reuse poses significant security risks, putting your personal information and identity at risk of beingcompromised.",
                      textAlign: TextAlign.left,
                      maxLines: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                    5.ht,
                    Row(
                      children: [
                        Expanded(
                          child: GradientSlider(
                            thumbAsset: '',
                            trackHeight: 6.h,
                            thumbHeight: 16,
                            thumbWidth: 16,
                            activeTrackGradient: const LinearGradient(colors: [Colors.red, Colors.green]),
                            inactiveTrackGradient:
                            const LinearGradient(colors: [AppColors.blueBC, AppColors.blueBC]),
                            slider: Slider(
                              inactiveColor: AppColors.blueBC,
                              thumbColor: AppColors.whiteColor,
                              label:  productDetailsProvider.sliderValue.toStringAsFixed(1),
                              max: 100,
                              min: 0,
                              value: productDetailsProvider.sliderValue,
                              onChanged: (value) {
                                productDetailsProvider.setSliderValue(value);
                              },
                            ),
                          ),
                        ),
                        Text16(title: productDetailsProvider.sliderValue < 50
                            ? "Weak"
                            : "Strong",
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkBlue46,)
                      ],
                    ),

                    10.ht,
                    const InfoRow(
                      title: 'Age of Password',
                      subtitle: '23/07/2022',
                      imagePath: AppImages.calenderSvg,
                      showButton: true,
                    ),
                    const InfoRow(
                      title: 'Age of Password',
                      subtitle: '23/07/2022',
                      imagePath: AppImages.calenderSvg,
                      showSwitch: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              const CustomImageViewer(
                                imagePath: AppImages.calenderSvg,
                                scale: 3.5,
                              ),
                              10.wd,
                              const Text14(
                                title: "Age of Password",
                                fontWeight: FontWeight.w500,
                                color: AppColors.blue8F,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20.h,
                          width: 95.w,
                          decoration: BoxDecoration(
                            color: AppColors.greenColor.withOpacity(.3),
                            borderRadius: BorderRadius.circular(100.r)
                          ),
                          child: const Center(
                            child: Text8(title: "Strong Password", fontWeight: FontWeight.w500, color: AppColors.greenColor,),
                          ),
                        )
                      ],
                    ),
                    10.ht,
                    const Row(
                      children: [
                        Text10(
                          title:
                          "Last Updated: ",
                          textAlign: TextAlign.left,
                          maxLines: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue8F,
                        ),
                        Text10(
                          title:
                          "23/07/2022",
                          textAlign: TextAlign.left,
                          maxLines: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blue8F,
                        ),
                      ],
                    )

                  ],
                ),
              ),
              // Expanded(
              //   child: Container(
              //     height: 944,
              //     width: 375,
              //     decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //           topRight: Radius.circular(40),
              //           topLeft: Radius.circular(40)),
              //       color: Color(0xFFFFFFFF),
              //     ),
              //     child: SingleChildScrollView(
              //       child: Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(left: 35, right: 35),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //
              //                 Row(
              //                   children: [
              //                     Image.asset(AppImages.loopIcon,
              //                         height: 18, width: 18),
              //                     const SizedBox(
              //                       width: 10,
              //                     ),
              //                     TextWidgetInterMedium(
              //                         title: 'Reuse of Password',
              //                         fontSize: 14,
              //                         fontWeight: FontWeight.w500,
              //                         color: AppColors.blue8F,
              //                         align: TextAlign.start),
              //                   ],
              //                 ),
              //                 const SizedBox(
              //                   height: 8,
              //                 ),
              //                 TextWidgetInterMedium(
              //                     title:
              //                         'Password reuse poses significant security risks, putting your\n'
              //                         'personal information and identity at risk of\n'
              //                         'being compromised.',
              //                     fontSize: 10,
              //                     fontWeight: FontWeight.w400,
              //                     color: AppColors.blue8F,
              //                     align: TextAlign.start),
              //                 const SizedBox(height: 25),
              //
              //                 Stack(
              //                   clipBehavior: Clip.none,
              //                   children: [
              //                     Container(
              //                       height: 4,
              //                       width: 300,
              //                       decoration: BoxDecoration(
              //                           shape: BoxShape.values[0],
              //                           gradient: LinearGradient(colors: [
              //                             Color(0XFFE5201B),
              //                             Color(0XFF34A853),
              //                             Color(0XFF168DBC).withOpacity(.5),
              //                             Color(0XFF168DBC).withOpacity(.5)
              //                           ])),
              //                     ),
              //                     Positioned(
              //                       right: 100,
              //                       top:
              //                           -12, // Adjust this value to vertically center the CircleAvatar on the container
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           shape: BoxShape.circle,
              //                           color: Colors
              //                               .white, // CircleAvatar background color
              //                           boxShadow: [
              //                             BoxShadow(
              //                               color: Colors.black
              //                                   .withOpacity(0.5), // Shadow color
              //                               spreadRadius: 1, // Spread radius
              //                               blurRadius: 5, // Blur radius
              //                               offset: Offset(0,
              //                                   3), // Offset in the downward direction
              //                             ),
              //                           ],
              //                         ),
              //                         child: CircleAvatar(
              //                           radius: 12, // Adjust the radius as needed
              //                           backgroundColor: Colors
              //                               .transparent, // Make the background transparent as it's set in the container
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //
              //                 SizedBox(
              //                   height: 10,
              //                 ),
              //
              //                 // Container(
              //                 //   height: 4,
              //                 //   decoration: BoxDecoration(
              //                 //     shape: BoxShape.values[0],
              //                 //     gradient: LinearGradient(colors: [Colors.white, Colors.white, Colors.red, Colors.brown])
              //                 //   ),
              //                 //   child: Slider(
              //                 //     min: 1,
              //                 //     max: 10,
              //                 //     value: _value, // Use _value variable
              //                 //     // activeColor: Colors.red,
              //                 //     // inactiveColor: Color(0XFF168DBC).withOpacity(.5),
              //                 //     onChanged: (value) => setState(() {
              //                 //       _value = value; // Update the _value variable
              //                 //     }),
              //                 //     label: 'Strong',
              //                 //     thumbColor: AppColors.whiteColor,
              //                 //     // overlayColor:MaterialStateProperty.all(AppColors.greenColor),
              //                 //   ),
              //                 // ),
              //
              //                 Padding(
              //                   padding: const EdgeInsets.only(left: 200),
              //                   child: Text(
              //                     'Strong',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.w500,
              //                         fontSize: 16,
              //                         color: Colors.black,
              //                         shadows: [
              //                           Shadow(
              //                               color: Colors.black.withOpacity(.5),
              //                               blurRadius: 15,
              //                               offset: Offset(02, 03))
              //                         ]),
              //                   ),
              //                 ),
              //                 20.ht,
              //
              //                 Row(
              //                   children: [
              //                     Image.asset(
              //                       AppImages.dotCalendarIcon,
              //                       scale: 3.5,
              //                     ),
              //                     SizedBox(
              //                       width: 10,
              //                     ),
              //                     TextWidgetInterMedium(
              //                         title: 'Age of password',
              //                         fontSize: 14,
              //                         fontWeight: FontWeight.w500,
              //                         color: Color(0XFF17508F)),
              //                     Spacer(),
              //                     Container(
              //                       height: 20,
              //                       width: 95,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(40),
              //                         color: Color(0XFF34A853).withOpacity(.20),
              //                       ),
              //                       child: Center(
              //                           child: TextWidgetInterMedium(
              //                               title: 'Strong Password',
              //                               fontSize: 8,
              //                               color: Color(0XFF34A853),
              //                               fontWeight: FontWeight.w500)),
              //                     ),
              //                   ],
              //                 ),
              //                 SizedBox(
              //                   height: 10,
              //                 ),
              //                 Row(
              //                   children: [
              //                     TextWidgetInterMedium(
              //                         title: 'Last Updated: ',
              //                         fontSize: 12,
              //                         fontWeight: FontWeight.w400,
              //                         color: Color(0XFF17508F)),
              //                     SizedBox(
              //                       width: 2,
              //                     ),
              //                     TextWidgetInterMedium(
              //                         title: '23/07/2022 ',
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.w400,
              //                         color: Color(0XFF17508F).withOpacity(.6)),
              //                   ],
              //                 ),
              //                 SizedBox(
              //                   height: 25,
              //                 ),
              //                 Column(
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Image.asset(
              //                           AppImages.vulnerabilityIcon,
              //                           scale: 3.5,
              //                         ),
              //                         SizedBox(
              //                           width: 10,
              //                         ),
              //                         TextWidgetInterBold(
              //                             title: 'Vulnerability ',
              //                             fontSize: 14,
              //                             fontWeight: FontWeight.w500,
              //                             color: Color(0XFF17508F))
              //                       ],
              //                     ),
              //                     SizedBox(
              //                       height: 10,
              //                     ),
              //                     Row(
              //                       children: [
              //                         Image.asset(
              //                           AppImages.tick_Icon,
              //                           scale: 3.5,
              //                         ),
              //                         SizedBox(
              //                           width: 7,
              //                         ),
              //                         TextWidgetInterBold(
              //                             title: 'Secure Password ',
              //                             fontSize: 10,
              //                             fontWeight: FontWeight.w400,
              //                             color: Color(0XFF34A853))
              //                       ],
              //                     )
              //                   ],
              //                 ),
              //                 SizedBox(
              //                   height: 10,
              //                 ),
              //                 Row(
              //                   children: [
              //                     Image.asset(
              //                       AppImages.auth_Icon,
              //                       scale: 3.5,
              //                     ),
              //                     SizedBox(
              //                       width: 10,
              //                     ),
              //                     TextWidgetInterMedium(
              //                         title: '2FA Status',
              //                         fontSize: 14,
              //                         fontWeight: FontWeight.w500,
              //                         color: Color(0XFF17508F)),
              //                     Spacer(),
              //                     Switch(
              //                       value: val,
              //                       onChanged: (value) => {
              //                         setState(() {
              //                           val = !val;
              //                         })
              //                       },
              //                       activeColor: Color(0XFF168DBC),
              //                       activeTrackColor: Color(0XFF168DBC),
              //                       inactiveTrackColor:
              //                           Colors.grey.withOpacity(.15),
              //                       thumbColor: val
              //                           ? MaterialStateProperty.all(Colors.white54)
              //                           : MaterialStateProperty.all(Colors.white12),
              //                     ),
              //                   ],
              //                 ),
              //                 Row(
              //                   children: [
              //                     TextWidgetInterMedium(
              //                         title:
              //                             'Add an extra layer of security to your accounts by'
              //                             ' \nenabling two-factor authentication (2FA).',
              //                         fontSize: 10,
              //                         fontWeight: FontWeight.w400,
              //                         color: Color(0XFF17508F)),
              //                     Spacer(),
              //                     Padding(
              //                       padding: const EdgeInsets.only(right: 15),
              //                       child: TextWidgetInterMedium(
              //                           title: 'Enabled',
              //                           fontSize: 8,
              //                           fontWeight: FontWeight.w400,
              //                           color: Color(0XFF17508F)),
              //                     )
              //                   ],
              //                 ),
              //
              //                 Padding(
              //                   padding: const EdgeInsets.only(
              //                       left: 60, right: 50, bottom: 15, top: 40),
              //                   child: TextWidgetInterMedium(
              //                       title: 'Recommendations',
              //                       fontSize: 22,
              //                       fontWeight: FontWeight.w600,
              //                       color: AppColors.blue8F,
              //                       align: TextAlign.start),
              //                 ),
              //                 TextWidgetInterMedium(
              //                     title:
              //                         'Update your password to a strong and unique '
              //                         '\ncombination to protect your account from'
              //                         ' \nunauthorized access.',
              //                     fontSize: 12,
              //                     color: Color(0XFF17508F),
              //                     align: TextAlign.start),
              //                 Padding(
              //                   padding: const EdgeInsets.only(left: 30, top: 15),
              //                   child: Align(
              //                     alignment: Alignment.centerRight,
              //                     child: InkWell(
              //                       onTap: () {
              //                         Navigator.push(
              //                             context,
              //                             MaterialPageRoute(
              //                                 builder: (context) =>
              //                                     ChangePassword()));
              //                       },
              //                       child: Container(
              //                           margin: EdgeInsets.only(left: 25),
              //                           height: 40,
              //                           width: 150,
              //                           decoration: BoxDecoration(
              //                             gradient: LinearGradient(colors: [
              //                               Color(0XFF165290),
              //                               Color(0XFF168DBC)
              //                             ]),
              //                             borderRadius: BorderRadius.circular(5),
              //                           ),
              //                           child: Center(
              //                               child: TextWidgetInterMedium(
              //                                   title: 'Change Password',
              //                                   fontSize: 12,
              //                                   fontWeight: FontWeight.w400,
              //                                   color: Color(0XFFF0F4F7)))),
              //                     ),
              //                   ),
              //                 ),
              //
              //                 30.ht,
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          );
        },),
      ),
    );
  }
}
