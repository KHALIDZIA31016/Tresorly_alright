// import 'package:flutter/material.dart';
// import 'package:tresorly/base/text_widget.dart';
//
// import '../../utils/my_size.dart';
//
// import '../utils/app_colors/app_colors.dart';
// import '../utils/app_constants/app_constant.dart';
// import '../base_h/customAppBar.dart';
// import 'base/containercomponent.dart';
//
// class DataManagement extends StatefulWidget {
//   const DataManagement({super.key});
//
//   @override
//   State<DataManagement> createState() => _DataManagementState();
// }
//
// class _DataManagementState extends State<DataManagement> {
//   bool val = false;
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
//               text: 'Data Management',
//               icon: Icons.arrow_back_rounded,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding:  EdgeInsets.symmetric(horizontal: MySize.size42),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: MySize.size18,),
//             TextWidgetInterBold(
//               title: 'Backup Data',
//               fontSize: MySize.size16,
//               fontWeight: FontWeight.w500,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size6,),
//             Row(
//               children: [
//                 TextWidgetInterBold(
//                   title:'Backup Data',
//                   fontSize: MySize.size14,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.blue8F,
//                 ),
//                 const Spacer(),
//                 Switch(
//                   activeColor: Colors.indigo,
//                   inactiveTrackColor: AppColors.greyF7,
//                   inactiveThumbColor: AppColors.whiteFF,
//                   focusColor: AppColors.whiteFF,
//                   autofocus: true,
//                   activeTrackColor: Colors.indigo,
//                   thumbColor:MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
//                     if (states.contains(MaterialState.disabled)) {
//                       return Colors.white;
//                     }
//                     return Colors.white;
//                   }),
//                   value: val,
//                   onChanged: (value) {
//                     setState(() {
//                       val = !val;
//                     }
//                     );
//                   },
//                 ),
//               ],
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextWidgetInterBold(
//                   title:'Toggle to enable backup of your data on your\ndevice',
//                   fontSize: MySize.size10,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.blue8F,
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding:  EdgeInsets.symmetric(horizontal: MySize.size16,),
//                   child: TextWidgetInterBold(
//                     title:'Enabled',
//                     fontSize: MySize.size10,
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.blue8F,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: MySize.size20,),
//             TextWidgetInterBold(
//               title:'Data Management',
//               fontSize: MySize.size16,
//               fontWeight: FontWeight.w500,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size8,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const ContainerComponent(
//                   image: AppConstants.importLogo,
//                   title: 'Import Data',
//                 ),
//                 SizedBox(width: MySize.size6,),
//                 const ContainerComponent(
//                   image: AppConstants.exportLogo,
//                   title: 'Export Data',
//                 ),
//               ],
//             ),
//             SizedBox(height: MySize.size24,),
//             TextWidgetInterBold(
//               title: 'Delete Data',
//               fontSize: MySize.size16,
//               fontWeight: FontWeight.w500,
//               color: AppColors.blue8F,
//             ),
//             SizedBox(height: MySize.size8,),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(Icons.delete_outlined,color: AppColors.red1B,size: MySize.size18,),
//                 SizedBox(width: MySize.size4,),
//                 TextWidgetInterBold(
//                   title: 'Delete Data',
//                   fontSize: MySize.size12,
//                   fontWeight: FontWeight.w400,
//                   color: AppColors.red1B,
//                 ),
//               ],
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }




/// 2nd time




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
          padding: EdgeInsets.only(left: MySize.size25, top: MySize.size25),
          child: GestureDetector(
            onTap: () {
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
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size6,),
                Row(
                  children: [
                    TextWidgetInterBold(
                      title:'Backup Data',
                      fontSize: MySize.size14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                    const Spacer(),
                    Switch(
                      activeColor: Colors.indigo,
                      inactiveTrackColor: AppColors.greyF7,
                      inactiveThumbColor: AppColors.whiteFF,
                      focusColor: AppColors.whiteFF,
                      autofocus: true,
                      activeTrackColor: AppColors.blueBC,
                      thumbColor:MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.white;
                        }
                        return Colors.white;
                      }),
                      value: val,
                      onChanged: (value) {
                        setState(() {
                          val = !val;
                        }
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgetInterBold(
                      title:'Toggle to enable backup of your data on your\ndevice',
                      fontSize: MySize.size10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blue8F,
                    ),
                    const Spacer(),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MySize.size16,),
                      child: TextWidgetInterBold(
                        title:'Enabled',
                        fontSize: MySize.size10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blue8F,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size20,),
                TextWidgetInterBold(
                  title:'Data Management',
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue8F,
                ),
                SizedBox(height: MySize.size8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
