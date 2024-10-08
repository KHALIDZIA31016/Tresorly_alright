import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_text.dart';
import '../../base_h/customAppBar.dart';
import '../../base_h/textfieldcomponent.dart';
import '../../utils/app_colors.dart';
import '../../utils/my_size.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroundF7,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.size72),
        child: Padding(
          padding: EdgeInsets.only(left: MySize.size25, top: MySize.size25),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomAppBar(
              text: 'Change Password',
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
                SizedBox(height: MySize.size26,),
                TextWidgetInterBold(
                  title:'Current Password',
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  FontFamily: 'Outfit-Regular',
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: 'Enter Password',
                  suffixicon: Icons.lock_outline,
                ),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title:'New Password',
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  FontFamily: 'Outfit-Regular',
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: 'Enter Password',
                  suffixicon: Icons.lock_outline,
                ),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title:'Confirm Password',
                  fontSize: MySize.size14,
                  FontFamily: 'Outfit-Regular',
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: 'New Password',
                  suffixicon: Icons.lock_outline,
                ),
                SizedBox(height: MySize.scaleFactorHeight*380,),
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
                    child: const Center(child: Text('Save Changes',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.whiteFF, fontFamily:  'Outfit-Regular',),)),
                  ),
                ),


              ],
            ),
            ),
        );
    }
}
