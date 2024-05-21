
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';

import '../../base_h/customAppBar.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';


class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool tap = true;
  bool tap1 = true;
  bool tap2 = true;

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
        padding: const EdgeInsets.only(left: 37, right: 38, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgetInterBold(
                title: 'Payment Method', fontSize: 20,
                color: const Color(0XFF1750BF),fontWeight: FontWeight.w600,),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          tap = ! tap;
                        });
                      },
                      child: Container(
                        height: 110, width: 124,
                        decoration: BoxDecoration(
                          color: tap ? Color(0XFF17508F) : AppColors.whiteColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppConstants.debit_cardIcon, height: 50, width: 75, color: tap ? AppColors.whiteColor :  Color(0XFF17508F),),
                            TextWidgetInterRegular(title: 'Credit Card', fontSize: 12, fontWeight: FontWeight.w500, color: tap ? AppColors.whiteColor :  Color(0XFF17508F))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          tap1 = ! tap1;
                        });
                      },
                      child: Container(
                        height: 110, width: 124,
                        decoration: BoxDecoration(
                          color: tap1 ? Color(0XFF17508F) : AppColors.whiteColor,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppConstants.credit_cardIcon, height: 50, width: 75,color: tap1 ? AppColors.whiteColor :  Color(0XFF17508F),),
                            TextWidgetInterRegular(title: 'Debit Card', fontSize: 12, fontWeight: FontWeight.w500,
                                color: tap1 ? AppColors.whiteColor :  Color(0XFF17508F))
                          ],
                        ),
                      ),
                    ),






                    const SizedBox(width: 15,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          tap2 = ! tap2;
                        });
                      },
                      child: Container(
                        height: 110, width: 124,
                        decoration: BoxDecoration(
                          color: tap2 ? Color(0XFF17508F) : AppColors.whiteColor,
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppConstants.paypalIcon, height: 50, width: 75,color: tap2 ? AppColors.whiteColor :  Color(0XFF17508F),),
                            TextWidgetInterRegular(
                                title: 'Pay pal', fontSize: 12, fontWeight: FontWeight.w500, color: tap2 ? AppColors.whiteColor :  Color(0XFF17508F))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetInterMedium(title: 'Name on Card', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                      SizedBox(height: 16,),
                      Container(
                        height: 44, width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFD0D5DD)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextWidgetInterMedium(title: 'Olivia Rhye', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828))),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetInterMedium(title: 'Expiry', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                      SizedBox(height: 16,),
                      Container(
                        height: 44, width: 112,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFD0D5DD)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(child: TextWidgetInterMedium(title: '06 / 2024', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828))),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetInterMedium(title: 'Card Number', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                      SizedBox(height: 16,),
                      Container(
                        height: 44, width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFD0D5DD)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Image.asset(AppConstants.master_cardIcon, scale: 2.5,),
                              Center(child: TextWidgetInterMedium(title: '1234 1234 1234 1234', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetInterMedium(title: 'CVV', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                      SizedBox(height: 16,),
                     Container(
                        height: 44, width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFD0D5DD)),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(AppConstants.three_dotsIcon, scale: 3,)),
                        )
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 height: 44, width: 160,
                 decoration: BoxDecoration(
                     border: Border.all(color: Color(0XFFD0D5DD),),
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(child: TextWidgetInterBold(title: 'Cancel', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF344054))),
               ),
               Container(
                 height: 44, width: 160,
                 decoration: BoxDecoration(
                     color: Color(0XFF17508F),
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(child: TextWidgetInterBold(title: 'Confirm', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFFF0F4F7))),
               )
             ],
           )

            ],
          ),
        ),
      ),
    );
  }
}
