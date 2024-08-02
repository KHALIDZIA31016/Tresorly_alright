import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors.dart';

import '../../utils/app_text.dart';
import '../../base_h/customAppBar.dart';
import '../../menu/menu.dart';
import '../../utils/my_size.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  List<String> switchTitle = ['Security Alerts', 'Regular Updates', 'Promotional Notifications'];
  List<String> switch_subTitle = ['Enable or Disable for Security related issues','Notifications for recommended password changes or app updates','User preferences for receiving promotional Alerts'];



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
              text: 'Notifications',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.greyF7,
      body:  Padding(
        padding: const EdgeInsets.only(left: 25,  top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: TextWidgetInterBold(
                  title: 'Manage Notifications & Alerts', fontSize: 18,
                  color: AppColors.blue8F,fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular'),
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => ListTile(
                title: TextWidgetInterBold(
                    title: switchTitle[index], fontSize: 14,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular'),
                subtitle: TextWidgetInterBold(
                    title: switch_subTitle[index], fontSize: 12,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular'),
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
           const Spacer(),
            Padding(
              padding: const EdgeInsets.only( left: 8, top: 10, bottom: 30, ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
                },
                child: Container(
                  height: 52, width: 355,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(colors: [const Color(0XFF165290), const Color(0XFF168DBC).withOpacity(.6)])
                  ),
                  child: const Center(
                    child: Text('Save Changes', style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
