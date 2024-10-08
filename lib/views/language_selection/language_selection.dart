import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_colors.dart';

import '../../utils/app_text.dart';
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
                title: 'Select Language', fontSize: 22,
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
               title: const Text('English (UK)', style: TextStyle(color: Colors.white),),
               leading: Image.asset('assets/icons/GB.png', scale: 3.5,),
               trailing: Text('(English)', style: TextStyle(color: Colors.white.withOpacity(.6)),),
             ),
           ),
         ),
       ),
       const LanguageTiles(
          title: 'Pakistan',
          leadingIcon: AssetImage('assets/icons/PS.png',),
          trailingText: '()',
        ),
          const SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.only( top: 10, bottom: 30),
            child: Container(
              height: 52, width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(colors: [Color(0XFF165290), Color(0XFF168DBC)])
              ),
              child: const Center(
                child: Text('Save', style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white
                ),),
              ),
            ),
          ),
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
    List<String> naminglistsUrdu = ['(English)', '(اردو)', '(فارسی)', 'English ', '(اردو)', 'English', '(فارسی)', 'English', 'English', 'English'];
    List<AssetImage>  iconsList = [const AssetImage('assets/icons/GB.png'),const AssetImage('assets/icons/PK.png'), const AssetImage('assets/icons/IR.png'), const AssetImage('assets/icons/GB.png'), const AssetImage('assets/icons/PK.png'), const AssetImage('assets/icons/GB.png'), const AssetImage('assets/icons/IR.png'), const AssetImage('assets/icons/PS.png'), const AssetImage('assets/icons/GB.png'), const AssetImage('assets/icons/CN.png'), ];
    return Expanded(
      child: ListView.builder(
        itemCount: namingLists.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
          child: ListTile(
            tileColor: Colors.white,
            title: Text(namingLists[index]),
            leading:  Image(image: iconsList[index], height: 24, width: 24,),
            trailing: Text(naminglistsUrdu[index]),
          ),
        );
      },),
    );
  }
}
