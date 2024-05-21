import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';

import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
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
        padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetInterBold(
                title: 'Manage Notifications & Alerts', fontSize: 16,
                color: AppColors.blue8F,fontWeight: FontWeight.w500),

            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => ListTile(
                title: TextWidgetInterBold(
                    title: '${switchTitle[index]}', fontSize: 14,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400),
                subtitle: TextWidgetInterBold(
                    title: '${switch_subTitle[index]}', fontSize: 10,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400),
                trailing:  Switch(
                  value: val,
                  onChanged: (value)
                  => {setState(() {
                    val = !val;
                  })},
                  activeColor: Color(0XFF168DBC),
                  activeTrackColor: Color(0XFF168DBC),
                  inactiveTrackColor: Colors.white,
                  thumbColor: val ? MaterialStateProperty.all(AppColors.whiteColor) : MaterialStateProperty.all(AppColors.blue8F),
                ),
              ),),


          ],
        ),
      ),
    );
  }
}
