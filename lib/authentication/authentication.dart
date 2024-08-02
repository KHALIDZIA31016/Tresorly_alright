import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_images.dart';
import '../../utils/my_size.dart';

import '../base_h/customAppBar.dart';
import '../utils/app_colors.dart';
import 'base/textandcheckbox.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});
  @override
  State<Authentication> createState() => _AuthenticationState();
}
class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text: 'Authentication',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MySize.size34),
        child: const Column(
          children: [
            TextAndCheckBox(
              image: AppImages.keyLockLogo,
              title: '2FA Status',
              title2: 'Add an extra layer of security to your accounts by enabling two-factor authentication (2FA).',
              title3: 'Enabled',
            ),
            TextAndCheckBox(
              image:AppImages.authenticationLogo,
              title: 'Biometric Authentication',
              title2: 'Biometric authentication offers several benefits,\nincluding Enhanced security, Convenience, Ease\nof use, Reduced risk of password-related attacks\nIncreased accuracy',
              title3: 'Disabled',
            ),
          ],
        ),
      ),
    );
  }
}
