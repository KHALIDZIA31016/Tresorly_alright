import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/add_card/Add_card.dart';

import '../../base_h/customAppBar.dart';
import '../../menu/menu.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  List<String> titleContainer = ['Credit Card', 'Debit Card', 'Pay Pal'];
  List<String> containerImages= [
    AppConstants.credit_cardIcon,
    AppConstants.debit_cardIcon,
    AppConstants.paypalIcon
  ];

  int selectedIndex = -1;

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
              text: 'Payment Method',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0XFFF0F4F7),
      body: Padding(
        padding: const EdgeInsets.only( top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 37,
                top: 25,
                bottom: 10,
              ),
              child: TextWidgetInterBold(
                title: 'Payment  Method',
                fontSize: 20,
                color: AppColors.blue8F,
                FontFamily: 'Outfit-Regular',
                fontWeight: FontWeight.w500,
              ),
            ),
            // SingleChildScrollView(
            //  scrollDirection: Axis.horizontal,
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       InkWell(
            //         onTap: (){
            //           setState(() {
            //             tap = ! tap;
            //           });
            //         },
            //         child: Container(
            //           height: 110, width: 124,
            //           decoration: BoxDecoration(
            //               color: tap ? Color(0XFF17508F) : AppColors.whiteColor,
            //               borderRadius: BorderRadius.all(Radius.circular(20)),
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Image.asset(AppConstants.debit_cardIcon, height: 50, width: 75, color: tap ? AppColors.whiteColor :  Color(0XFF17508F),),
            //               TextWidgetInterRegular(title: 'Credit Card', fontSize: 12, fontWeight: FontWeight.w500, color: tap ? AppColors.whiteColor :  Color(0XFF17508F))
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(width: 15,),
            //       InkWell(
            //         onTap: (){
            //           setState(() {
            //             tap1 = ! tap1;
            //           });
            //         },
            //         child: Container(
            //           height: 110, width: 124,
            //           decoration: BoxDecoration(
            //             color: tap1 ? Color(0XFF17508F) : AppColors.whiteColor,
            //             borderRadius: const BorderRadius.all(Radius.circular(20)),
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Image.asset(AppConstants.credit_cardIcon, height: 50, width: 75,color: tap1 ? AppColors.whiteColor :  Color(0XFF17508F),),
            //               TextWidgetInterRegular(title: 'Debit Card', fontSize: 12, fontWeight: FontWeight.w500,
            //                   color: tap1 ? AppColors.whiteColor :  Color(0XFF17508F))
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(width: 15,),
            //       InkWell(
            //         onTap: (){
            //           setState(() {
            //             tap2 = ! tap2;
            //           });
            //         },
            //         child: Container(
            //           height: 110, width: 124,
            //           decoration: BoxDecoration(
            //             color: tap2 ? Color(0XFF17508F) : AppColors.whiteColor,
            //             borderRadius: const BorderRadius.all(Radius.circular(20)),
            //           ),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             children: [
            //               Image.asset(AppConstants.paypalIcon, height: 50, width: 75,color: tap2 ? AppColors.whiteColor :  Color(0XFF17508F),),
            //               TextWidgetInterRegular(
            //                   title: 'Pay pal', fontSize: 12, fontWeight: FontWeight.w500, color: tap2 ? AppColors.whiteColor :  Color(0XFF17508F))
            //             ],
            //           ),
            //         ),
            //       ),
            //       const SizedBox(width: 15,),
            //     ],
            //   ),
            // ),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(3, (index) {
              bool isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 37),
                      child: Container(
                        height: 124,
                        width: 110,
                        decoration: BoxDecoration(
                          color: isSelected ? Color(0XFF17508F) : AppColors.whiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              containerImages[index],
                              height: 50,
                              width: 75,
                              color: isSelected ? AppColors.whiteColor : Color(0XFF17508F),
                            ),
                            TextWidgetInterRegular(
                              title: titleContainer[index],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              FontFamily: 'Outfit-Regular',
                              color: isSelected ? AppColors.whiteColor : Color(0XFF17508F),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.fromBorderSide(BorderSide(color: AppColors.balck, width: 1)),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            color: isSelected ? Color(0XFF505050) : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),

            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCardScreen()),
                  );
                },
                child: Container(
                  height: 44,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: const Color(0XFF168DBC).withOpacity(.10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.add,
                        color: Color(0xff313069),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextWidgetInterMedium(
                        title: 'Add Card',
                        FontFamily: 'Outfit-Regular',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: TextWidgetInterMedium(
                  title: 'Cards',
                  fontSize: 14,
                  FontFamily: 'Outfit-Regular',
                  fontWeight: FontWeight.w500,
                  color: const Color(0XFF1750BF)),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Container(
                height: 54,
                width: 350,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.black.withOpacity(.15),
                          spreadRadius: 0,
                          blurRadius: 2)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: AppColors.whiteColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/mastercard.png',
                        height: 13,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextWidgetInterMedium(
                        title: '**** **** **** 1234',
                        fontSize: 14,
                        FontFamily: 'Outfit-Regular',
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: TextWidgetInterMedium(
                  title: 'Billing',
                  fontSize: 14,
                  FontFamily: 'Outfit-Regular',
                  fontWeight: FontWeight.w500,
                  color: const Color(0XFF1750BF)),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37),
              child: Container(
                height: 54,
                width: 350,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.black.withOpacity(.15),
                          spreadRadius: 0,
                          blurRadius: 2)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: AppColors.whiteColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    children: [
                      TextWidgetInterMedium(
                          title: 'Yearly Subscription',
                          fontSize: 14,FontFamily: 'Outfit-Regular',
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF000000)),
                      const Spacer(),
                      TextWidgetInterMedium(
                          title: '24.50 CHF',
                          fontSize: 15,
                          FontFamily: 'Outfit-Regular',
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF505050).withOpacity(.7)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: TextWidgetInterMedium(
                      title: 'Total: 24.50 CHF',
                      fontSize: 14,
                      FontFamily: 'Outfit-Regular',
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF505050))),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 100, left: 37, bottom: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Menu()),
                  );
                },
                child: Container(
                  height: 52,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: [Color(0XFF165290), Color(0XFF168DBC)])),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Outfit-Regular',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
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
            fontSize: 12,
            color: const Color(0XFFF0F4F7),
            fontWeight: FontWeight.w400),
        leading: Image.asset(
          imageIcon,
          width: 16,
          height: 16,
        ),
      ),
    );
  }
}
