// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tresorly/utils/my_size.dart';
// import '../base_h/customAppBar.dart';
// import '../newvault/newvault.dart';
// import '../utils/app_colors/app_colors.dart';
// import 'base/textFieldWidget.dart';
//
// class MyVault extends StatefulWidget {
//   const MyVault({Key? key}) : super(key: key);
//
//   @override
//   _MyVaultState createState() => _MyVaultState();
// }
//
// class _MyVaultState extends State<MyVault> {
//   int selectedButtonIndex = 0;
//
//  final  List<bool> heartTapped = List.generate(6, (index) => false);
//
//   ///buttons container
//   final List<String> buttons = [
//     "All",
//     "Recent",
//     "Favourite",
//     "Last Edits",
//   ];
//
//   ///social media container
//   final List<Map<String, dynamic>> socialMediaTitles = [
//     {
//       "text": "Amazon Prime",
//       "image": "assets/assets_h/images/amazon.png",
//     },
//     {
//       "text": "Gmail",
//       "image": "assets/assets_h/images/gmail.png",
//     },
//     {
//       "text": "Messenger",
//       "image": "assets/assets_h/images/messenger.png",
//     },
//     {
//       "text": "Udemy",
//       "image": "assets/assets_h/images/udemy.png",
//     },
//     {
//       "text": "Netflix",
//       "image": "assets/assets_h/images/netflix.png",
//     },
//     {
//       "text": "Coursera",
//       "image": "assets/assets_h/images/coursera.png",
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     MySize().init(context);
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBodyBehindAppBar: true,
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
//               text: 'My Vaults',
//               icon: Icons.arrow_back_rounded,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(
//           top: MySize.size100,
//         ),
//         child: Column(
//           children: [
//             const TextFieldWidget(),
//             SizedBox(
//               height: MySize.size25,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: MySize.size25),
//               child: SizedBox(
//                 height: 45,
//                 child: ListView.builder(
//                   itemCount: buttons.length,
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedButtonIndex = index;
//                         });
//                       },
//                       child: Container(
//                         margin: EdgeInsets.only(left: MySize.size6),
//                         height: MySize.scaleFactorHeight * 35,
//                         width: MySize.scaleFactorWidth * 90,
//                         decoration: BoxDecoration(
//                           color: selectedButtonIndex == index
//                               ? AppColors.blue8F.withOpacity(.6)
//                               : AppColors.whiteFF,
//                           borderRadius: BorderRadius.circular(45),
//                         ),
//                         child: Center(
//                           child: Text(
//                             buttons[index],
//                             style: TextStyle(
//                               color: selectedButtonIndex == index
//                                   ? AppColors.whiteFF
//                                   : AppColors.darkBlue46,
//                               fontSize: MySize.size14,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: MySize.size20,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const NewVault()),
//                 );
//               },
//               child: SizedBox(
//                 height: 560,
//                 child: ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   padding: EdgeInsets.zero,
//                   itemCount: socialMediaTitles.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 25),
//                       child: Dismissible(
//                         direction: DismissDirection.endToStart,
//                         key: Key(socialMediaTitles[index]["text"]),
//                         onDismissed: (direction) {
//                           setState(() {
//                             socialMediaTitles.removeAt(index);
//                           });
//                         },
//                         background: Container(
//                           color: Colors.transparent,
//                         ),
//                         secondaryBackground: Container(
//                           color: AppColors.backgroundF7,
//                           padding: const EdgeInsets.only(left: 230),
//                           alignment: Alignment.centerRight,
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: MySize.size34,
//                                 width: MySize.size34,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: AppColors.darkBlue46,
//                                 ),
//                                 child: const Icon(
//                                   Icons.mode_edit_outlined,
//                                   color: AppColors.whiteFF,
//                                 ),
//                               ),
//                               SizedBox(width: MySize.size12),
//                               Container(
//                                 height: MySize.size34,
//                                 width: MySize.size34,
//                                 decoration: const BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: AppColors.whiteFF,
//                                 ),
//                                 child: const Icon(
//                                   Icons.delete_outlined,
//                                   color: AppColors.red1B,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         child: Container(
//                           margin: EdgeInsets.only(top: MySize.size12),
//                           height: MySize.scaleFactorHeight * 84,
//                           width: MySize.scaleFactorWidth * 334,
//                           decoration: BoxDecoration(
//                             color: AppColors.whiteFF,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(12.0),
//                                 child: Container(
//                                   height: MySize.scaleFactorHeight * 60,
//                                   width: MySize.scaleFactorWidth * 64,
//                                   decoration: BoxDecoration(
//                                     color: AppColors.backgroundF7,
//                                     borderRadius: BorderRadius.circular(16),
//                                   ),
//                                   child:
//                                   Image.asset(socialMediaTitles[index]['image']),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: MySize.size10,
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     socialMediaTitles[index]['text'],
//                                     style: TextStyle(
//                                       color: AppColors.darkBlue46,
//                                       fontSize: MySize.size16,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: MySize.size6,
//                                   ),
//                                   Text(
//                                     'info@infoplus.com',
//                                     style: TextStyle(
//                                       color: AppColors.darkBlue46,
//                                       fontSize: MySize.size12,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: MySize.size6,
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         '********',
//                                         style: TextStyle(
//                                           color: AppColors.darkGrey84,
//                                           fontSize: MySize.size12,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: MySize.size6,
//                                       ),
//                                       Icon(
//                                         Icons.remove_red_eye,
//                                         size: MySize.size16,
//                                         color: AppColors.lightBlack5B,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               const Spacer(),
//                               Icon(
//                                 Icons.copy_rounded,
//                                 color: AppColors.darkGrey84,
//                                 size: MySize.size26,
//                               ),
//                               SizedBox(width: MySize.size4,),
//                               GestureDetector(
//                                 onTap: () {
//                                   setState(() {
//                                     heartTapped[index] = !heartTapped[index];
//                                   });
//                                 },
//                                 child: Icon(
//                                   Icons.favorite,
//                                   color: heartTapped[index]
//                                       ? AppColors.red1B
//                                       : AppColors.greyF7,
//                                   size: MySize.size26,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: MySize.size20,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


