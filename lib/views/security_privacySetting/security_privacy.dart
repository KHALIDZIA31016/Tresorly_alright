import 'package:flutter/material.dart';
import 'package:tresorly/menu/menu.dart';

import '../../utils/app_text.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/app_colors.dart';
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
        padding: const EdgeInsets.only(left: 20,  top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidgetInterBold(
                  title: 'Password Generator', fontSize: 18,
                    FontFamily: 'Outfit-Regular',
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidgetInterBold(
                  title: 'Length of Password', fontSize: 16,
                  color: const Color(0XFF1750BF),fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular',),
              ),
              const SizedBox(height: 8,),
              Slider(
                  min: 4, max: 10,
                  value: 8,
                  activeColor: const Color(0XFF168DBC),
                  thumbColor: Colors.white,
                  inactiveColor: const Color(0XFF168DBC).withOpacity(.5),
                  onChanged: (value) => setState(() {
              })),
              const SizedBox(height: 8,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => ListTile(
                title: TextWidgetInterBold(
                    title: switchTitle[index], fontSize: 16,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
                subtitle: TextWidgetInterBold(
                    title: switch_subTitle[index], fontSize: 12,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular',),
                trailing:   Switch(
                  value: val,
                  onChanged: (value)
                  => {setState(() {
                    val = !val;
                  })},
                  activeColor: const Color(0XFF168DBC),
                  activeTrackColor: const Color(0XFF168DBC),
                  inactiveTrackColor: Colors.grey.withOpacity(.15),
                  thumbColor: val ? MaterialStateProperty.all(Colors.white54) : MaterialStateProperty.all(Colors.white12),
                ),
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidgetInterBold(
                    title: 'Auto Lock', fontSize: 16,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular',),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidgetInterBold(
                    title: 'Time for Auto Lock', fontSize: 14,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular',),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Container(
                  height: 44, width: 360,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                        color: AppColors.grey28.withOpacity(.15),
                        spreadRadius: 0,
                        blurRadius: 2
                    )],
                    borderRadius: const BorderRadius.all(Radius.circular(8),
                    ),
                    color:const Color(0XFFF0F4F7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextWidgetInterBold(title: 'Select Time ', fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.blue8F, FontFamily: 'Outfit-Regular',),
                          ),
                          const Spacer(),
                          const Icon(Icons.expand_more, size: 35, color: AppColors.blue8F,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextWidgetInterBold(
                    title: 'Data Breach Alert', fontSize: 16,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular',),
              ),
              ListTile(
                title: TextWidgetInterBold(
                    title: 'Data Breach Alert', fontSize: 14,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w400),
                subtitle: TextWidgetInterBold(
                    title: 'Toggle to receive notification if user’s data is found in a Breach.', fontSize: 12,
                    color: const Color(0XFF1750BF),fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular',),
                trailing:   Switch(
                  value: val,
                  onChanged: (value)
                  => {setState(() {
                    val = !val;
                  })},
                  activeColor: const Color(0XFF168DBC),
                  activeTrackColor: const Color(0XFF168DBC),
                  inactiveTrackColor: Colors.grey.withOpacity(.15),
                  thumbColor: val ? MaterialStateProperty.all(Colors.white54) : MaterialStateProperty.all(Colors.white12),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only( top: 20, bottom: 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Menu()),
                    );
                  },
                  child: Container(
                    height: 52, width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(colors: [const Color(0XFF165290), const Color(0XFF168DBC).withOpacity(.6)])
                    ),
                    child: const Center(
                      child: Text('Save Changes', style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Outfit-Regular',
                      ),),
                    ),
                  ),
                ),
              ),
          // SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
