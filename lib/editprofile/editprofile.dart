// import 'package:flutter/material.dart';
// import 'package:tresorly/base/text_widget.dart';
// import '../../utils/my_size.dart';
// import '../base_h/textfieldcomponent.dart';
// import '../utils/app_colors/app_colors.dart';
// import '../utils/app_constants/app_constant.dart';
// import '../base_h/customAppBar.dart';
//
// class EditProfile extends StatelessWidget {
//   const EditProfile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backgroundF7,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(MySize.size42),
//         child: Padding(
//           padding: EdgeInsets.only(left: MySize.size20),
//           child: GestureDetector(
//             onTap: (){
//               Navigator.pop(context);
//             },
//             child: const CustomAppBar(
//               text: 'Edit Profile',
//               icon: Icons.arrow_back_rounded,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: MySize.size36),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: MySize.size20,),
//             Center(child: AppConstants.profileLogo),
//             SizedBox(height: MySize.size20,),
//             TextWidgetInterBold(
//                 title:'Email',
//               fontSize: MySize.size14,
//               fontWeight: FontWeight.w400,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size5,),
//             TextFieldComponent(
//               hintText: 'haseeb@gmail.com',
//               suffixicon: Icons.mail,
//             ),
//             SizedBox(height: MySize.size20,),
//             TextWidgetInterBold(
//               title:'Name',
//               fontSize: MySize.size14,
//               fontWeight: FontWeight.w400,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size5,),
//             const TextFieldComponent(
//               hintText: 'Muhammad Haseeb',
//               suffixicon: Icons.person,
//             ),
//             SizedBox(height: MySize.size20,),
//             TextWidgetInterBold(
//               title:'Phone No.',
//               fontSize: MySize.size14,
//               fontWeight: FontWeight.w400,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size5,),
//             const TextFieldComponent(
//               hintText: '+92 879087662',
//               suffixicon: Icons.local_phone,
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }






/// 2nd time


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import '../../utils/my_size.dart';
import '../base_h/customAppBar.dart';
import '../base_h/textfieldcomponent.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_constants/app_constant.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Center(child: AppConstants.profileLogo),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title: 'Email',
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: 'haseeb@gmail.com',
                  suffixicon: Icons.mail,
                ),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title: 'Name',
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: 'Muhammad Haseeb',
                  suffixicon: Icons.person,
                ),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title: 'Phone No.',
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size5,),
                const TextFieldComponent(
                  hintText: '+92 879087662',
                  suffixicon: Icons.local_phone,
                ),
                SizedBox(height: MySize.scaleFactorHeight * 196,),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: MySize.size52,
                    width: MySize.scaleFactorWidth * 300,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff165290), Color(0xff168DBC)],
                        begin: Alignment(0, 7),
                        end: Alignment(2, 0),

                      ),
                      borderRadius: BorderRadius.circular(MySize.size16),
                    ),
                    child: const Center(child: Text('Save Changes',
                      style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteFF),)),
                  ),
                ),


              ],
            ),
        ),
    );
  }
}
