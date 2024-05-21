//
// import 'package:flutter/material.dart';
// import 'package:tresorly/base/text_widget.dart';
// import '../../utils/my_size.dart';
// import '../Editvault/editvault.dart';
// import '../base_h/customAppBar.dart';
// import '../base_h/textfieldwidget.dart';
// import '../utils/app_colors/app_colors.dart';
// import '../utils/app_constants/app_constant.dart';
//
// class NewVault extends StatelessWidget {
//   const NewVault({super.key});
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
//               },
//             child: const CustomAppBar(
//               text: 'Create New Vault',
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
//                     child: Icon(Icons.broken_image_outlined,color: AppColors.darkGrey84,size: MySize.size35,),
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
//                                 title: 'Categories',
//                                 color: AppColors.lightBlack5B,
//                                 fontSize: MySize.size14,
//                                 fontWeight: FontWeight.w400,
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
//                          TextFieldWidget(
//                            hintText: 'Enter Password',
//                           prefixIcon: AppConstants.globeLogo,
//                            suffixicon: Icons.copy_rounded,
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
//                           hintText: 'Enter User Name',
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
//                           hintText: 'Enter Password',
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
//                           hintText: 'Generate Password',
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
//                                   MaterialPageRoute(builder: (context) => const EditVault()),
//                                 );
//                               },
//                               child: Center(
//                                 child: TextWidgetInterBold(
//                                   title: 'Create',
//                                   color: AppColors.lightBlack5B,
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
//                         SizedBox(height: MySize.size12,),
//                         SizedBox(
//                           height: MySize.size36,
//                           width: MySize.size72,
//                           child:  GestureDetector(
//                             onTap: (){},
//                             child: Chip(
//                               labelPadding: EdgeInsets.only(left: MySize.size8),
//                               label: Row(
//                                 children:[
//                                   TextWidgetInterBold(
//                                       title: 'Add +',
//                                     color: AppColors.lightBlack5B,
//                                     fontSize: MySize.size12,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ],
//                               ),
//                               backgroundColor: AppColors.backgroundF7,
//                             ),
//                           ),
//                         )
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


/// 2nd timwe


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import '../../utils/my_size.dart';
import '../Editvault/editvault.dart';
import '../base_h/customAppBar.dart';
import '../base_h/textfieldwidget.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/app_constants/app_constant.dart';

class NewVault extends StatelessWidget {
  const NewVault({super.key});

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
              text: 'Create New Vaults',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
        body: Padding(
            padding:  EdgeInsets.only(left: MySize.size25,top: MySize.size100,right: MySize.size25),
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
                        decoration:const BoxDecoration(
                          color: AppColors.whiteFF,
                          shape: BoxShape.circle,
                        ) ,
                        child: Icon(Icons.broken_image_outlined,color: AppColors.darkGrey84,size: MySize.size35,),
                      ),
                    ),
                    SizedBox(height: MySize.size10,),
                    TextWidgetInterBold(
                      title: 'Change Icon',
                      color: AppColors.darkBlue46,
                      fontSize: MySize.size12,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: MySize.size18,),
                    Container(
                      height: MySize.scaleFactorHeight * 560,
                      width: MySize.scaleFactorWidth* 335,
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
                            Container(
                              height: MySize.scaleFactorHeight * 48,
                              width: MySize.scaleFactorWidth* 303,
                              decoration: BoxDecoration(
                                  color: AppColors.whiteFF,
                                  borderRadius: BorderRadius.circular(MySize.size8),
                                  border: Border.all(
                                    color: AppColors.greyF7,
                                    width: 1,
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12, right: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextWidgetInterBold(
                                      title: 'Select Category',
                                      color: AppColors.lightBlack5B,
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    Spacer(),
                                    Icon(Icons.expand_more),
                                    // DropdownButton<String>(underline: const SizedBox(),
                                    //   onChanged: (String? newValue) {
                                    //   },
                                    //   items: const [
                                    //     DropdownMenuItem<String>(
                                    //       value: 'Amazon Prime',
                                    //       child: Text('Amazon Prime'),
                                    //     ),
                                    //     DropdownMenuItem<String>(
                                    //       value: 'Netflix',
                                    //       child: Text('Netflix'),
                                    //     ),
                                    //     DropdownMenuItem<String>(
                                    //       value: 'Coursera',
                                    //       child: Text('Coursera'),
                                    //     ),
                                    //   ],
                                    // ),

                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: MySize.size16,),
                            TextWidgetInterBold(
                              title: 'site Address',
                              color: AppColors.darkGrey84,
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size4,),
                            TextFieldWidget(
                              hintText: 'Enter Site Address',
                              prefixIcon: AppConstants.globeLogo,
                              suffixicon: Container(width: 47, height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: TextWidgetInterMedium(title: 'view', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0XFF)),
                              ),

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
                              hintText: 'Enter User Name',
                              prefixIcon: Icon(Icons.person, color: Color(0XFF165290),),
                              suffixicon: Container(width: 47, height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: TextWidgetInterMedium(title: 'view', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0XFF)),
                              ),
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
                              hintText: 'Enter Password',
                              prefixIcon: AppConstants.lockLogo,
                              suffixicon: Container(width: 47, height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  color: Color(0XFF168DBC).withOpacity(.20),
                                ),
                                child: Center(child: TextWidgetInterMedium(title: 'view', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0XFF165290))),
                              ),
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
                              hintText: 'Generate Password',
                              prefixIcon: AppConstants.lockLogo,
                              suffixicon:Icon(Icons.copy)
                            ),
                            SizedBox(height: MySize.size12,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditVault()));
                                },
                                child: Container(
                                  width: MySize.scaleFactorWidth*76,
                                  height: MySize.scaleFactorHeight*33,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0XFF168DBC).withOpacity(.20),
                                  ),
                                  child: Center(child: TextWidgetInterMedium(title: 'Generate', fontSize: 12, fontWeight: FontWeight.w500, color: Color(0XFF165290))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MySize.size10,),
                    Container(
                      width: MySize.scaleFactorWidth*335,
                      height: MySize.scaleFactorHeight*110,
                      decoration: BoxDecoration(
                        color: AppColors.whiteFF,
                        borderRadius: BorderRadius.circular(MySize.size16),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(MySize.size16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetInterBold(
                              title: 'Add Tag',
                              color: AppColors.darkBlack21,
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(height: MySize.size12,),
                            SizedBox(
                              height: MySize.size36,
                              width: MySize.size72,
                              child:  GestureDetector(
                                onTap: (){},
                                child: Chip(
                                  labelPadding: EdgeInsets.only(left: MySize.size8),
                                  label: Row(
                                    children:[
                                      TextWidgetInterBold(
                                        title: 'Add +',
                                        color: AppColors.lightBlack5B,
                                        fontSize: MySize.size12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  backgroundColor: AppColors.backgroundF7,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MySize.size24,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const EditVault()),
                        );
                      },
                      child: Container(
                        height: MySize.size52,
                        width: MySize.scaleFactorWidth*300,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xff165290) ,Color(0xff168DBC) ],
                            begin: Alignment(0, 7),
                            end: Alignment(2, 0),

                          ),
                          borderRadius: BorderRadius.circular(MySize.size16),
                        ),
                        child: const Center(child: Text('Create the vault',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.whiteFF),)),
                      ),
                    ),

                    SizedBox(height: MySize.size40,),

                  ],
                ),
              ],
            ),
    ),);}
}