/// 2nd timw
///

import 'package:flutter/material.dart';
import 'package:tresorly/utils/my_size.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import '../base_h/customAppBar.dart';
import '../newvault/newvault.dart';
import '../utils/app_colors/app_colors.dart';
import 'base/textFieldWidget.dart';

class MyVault extends StatefulWidget {
  const MyVault({Key? key}) : super(key: key);

  @override
  _MyVaultState createState() => _MyVaultState();
}

class _MyVaultState extends State<MyVault> {
  int selectedButtonIndex = 0;

  List<bool> heartTapped = List.generate(6, (index) => false);

  ///buttons container
  List<String> buttons = [
    "All",
    "Recent",
    "Favourite",
    "Last Edits",
  ];

  ///social media container
  List<Map<String, dynamic>> socialMediaTitles = [
    {
      "text": "Amazon Prime",
      "image": "assets/assets_h/images/amazon.png",
    },
    {
      "text": "Gmail",
      "image": "assets/assets_h/images/gmail.png",
    },
    {
      "text": "Messenger",
      "image": "assets/assets_h/images/messenger.png",
    },
    {
      "text": "Udemy",
      "image": "assets/assets_h/images/udemy.png",
    },
    {
      "text": "Netflix",
      "image": "assets/assets_h/images/netflix.png",
    },
    {
      "text": "Coursera",
      "image": "assets/assets_h/images/coursera.png",
    },
  ];


