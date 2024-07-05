import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import '../../utils/my_size.dart';
import '../base_h/customAppBar.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_constants/app_constant.dart';
import 'base/containercomponent.dart';

class DataManagement extends StatefulWidget {
  const DataManagement({super.key});

  @override
  State<DataManagement> createState() => _DataManagementState();
}

class _DataManagementState extends State<DataManagement> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundF7,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.size72),
        child: Padding(
          padding: EdgeInsets.only(left: MySize.size25),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const CustomAppBar(
              text: 'Data Management',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.size42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size18,),
            TextWidgetInterBold(
              title: 'Backup Data',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              FontFamily: 'Outfit-Regular',
              color: AppColors.blue8F,
            ),
            // SizedBox(height: MySize.size4,),
            Row(
              children: [
                TextWidgetInterBold(
                  title:'Backup Data',
                  fontSize: 15,
                  FontFamily: 'Outfit-Regular',
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue8F,
                ),
                const Spacer(),
                Switch(
                  value: val,
                  onChanged: (bool value)  {
                    setState(() {
                      val = value;
                    });
                  },
                  activeTrackColor: AppColors.blueBC,
                  focusColor: AppColors.whiteFF,
                  autofocus: true,
                  inactiveThumbColor: AppColors.whiteFF,
                  inactiveTrackColor:  Colors.white38,
                  trackOutlineColor: const MaterialStatePropertyAll(Color(0x00000000)),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 228,
                  child: TextWidgetInterBold(
                    title:'Toggle to enable backup of data on data on your device',
                    fontSize: 12,
                    FontFamily: 'Outfit-Regular',
                    fontWeight: FontWeight.w400,
                    color: AppColors.blue8F,
                  ),
                ),
 Spacer(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MySize.size6,),
                  child: SizedBox(
                    width: 40,
                    child: TextWidgetInterBold(
                      title:'Enabled',
                      fontSize: MySize.size10,
                      FontFamily: 'Outfit-Regular',
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MySize.size20,),
            TextWidgetInterBold(
              title:'Data Management',
              fontSize: MySize.size16,
              FontFamily: 'Outfit-Regular',
              fontWeight: FontWeight.w500,
              color: AppColors.blue8F,
            ),
            SizedBox(height: MySize.size8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const ContainerComponent(
                  image: AppConstants.importLogo,
                  title: 'Import Data',
                ),
                SizedBox(width: MySize.size6,),
                const ContainerComponent(
                  image: AppConstants.exportLogo,
                  title: 'Export Data',
                ),
              ],
            ),
            SizedBox(height: MySize.size24,),
            TextWidgetInterBold(
              title: 'Delete Data',
              fontSize: MySize.size16,
              fontWeight: FontWeight.w500,
              FontFamily: 'Outfit-Regular',
              color: AppColors.blue8F,
            ),
            SizedBox(height: MySize.size8,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppConstants.binLogo,
                SizedBox(width: MySize.size4,),
                TextWidgetInterBold(
                  title: 'Delete Data',
                  FontFamily: 'Outfit-Regular',
                  fontSize: MySize.size12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.red1B,
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
