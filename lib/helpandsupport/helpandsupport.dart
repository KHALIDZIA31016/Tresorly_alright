import 'package:flutter/material.dart';
import '../utils/app_text.dart';
import '../../utils/my_size.dart';
import '../base_h/customAppBar.dart';
import '../utils/app_colors.dart';
import 'base/formfieldcomponent.dart';
class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              text: 'Help And Support',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MySize.size38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MySize.size18,),
            TextWidgetInterBold(
              title:'Generate Ticket',
              fontSize: MySize.size16,
              fontWeight: FontWeight.w500,
              color: AppColors.blue8F,
            ),
            SizedBox(height: MySize.size10,),
            TextWidgetInterBold(
              title: 'Issue',
              color: AppColors.blue8F,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: MySize.size5,),
            Container(
              height: MySize.scaleFactorHeight * 45,
              width: MySize.scaleFactorWidth* 320,
              decoration: BoxDecoration(
                 // color: AppColors.whiteFF,
                  borderRadius: BorderRadius.circular(MySize.size4),
                  border: Border.all(
                    color: AppColors.blue8F.withOpacity(.2),
                    width: .5,
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidgetInterBold(
                    title: 'Select Issue',
                    color: AppColors.blue8F.withOpacity(.6),
                    fontSize: MySize.size14,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(width: 15,),
                  DropdownButton<String>(
                    icon:Icon(
                      Icons.expand_more_outlined,
                      color: AppColors.blue8F.withOpacity(.6),),
                    underline: const SizedBox(),
                    onChanged: (String? newValue) {
                    },
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
            SizedBox(height: MySize.size14,),
            TextWidgetInterBold(
              title: 'Subject',
              color: AppColors.blue8F,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
            const FormFieldComponent(
              maxLines: null,
              hintText: 'Enter Subject',

            ),
            SizedBox(height: MySize.size14,),
            TextWidgetInterBold(
              title: 'Description',
              color: AppColors.blue8F,
              fontSize: MySize.size14,
              fontWeight: FontWeight.w400,
            ),
            FormFieldComponent(
              hintText: 'Enter Description',
              height: MySize.scaleFactorHeight* 210,
              maxLines:7,
            ),
            SizedBox(height: MySize.scaleFactorHeight*230,),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: MySize.size56,
                  width: MySize.scaleFactorWidth*310,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff165290) ,Color(0xff168DBC) ],
                      begin: Alignment(0, 7),
                      end: Alignment(2, 0),

                    ),
                    borderRadius: BorderRadius.circular(MySize.size16),
                  ),
                  child: const Center(child: Text('Submit',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.whiteFF),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
