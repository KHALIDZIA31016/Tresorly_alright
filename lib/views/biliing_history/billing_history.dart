
import 'package:flutter/material.dart';
import 'package:tresorly/utils/app_constants/app_constant.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import '../../base/text_widget.dart';
import '../../base_h/customAppBar.dart';
import '../../utils/my_size.dart';

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
              fontSize: 20,
              color: const Color(0XFF1750BF),
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => ListTile(
                      leading: Image.asset(
                        AppConstants.upIcon,
                        scale: 3,
                      ),
                      trailing: const Text(
                        '- 24.50 CHF',
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                      title: const Text('Yearly Subscription',  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500 ),),
                      subtitle:  Row(
                        children: [
                          Image.asset(
                            color: Color(0XFF292D32),
                            AppConstants.calendar2,
                            scale: 3,
                          ),
                          5.wt,
                          Text('12/2/2024'),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            color: Color(0XFF292D32),
                            AppConstants.clockIcon,
                            scale: 3,
                          ),
                          5.wt,
                          Text('07:21'),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
