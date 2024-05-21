//
// import 'package:flutter/material.dart';
// import 'package:tresorly/base/text_widget.dart';
// import '../../utils/my_size.dart';
// import '../base_h/customAppBar.dart';
// import '../base_h/textfieldwidget.dart';
// import '../menu/menu.dart';
// import '../utils/app_colors/app_colors.dart';
// import '../utils/app_constants/app_constant.dart';
// import 'base/customchips.dart';
//
// class EditVault extends StatelessWidget {
//   const EditVault({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBodyBehindAppBar: true,
//       backgroundColor: AppColors.backgroundF7,
//
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(MySize.size42),
//         child: Padding(
//           padding: EdgeInsets.only(left: MySize.size20),
//           child: GestureDetector(
//             onTap: (){
//               Navigator.pop(context);
//             },
//             child: const CustomAppBar(
//               text: ' Edit Vault',
//               icon: Icons.arrow_back_rounded,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding:  EdgeInsets.only(left: MySize.size25,top: MySize.size100,right: MySize.size25),
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             Column(
//               children: [
//                 SizedBox(height: MySize.size5,),
//                 Center(
//                   child: Container(
//                     height: MySize.size60,
//                     width: MySize.size60,
//                     decoration:const BoxDecoration(
//                       color: AppColors.whiteFF,
//                       shape: BoxShape.circle,
//                     ) ,
//                     child: Image.asset(AppConstants.editLogo,height: 10,width: 15,),
//                   ),
//                 ),
//                 SizedBox(height: MySize.size10,),
//                 TextWidgetInterBold(
//                   title: 'Change Icon',
//                   color: AppColors.lightBlack5B,
//                   fontSize: MySize.size12,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 SizedBox(height: MySize.size18,),
//                 Container(
//                   height: MySize.scaleFactorHeight * 560,
//                   width: MySize.scaleFactorWidth* 335,
//                   decoration: BoxDecoration(
//                     color: AppColors.whiteFF,
//                     borderRadius: BorderRadius.circular(MySize.size16),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextWidgetInterBold(
//                           title: 'Credential',
//                           color: AppColors.darkBlack21,
//                           fontSize: MySize.size16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size16,),
//                         TextWidgetInterBold(
//                           title: 'Credential',
//                           color: AppColors.darkGrey84,
//                           fontSize: MySize.size14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size4,),
//                         Container(
//                           height: MySize.scaleFactorHeight * 48,
//                           width: MySize.scaleFactorWidth* 303,
//                           decoration: BoxDecoration(
//                               color: AppColors.whiteFF,
//                               borderRadius: BorderRadius.circular(MySize.size8),
//                               border: Border.all(
//                                 color: AppColors.greyF7,
//                                 width: 1,
//                               )
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               TextWidgetInterBold(
//                                 title: 'Browser',
//                                 color: AppColors.lightBlack5B,
//                                 fontSize: MySize.size14,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               DropdownButton<String>(underline: const SizedBox(),
//                                 onChanged: (String? newValue) {
//                                 },
//                                 items: const [
//                                   DropdownMenuItem<String>(
//                                     value: 'Amazon Prime',
//                                     child: Text('Amazon Prime'),
//                                   ),
//                                   DropdownMenuItem<String>(
//                                     value: 'Netflix',
//                                     child: Text('Netflix'),
//                                   ),
//                                   DropdownMenuItem<String>(
//                                     value: 'Coursera',
//                                     child: Text('Coursera'),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: MySize.size16,),
//                         TextWidgetInterBold(
//                           title: 'site Address',
//                           color: AppColors.darkGrey84,
//                           fontSize: MySize.size14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size4,),
//                         TextFieldWidget(
//                           hintText: 'https/www.dribbble.com',
//                           fontWeight: FontWeight.w600,
//                           prefixIcon: AppConstants.globeLogo,
//                           suffixicon: Icons.copy_rounded,
//
//                         ),
//                         SizedBox(height: MySize.size16,),
//                         TextWidgetInterBold(
//                           title: 'User Name ',
//                           color: AppColors.darkGrey84,
//                           fontSize: MySize.size14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size4,),
//                         TextFieldWidget(
//                           hintText: 'info@innopulse.io',
//                           fontWeight: FontWeight.w600,
//                           prefixIcon: AppConstants.globeLogo,
//                           suffixicon: Icons.copy_rounded,
//                         ),
//                         SizedBox(height: MySize.size16,),
//                         TextWidgetInterBold(
//                           title: 'Password ',
//                           color: AppColors.darkGrey84,
//                           fontSize: MySize.size14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size4,),
//                         TextFieldWidget(
//                           hintText: '********',
//                           height: 1,
//                           prefixIcon: AppConstants.lockLogo,
//                           suffixicon: Icons.copy_rounded,
//                         ),
//                         SizedBox(height: MySize.size16,),
//                         TextWidgetInterBold(
//                           title: 'Secure Password Generator ',
//                           color: AppColors.darkGrey84,
//                           fontSize: MySize.size14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size4,),
//                         TextFieldWidget(
//                           hintText: 'Xa!15Lfm',
//                           prefixIcon: AppConstants.lockLogo,
//                           suffixicon: Icons.copy_rounded,
//                         ),
//                         SizedBox(height: MySize.size12,),
//                         Center(
//                           child: Container(
//                             width: MySize.scaleFactorWidth*76,
//                             height: MySize.scaleFactorHeight*33,
//                             decoration: BoxDecoration(
//                               color: AppColors.backgroundF7,
//                               borderRadius: BorderRadius.circular(MySize.size8),
//                             ),
//                             child: GestureDetector(
//                               onTap: (){
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => const Menu()),
//                                 );
//                               },
//
//                               child: Center(
//                                 child: TextWidgetInterBold(title: 'Edit',
//                                 color: AppColors.lightBlack5B,
//                                   fontSize: MySize.size14,
//                                   fontWeight: FontWeight.w600,
//
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: MySize.size10,),
//                 Container(
//                   width: MySize.scaleFactorWidth*335,
//                   height: MySize.scaleFactorHeight*110,
//                   decoration: BoxDecoration(
//                     color: AppColors.whiteFF,
//                     borderRadius: BorderRadius.circular(MySize.size16),
//                   ),
//                   child: Padding(
//                     padding:  EdgeInsets.all(MySize.size16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextWidgetInterBold(
//                           title: 'Add Tag',
//                           color: AppColors.darkBlack21,
//                           fontSize: MySize.size16,
//                           fontWeight: FontWeight.w600,
//                         ),
//                         SizedBox(height: MySize.size10,),
//                         const Row(
//                           children: [
//                             CustomChips(title: 'Amazon'),
//                             CustomChips(title: 'Star TV'),
//                             CustomChips(title: 'Netflix'),
//                             CustomChips(title: 'Add +'),
//                           ],
//                         )
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: MySize.size40,),
//               ],
//             ),
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
import 'package:tresorly/newvault/newvault.dart';
import '../../utils/my_size.dart';
import '../base_h/customAppBar.dart';
import '../base_h/textfieldwidget.dart';
import '../menu/menu.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_constants/app_constant.dart';
import 'base/customchips.dart';

