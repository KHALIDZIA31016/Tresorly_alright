import 'package:flutter/material.dart';
import 'package:tresorly/base/text_widget.dart';
import 'package:tresorly/views/forgot_password/forget_password.dart';

import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_constants/app_constant.dart';
import '../../utils/my_size.dart';
import '../getting_started/getting_started.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
        MySize().init(context);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GettingStarted()),
      );
    });


    return Scaffold(
      backgroundColor: Color(0XFF00132D),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/splash_bg.png'),
              fit: BoxFit.fill
              ,
            ),
          ),

        ),
      ),
    );
  }
}





//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:tresorly/base/text_widget.dart';
// import 'package:tresorly/utils/my_size.dart';
// import 'package:tresorly/views/forgot_password/forget_password.dart';
// import 'package:tresorly/views/getting_started/getting_started.dart';
// import '../../utils/app_colors/app_colors.dart';
// import '../../utils/app_constants/app_constant.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
//
//     Future.delayed(const Duration(seconds: 5), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const GettingStarted()),
//       );
//     });
//
//     return Scaffold(
//         backgroundColor: const Color(0xff073b5c),
//         body: Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/splashscreen.png'),
//                 fit: BoxFit.fitHeight,
//               ),
//             ),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   AppConstants.appLogo,
//                   SizedBox(height: MySize.size7),
//                   TextWidgetInterBold(
//                     title: 'Your keys at the right place.',
//                     color: AppColors.greyF7,
//                     fontWeight: FontWeight.w400,
//                     fontSize: MySize.size12,
//                   ),
//                 ],
//               ),
//             ),
//             ),
//     );
//     }
// }
