

import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';
import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/my_size.dart';


class LegalRegulatoryScreen extends StatefulWidget {
  const LegalRegulatoryScreen({super.key});

  @override
  State<LegalRegulatoryScreen> createState() => _LegalRegulatoryScreenState();
}

class _LegalRegulatoryScreenState extends State<LegalRegulatoryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MySize.size72),
        child: Padding(
          padding: EdgeInsets.only(left: MySize.size25, top: MySize.size25),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomAppBar(
              text: 'Legal & Regulatory',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0XFFF0F4F7),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 18),
              child: TextWidgetInterBold(
                  title: 'Legal and Regulatory', fontSize: 20,
                  color: const Color(0XFF17508F),fontWeight: FontWeight.w400, FontFamily: 'Outfit-Regular'),
            ),
            Container(
              height: 44, width: 331,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    color: AppColors.grey28.withOpacity(.15),
                    spreadRadius: 0,
                    blurRadius: 2
                )],
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextWidgetInterBold(title: 'Terms of Service', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                      ),
                      Spacer(),
                      Icon(Icons.expand_more, size: 35, color: AppColors.blue8F,)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
           RichText(text: const TextSpan(
             children: [
               TextSpan(
                 text:
                 'Lorem ipsum dolor sit amet consectetur. Auctor urna et at faucibus cras. Consectetur sed lorem aliquet '
                     'adipiscing sit in porttitor viverra. Erat maecenas euismod a dictum. Interdum massa senectus ultricies '
                     'malesuada scelerisque sed \n\n\nDiam quam dignissim dignissim tellus tellus eu sed a. Et nec suspendisse ante sed'
                     ' odio sit mauris nec sit. Adipiscing ipsum lacus in penatibus tortor faucibus nisl diam. ',
                 style: TextStyle(fontSize: 16, fontWeight:FontWeight.w400, color: AppColors.balck),
               ),
               TextSpan(
                 text: 'Aenean non ut malesuada',
                 style: TextStyle(fontSize: 16, fontWeight:FontWeight.w700, color: AppColors.balck),
               ),
               TextSpan(
                 text: ' gravida vel integer suspendisse arcu velit. Facilisis vel lectus a nisi. Vitae donec ipsum eu nulla '
                       'pellentesque semper. Dapibus egestas diam mi eleifend risus nunc enim.',
                 style: TextStyle(fontSize: 16, fontWeight:FontWeight.w400, color: AppColors.balck),
               ),
               TextSpan(
                 text: ' Natoque pellentesque amet interdum ut felis. Vitae integer posuere',
                 style: TextStyle(fontSize: 16, fontWeight:FontWeight.w700, color: AppColors.balck),
               ),
               TextSpan(
                 text: ' euismod ut amet. Diam amet egestas pretium a ultrices auctor cras scelerisque. In porttitor sed',
                 style: TextStyle(fontSize: 14, fontWeight:FontWeight.w400, color: AppColors.balck),
               ),
             ]
           )),

            const SizedBox(height: 15,),
            Container(
                height: 44, width: 331,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: AppColors.grey28.withOpacity(.15),
                    spreadRadius: 0,
                    blurRadius: 2
                  )],
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextWidgetInterBold(title: 'Privacy Policy', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.blue8F, ),
                    ),
                    Spacer(),
                    Icon(Icons.expand_more, size: 35, color: AppColors.blue8F,)
                  ],
                )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 44, width: 331,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                    color: AppColors.grey28.withOpacity(.15),
                    spreadRadius: 0,
                    blurRadius: 2
                )],
                borderRadius: BorderRadius.all(Radius.circular(8),
                ),
                color: AppColors.whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextWidgetInterBold(title: 'Compliance Certifications', fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.blue8F),
                      ),
                      Spacer(),
                      Icon(Icons.expand_more, size: 35, color: AppColors.blue8F,)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

