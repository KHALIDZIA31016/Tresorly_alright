import 'package:flutter/material.dart';
import 'package:tresorly/base_h/customAppBar.dart';
import 'package:tresorly/utils/app_constant.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/utils/app_text.dart';
import 'package:tresorly/utils/my_size.dart';

class BillingHistory extends StatefulWidget {
  const BillingHistory({super.key});

  @override
  State<BillingHistory> createState() => _BillingHistoryState();
}

class _BillingHistoryState extends State<BillingHistory> {
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
              text: 'Billing History',
              icon: Icons.arrow_back_rounded,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0XFFF0F4F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20, bottom: 17),
            child: TextWidgetInterBold(
              title: 'History',
              fontSize: 22,
              color: const Color(0XFF1750BF),
              FontFamily: 'Outfit-Regular',
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => ListTile(
                      leading: Image.asset(
                        AppImages.upIcon,
                        scale: 3,
                      ),
                      trailing: const Text(
                        '- 24.50 CHF',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontFamily: 'Outfit-Regular',
                        ),
                      ),
                      title: const Text(
                        'Yearly Subscription',
                        style: TextStyle(
                            fontFamily: 'Outfit-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: [
                          Image.asset(
                            color: Colors.black54,
                            AppImages.calendar2,
                            scale: 3,
                          ),
                          5.wd,
                          const Text(
                            '12/2/2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black54,
                              fontFamily: 'Outfit-Regular',
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            color: const Color(0XFF292D32),
                            AppImages.clockIcon,
                            scale: 3,
                          ),
                          5.wd,
                          const Text(
                            '07:21',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                              fontFamily: 'Outfit-Regular',
                            ),
                          ),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
