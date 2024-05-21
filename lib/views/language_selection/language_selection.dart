import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:tresorly/utils/app_colors/app_colors.dart';

import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/my_size.dart';


class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {

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
              text: 'Language',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0XFFF0F4F7),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 25, top: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextWidgetInterBold(
                title: 'Select Language', fontSize: 20,
                color: const Color(0XFF1750BF),fontWeight: FontWeight.w600,),
            ),
          ),
       Padding(
         padding: const EdgeInsets.only(left: 25, right: 25),
         child: Container(
           height: 70,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: AppColors.blueBC,
           ),
           child: Center(
             child: ListTile(
               title: Text('English (UK)', style: TextStyle(color: Colors.white),),
               leading: Image.asset('assets/icons/GB.png', scale: 3.5,),
               trailing: Text('English (UK)', style: TextStyle(color: Colors.white),),
             ),
           ),
         ),
       ),
       const LanguageTiles(
          title: 'Pakistan',
          leadingIcon: AssetImage('assets/icons/PS.png',),
          trailingText: '()',
        ),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}

class LanguageTiles extends StatelessWidget {
  const LanguageTiles({
    super.key, required this.title, required this.leadingIcon, required this.trailingText,
  });

  final String title;
  final ImageProvider leadingIcon;
  final String trailingText;


  @override
  Widget build(BuildContext context) {
    List<String> namingLists = ['English (UK)', 'Pakistan', 'Iran', 'English (UK)', 'Pakistan', 'English (UK)', 'Iran', 'English (UK)', 'English (UK)', 'English (UK)'];
    List<String> namingLists_urdu = ['(English)', '(اردو)', '(فارسی)', 'English ', '(اردو)', 'English', '(فارسی)', 'English', 'English', 'English'];
    List<AssetImage>  iconsList = [AssetImage('assets/icons/GB.png'),AssetImage('assets/icons/PK.png'), AssetImage('assets/icons/IR.png'), AssetImage('assets/icons/GB.png'), AssetImage('assets/icons/PK.png'), AssetImage('assets/icons/GB.png'), AssetImage('assets/icons/IR.png'), AssetImage('assets/icons/PS.png'), AssetImage('assets/icons/GB.png'), AssetImage('assets/icons/CN.png'), ];
    return Expanded(
      child: ListView.builder(
        itemCount: namingLists.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
          child: ListTile(
            tileColor: Colors.white,
            title: Text('${namingLists[index]}'),
            leading:  Image(image: iconsList[index], height: 24, width: 24,),
            trailing: Text('${namingLists_urdu[index]}'),
          ),
        );
      },),
    );
  }
}