  List<String> subTitle = [

    'Gmail',
    'Messenger',
    'Udemy',
    'Netflix',
    'Coursera'
  ];



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
              text: 'My Vaults',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(
                top: MySize.size110,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MySize.size25,
                  ),
                  const TextFieldWidget(),
                  SizedBox(
                    height: MySize.size25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MySize.size25),
                    child: SizedBox(
                      height: 45,
                      child: ListView.builder(
                        itemCount: buttons.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedButtonIndex = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: MySize.size6),
                              height: MySize.scaleFactorHeight * 35,
                              width: MySize.scaleFactorWidth * 90,
                              decoration: BoxDecoration(
                                gradient: selectedButtonIndex == index
                                    ? const LinearGradient(
                                  colors: [Color(0xff165290), Color(0xff168DBC)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                                    : null,
                                color: selectedButtonIndex == index
                                    ? null
                                    : AppColors.whiteFF,
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: Center(
                                child: Text(
                                  buttons[index],
                                  style: TextStyle(
                                    color: selectedButtonIndex == index
                                        ? AppColors.whiteFF
                                        : AppColors.darkBlue46,
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MySize.size20,
                  ),
          
                  /// Listings
          
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewVault()),
                      );
                    },
                    child: SizedBox(
                      height: 560,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: socialMediaTitles.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MySize.size25),
                            child: Dismissible(
                              direction: DismissDirection.endToStart,
                              key: Key(socialMediaTitles[index]["text"]),
                              onDismissed: (direction) {
                                setState(() {
                                  socialMediaTitles.removeAt(index);
                                });
                              },
                              background: Container(
                                color: Colors.transparent,
                              ),
                              secondaryBackground: Container(
                                color: AppColors.backgroundF7,
                                padding: const EdgeInsets.only(left: 230),
                                alignment: Alignment.centerRight,
                                child: Row(
                                  children: [
                                    Container(
                                      height: MySize.size34,
                                      width: MySize.size34,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.darkBlue46,
                                      ),
                                      child: const Icon(
                                        Icons.mode_edit_outlined,
                                        color: AppColors.whiteFF,
                                      ),
                                    ),
                                    SizedBox(width: MySize.size12),
                                    Container(
                                      height: MySize.size34,
                                      width: MySize.size34,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.whiteFF,
                                      ),
                                      child: const Icon(
                                        Icons.delete_outlined,
                                        color: AppColors.red1B,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: Container(
          
                                margin: EdgeInsets.only(top: MySize.size12),
                                height: MySize.scaleFactorHeight * 84,
                                width: MySize.scaleFactorWidth * 334,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteFF,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        height: MySize.scaleFactorHeight * 60,
                                        width: MySize.scaleFactorWidth * 64,
                                        decoration: BoxDecoration(
                                          color: AppColors.backgroundF7,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Image.asset(
                                            socialMediaTitles[index]['image']),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MySize.size14,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          socialMediaTitles[index]['text'],
                                          style: TextStyle(
                                            color: AppColors.darkBlue46,
                                            fontSize: MySize.size16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MySize.size3,
                                        ),
                                        Text(
                                          'info@infoplus.com',
                                          style: TextStyle(
                                            color: AppColors.darkBlue46,
                                            fontSize: MySize.size12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: MySize.size3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '************',
                                              style: TextStyle(
                                                color: AppColors.darkGrey84,
                                                fontSize: MySize.size12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MySize.size6,
                                            ),
                                            Icon(
                                              Icons.remove_red_eye,
                                              size: MySize.size16,
                                              color: AppColors.lightBlack5B,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () {
                                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                            content: Center(child: Text('Copied password'))));
                                      },
                                      child: Icon(
                                        Icons.copy_rounded,
                                        color: AppColors.darkGrey84,
                                        size: MySize.size26,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MySize.size4,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          heartTapped[index] =
                                          !heartTapped[index];
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: heartTapped[index]
                                            ? AppColors.red1B
                                            : AppColors.greyF7,
                                        size: MySize.size26,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MySize.size26,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
          
                  )
                ],
              ),
          ),
        ),
    );
  }
}
