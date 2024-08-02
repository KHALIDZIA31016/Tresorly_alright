import 'package:flutter/material.dart';
import 'package:tresorly/menu/menu.dart';
import '../../utils/app_text.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/app_colors.dart';
import '../../utils/my_size.dart';


class AccessibilityScreen extends StatefulWidget {
  const AccessibilityScreen({super.key});

  @override
  State<AccessibilityScreen> createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState extends State<AccessibilityScreen> {


  List<String> switch_subTitle = ['Large Size', 'Medium Size', 'Small Size' ];
  List<double> fontSize_Title = [16, 14, 12];

  int selectedIndex = -1;
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
      backgroundColor: const Color(0XFFF0F4F7),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidgetInterBold(
                title: 'Customization and Accessibility', fontSize: 18,
                color: const Color(0XFF17508F),fontWeight: FontWeight.w500, FontFamily: 'Outfit-Regular'),
        const SizedBox(height: 20,),
        Row(
          children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               TextWidgetInterBold(
                   title: 'Theme', fontSize: 19,
                   color: AppColors.blue8F,fontWeight: FontWeight.w400),
               TextWidgetInterBold(
                   title: 'Toggle to enable disable dark and light mode', fontSize: 12,
                   color: AppColors.blue8F,fontWeight: FontWeight.w400),
             ],
           ),
            const Spacer(),
            Column(
              children: [
                Switch(
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
                TextWidgetInterBold(
                    title: 'Dark Mode', fontSize: 10,
                    color: AppColors.blue8F,fontWeight: FontWeight.w400),
              ],
            )
          ],
        ),
            const SizedBox(height: 16,),
            TextWidgetInterBold(
                title: 'Font Size', fontSize: 18,
                color: AppColors.blue8F,fontWeight: FontWeight.w400),
            const SizedBox(height: 18,),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: 3,
            //   itemBuilder: (context, index) => ListTile(
            //     leading: Icon(Icons.circle_outlined,size: 16 ,color: Color(0XFF168DBC),),
            //     title: TextWidgetInterBold(
            //         title: 'aAbBcC', fontSize: fontSize_Title[index],
            //         color: AppColors.black40,fontWeight: FontWeight.w400),
            //     subtitle: TextWidgetInterBold(
            //         title: '${switch_subTitle[index]}', fontSize: 10,
            //         color: AppColors.black40,fontWeight: FontWeight.w400),
            //
            //   ),),

            Expanded(
              child: Column(
                children: List.generate(3, (index) {
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: ListTile(
                      leading: Icon(
                        isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                        size: 24,
                        color: isSelected ? const Color(0XFF168DBC) : const Color(0XFF168DBC).withOpacity(.5),
                      ),
                      title: TextWidgetInterBold(
                          title: 'aAbBcC', fontSize: fontSize_Title[index],
                          color: AppColors.black40,fontWeight: FontWeight.w400),
                      subtitle: TextWidgetInterBold(
                          title: switch_subTitle[index], fontSize: 10,
                          color: AppColors.black40,fontWeight: FontWeight.w400),

                    ),
                  );
                }),
              ),
            ),

               const Spacer(),
            Padding(
              padding: const EdgeInsets.only( left: 10, top: 10, bottom: 30, ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Menu()),
                  );
                },
                child: Container(
                  height: 52, width: 355,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(colors: [Color(0XFF165290), Color(0XFF168DBC)])
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
