import 'package:flutter/material.dart';
import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';


class AccessibilityScreen extends StatefulWidget {
  const AccessibilityScreen({super.key});

  @override
  State<AccessibilityScreen> createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState extends State<AccessibilityScreen> {


  List<String> switch_subTitle = ['Large Size', 'Medium Size', 'Small Size' ];
  List<double> fontSize_Title = [16, 14, 12];

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
              text: 'Accessibility',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.greyF7,
      body:
      Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetInterBold(
                title: 'Customization and Accessibility', fontSize: 16,
                color: const Color(0XFF1750BF),fontWeight: FontWeight.w500),
        SizedBox(height: 20,),
        Row(
          children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               TextWidgetInterBold(
                   title: 'Theme', fontSize: 14,
                   color: AppColors.blue8F,fontWeight: FontWeight.w400),
               TextWidgetInterBold(
                   title: 'Toggle to enable disable dark and light mode', fontSize: 10,
                   color: AppColors.blue8F,fontWeight: FontWeight.w400),
             ],
           ),
            Spacer(),
            Column(
              children: [
                Switch(
                  value: val,
                  onChanged: (value)
                  => {setState(() {
                    val = !val;
                  })},
                  activeColor: AppColors.blueBC,
                  activeTrackColor: AppColors.blueBC,
                  inactiveTrackColor: AppColors.whiteColor,
                  thumbColor:MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return Colors.white;
                  }),
                ),
                TextWidgetInterBold(
                    title: 'Enabled', fontSize: 10,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400),
              ],
            )
          ],
        ),
            SizedBox(height: 16,),
            TextWidgetInterBold(
                title: 'Font Size', fontSize: 14,
                color: AppColors.blue8F,fontWeight: FontWeight.w400),
            SizedBox(height: 18,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.circle_outlined,size: 16 ,color: Color(0XFF168DBC),),
                title: TextWidgetInterBold(
                    title: 'aAbBcC', fontSize: fontSize_Title[index],
                    color: AppColors.black40,fontWeight: FontWeight.w400),
                subtitle: TextWidgetInterBold(
                    title: '${switch_subTitle[index]}', fontSize: 10,
                    color: AppColors.black40,fontWeight: FontWeight.w400),

              ),),


          ],
        ),
      ),
    );
  }
}
