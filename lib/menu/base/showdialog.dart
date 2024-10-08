import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_images.dart';

import '../../utils/app_text.dart';
import '../../../utils/my_size.dart';
import '../../utils/app_colors.dart';
import 'menurow.dart';

class ShowDialogBox extends StatelessWidget {
  const ShowDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(
          context: context,
          builder: (context) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: AlertDialog(
              
                  backgroundColor: AppColors.whiteFF,
                  surfaceTintColor:AppColors.whiteFF,
                  titlePadding: EdgeInsets.only(top:MySize.size30),
                  title:Column(
                    children: [
                      TextWidgetInterBold(
                        title: 'Delete Account',
                        fontSize: MySize.size18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blue8F,
                      ),
                      TextWidgetInterBold(
                        title: 'Are you sure you want to delete the\naccount?',
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blue8F,
                        align:TextAlign.center,
                      ),
                      SizedBox(height: MySize.size20,),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: TextWidgetInterBold(
                              title: 'Decline',
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.red1B,
                              align:TextAlign.center,
                            ),
                          ),
                          SizedBox(width: MySize.size30,),
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: TextWidgetInterBold(
                              title: 'Accept',
                              fontSize: MySize.size14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFF2B83F2),
                              align:TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            );
          },);
      },
      child: MenuRow(
          title: 'Delete Account',
          color2: AppColors.red1B,
          image: const AssetImage(AppImages.deleteLogo),
          color: AppColors.red1B.withOpacity(.5)),
    );
  }
}
