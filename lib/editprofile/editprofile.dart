import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_text.dart';
import '../../utils/my_size.dart';
import '../base_h/customAppBar.dart';
import '../base_h/textfieldcomponent.dart';
import '../utils/app_colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              text: 'Edit Profile',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size20,),
            Center(child: Image.asset('assets/prof.png', width: 150, height: 150,)),
            SizedBox(height: MySize.size20,),
            TextWidgetInterBold(
                title:'Email',
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
              FontFamily: 'Outfit-Regular',
              color: const Color(0XFF17508F),
            ),
            SizedBox(height: MySize.size5,),
            const TextFieldComponent(
              hintText: 'haseeb@gmail.com',
              suffixicon: Icons.mail,
            ),
            SizedBox(height: MySize.size20,),
            TextWidgetInterBold(
              title:'Name',
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
              FontFamily: 'Outfit-Regular',
              color: AppColors.blue8F,
            ),
            SizedBox(height: MySize.size5,),
            const TextFieldComponent(
              hintText: 'Muhammad Haseeb',
              suffixicon: Icons.person,
            ),
            SizedBox(height: MySize.size20,),
            TextWidgetInterBold(
              title:'Phone No.',
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
              color: AppColors.blue8F,
            ),
            SizedBox(height: MySize.size5,),
            const TextFieldComponent(
              hintText: '+92 879087662',
              suffixicon: Icons.local_phone,
            ),
            SizedBox(height: MySize.scaleFactorHeight*196,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: MySize.size52,
                width: MySize.scaleFactorWidth*300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xff165290) ,const Color(0xff168DBC).withOpacity(.6) ],
                    begin: const Alignment(0, 7),
                    end: const Alignment(2, 0),

                  ),
                  borderRadius: BorderRadius.circular(MySize.size16),
                ),
                child: const Center(child: Text('Save Changes',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.whiteFF, fontFamily: 'Outfit-Regular'),)),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
