import 'package:flutter/material.dart';

import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';


class SecurityAndPrivacySetting extends StatefulWidget {
  const  SecurityAndPrivacySetting({super.key});

  @override
  State<SecurityAndPrivacySetting> createState() => _SecurityAndPrivacySettingState();
}

class _SecurityAndPrivacySettingState extends State<SecurityAndPrivacySetting> {


  List<String> switchTitle = ['Upper Case Letters', 'Lower Case Letters', 'Numbers', 'Special Characters'];
  List<String> switch_subTitle = ['Include Upper case letters in Password', 'Include Lower case letters in Password', 'Include Numbers in Password', 'Include Special Characters in Password'];



  bool val = false;
  bool value = false;
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
              text: 'Security & Privacy',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0XFFF0F4F7),
      body:      Padding(
        padding: const EdgeInsets.only(left: 30, right: 35, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetInterBold(
              title: 'Password Generator', fontSize: 16,
              color: const Color(0XFF1750BF),fontWeight: FontWeight.w500),
            SizedBox(height: 15,),
            TextWidgetInterBold(
              title: 'Length of Password', fontSize: 14,
              color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
            SizedBox(height: 8,),
            Slider(
                min: 4, max: 10,
                value: 8,
                activeColor: Color(0XFF168DBC),
                thumbColor: Colors.white,
                inactiveColor: Color(0XFF168DBC).withOpacity(.5),
                onChanged: (value) => setState(() {
            })),
            SizedBox(height: 8,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => ListTile(
              title: TextWidgetInterBold(
                  title: '${switchTitle[index]}', fontSize: 14,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
              subtitle: TextWidgetInterBold(
                  title: '${switch_subTitle[index]}', fontSize: 10,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
              trailing:  Switch(
                value: val,
                onChanged: (value)
                => {setState(() {
                  val = !val;
                })},
                activeColor: Color(0XFF168DBC),
                activeTrackColor: Color(0XFF168DBC),
                inactiveTrackColor: Color(0XFF168DBC),
                thumbColor: val ? MaterialStateProperty.all(Colors.white) : MaterialStateProperty.all(Colors.white),
              ),
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextWidgetInterBold(
                  title: 'Auto Lock', fontSize: 16,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextWidgetInterBold(
                  title: 'Time for Auto Lock', fontSize: 14,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 44, width: 331,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    color: AppColors.grey28.withOpacity(.15),
                    spreadRadius: 0,
                    blurRadius: 2
                )],
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextWidgetInterBold(title: 'Select Time ', fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_outlined, size: 35, color: AppColors.blue8F,)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextWidgetInterBold(
                  title: 'Data Breach Alert', fontSize: 16,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: TextWidgetInterBold(
                  title: 'Data Breach Alert', fontSize: 14,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
              subtitle: TextWidgetInterBold(
                  title: 'Toggle to receive notification if user’s data is found in a Breach.', fontSize: 10,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
              trailing:  Switch(
                value: val,
                onChanged: (value)
                => {setState(() {
                  val = !val;
                })},
                activeColor: Color(0XFF168DBC),
                activeTrackColor: Color(0XFF168DBC),
                inactiveTrackColor: Colors.white,
                thumbColor: val ? MaterialStateProperty.all(Colors.white) : MaterialStateProperty.all(Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
