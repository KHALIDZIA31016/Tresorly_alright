
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/payment_method/payment_screen.dart';

import '../../base_h/customAppBar.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';


class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 37,
              top: 25,
              bottom: 10,
            ),
            child: TextWidgetInterBold(
              title: 'Payment  Method', fontSize: 20,
              color: AppColors.blue8F,fontWeight: FontWeight.w500,),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
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
                              color: isSelected ?  Color(0XFF505050) : Colors.transparent,
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
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Row(
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetInterMedium(title: 'Name on card', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                    SizedBox(height: 16,),
                    Container(
                      height: 44, width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFD0D5DD)),
                          borderRadius: BorderRadius.circular(8),
                        color: Colors.white
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
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
                      ),
                      child: Center(

                        child: RichText(text: TextSpan(text: '06 ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828)
                        ),
                          children: [
                            TextSpan(text: '/ ',style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFFD0D5DD)
                            ), ),
                            TextSpan(text: '2024',style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828)
                            ), ),
                          ]
                        )),
                          // child: TextWidgetInterMedium(title: '06 / 2024', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF101828))
                        ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetInterMedium(title: 'Card number', fontSize: 14, fontWeight: FontWeight.w500, color: Color(0XFF344054)),
                    SizedBox(height: 16,),
                    Container(
                      height: 44, width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFD0D5DD)),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
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
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white
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
          ),
          SizedBox(height: 16,),
       Padding(
         padding: const EdgeInsets.only(left: 37, top: 15),
         child: Row(

           children: [
             InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Container(
                 height: 44, width: 160,
                 decoration: BoxDecoration(
                     border: Border.all(color: Color(0XFFD0D5DD),),
                     borderRadius: BorderRadius.circular(8),
                     color: Colors.white
                 ),
                 child: Center(child: TextWidgetInterBold(title: 'Cancel', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFF344054))),
               ),
             ),
             SizedBox(width: 10,),
             Padding(
               padding: const EdgeInsets.only(right: 35),
               child: InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const PaymentScreen()),
                   );
                 },
                 child: Container(
                   height: 44, width: 160,
                   decoration: BoxDecoration(
                       color: Color(0XFF17508F),
                     borderRadius: BorderRadius.circular(8)
                   ),
                   child: Center(child: TextWidgetInterBold(title: 'Confirm', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0XFFF0F4F7))),
                 ),
               ),
             )
           ],
         ),
       )

        ],
      ),
    );
  }
}