class EditVault extends StatelessWidget {
  const EditVault({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
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
              text: 'Edit Vault',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
        body: Padding(
            padding: EdgeInsets.only(
                left: MySize.size25, top: MySize.size100, right: MySize.size25),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Column(
                  children: [
                    SizedBox(height: MySize.size5,),
                    Center(
                      child: Container(
                        height: MySize.size60,
                        width: MySize.size60,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteFF,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          AppConstants.editLogo, height: 10, width: 15,),
                      ),
                    ),
                    SizedBox(height: MySize.size10,),
                    TextWidgetInterBold(
                      title: 'Change Icon',
                      color: AppColors.lightBlack5B,
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: MySize.size18,),
                    Container(
                      height: MySize.scaleFactorHeight * 560,
                      width: MySize.scaleFactorWidth * 335,
                      decoration: BoxDecoration(
                        color: AppColors.whiteFF,
                        borderRadius: BorderRadius.circular(MySize.size16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetInterBold(
                              title: 'Credential',
                              color: AppColors.darkBlack21,
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'Select Categories',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, right: 12),
                              child: Container(
                                height: MySize.scaleFactorHeight * 48,
                                width: MySize.scaleFactorWidth * 303,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteFF,
                                    borderRadius: BorderRadius.circular(
                                        MySize.size8),
                                    border: Border.all(
                                      color: AppColors.greyF7,
                                      width: 1,
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: [
                                    TextWidgetInterBold(
                                      title: 'Browser',
                                      color: AppColors.lightBlack5B,
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    Spacer(),
                                    DropdownButton<String>(
                                      underline: const SizedBox(),
                                      icon: const Icon(
                                        Icons.expand_more_outlined,
                                        color: AppColors.darkBlue46,
                                      ),
                                      onChanged: (String? newValue) {},
                                      items: const [
                                        DropdownMenuItem<String>(
                                          value: 'Amazon Prime',
                                          child: Text('Amazon Prime'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Netflix',
                                          child: Text('Netflix'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Coursera',
                                          child: Text('Coursera'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'Site Address',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),
                            TextFieldWidget(
                              hintText: 'https/www.dribbble.com',
                              fontWeight: FontWeight.w600,
                              // suffixicon: Icons.copy_rounded,

                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'User Name ',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),
                            TextFieldWidget(
                              hintText: 'info@innopulse.io',
                              fontWeight: FontWeight.w600,
                              prefixIcon: AppConstants.globeLogo,
                              // suffixicon: Icons.copy_rounded,
                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'Password ',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),

                            TextFieldWidget(
                              hintText: '● ● ● ● ● ● ● ●',
                              height: 1,
                              prefixIcon: AppConstants.lockLogo,
                              // suffixicon: Icons.copy_rounded,
                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'Secure Password Generator ',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),
                            TextFieldWidget(
                              hintText: 'Xa!15Lfm',
                              prefixIcon: AppConstants.lockLogo,
                              // suffixicon: Icons.copy_rounded,
                            ),
                            SizedBox(height: MySize.size12,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
                                },
                                child: Container(
                                  width: MySize.scaleFactorWidth * 76,
                                  height: MySize.scaleFactorHeight * 33,
                                  decoration: BoxDecoration(
                                    color: AppColors.backgroundF7,
                                    borderRadius: BorderRadius.circular(
                                        MySize.size8),
                                  ),
                                  child: Center(
                                    child: TextWidgetInterBold(title: 'Generate',
                                      color: AppColors.darkBlue46,
                                      fontSize: MySize.size12,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MySize.size10,),
                    Container(
                      width: MySize.scaleFactorWidth * 335,
                      height: MySize.scaleFactorHeight * 110,
                      decoration: BoxDecoration(
                        color: AppColors.whiteFF,
                        borderRadius: BorderRadius.circular(MySize.size16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(MySize.size16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetInterBold(
                              title: 'Add Tag',
                              color: AppColors.darkBlack21,
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size10,),
                            const Row(
                              children: [
                                CustomChips(title: 'Amazon'),
                                CustomChips(title: 'Star TV'),
                                CustomChips(title: 'Netflix'),
                                CustomChips(title: 'Add +'),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MySize.size24,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Menu()),
                        );
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
                        child: const Center(child: Text('Update the vault',
                          style: TextStyle(fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteFF),)),
                      ),
                    ),
                    SizedBox(height: MySize.size40,),
                  ],
                ),
              ],
            ),
        ),
    );
  }
}
