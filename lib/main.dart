import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/authentication/authentication.dart';
import 'package:tresorly/menu/menu.dart';
import 'package:tresorly/test.dart';
import 'package:tresorly/utils/my_size.dart';
import 'package:tresorly/views/accessibility_screen/accessibility_screen.dart';
import 'package:tresorly/views/add_card/Add_card.dart';
import 'package:tresorly/views/auth_screens/login_screen/login_screen.dart';
import 'package:tresorly/views/auth_screens/signup_screen/signup_screen.dart';
import 'package:tresorly/views/biliing_history/billing_history.dart';
import 'package:tresorly/views/forgot_password/base/countNotifier.dart';
import 'package:tresorly/views/forgot_password/forget_password.dart';
import 'package:tresorly/views/forgot_password/otp_verification.dart';
import 'package:tresorly/views/forgot_password/update_password.dart';
import 'package:tresorly/views/getting_started/getting_started.dart';
import 'package:tresorly/views/home_screen/home_screen.dart';
import 'package:tresorly/views/language_selection/language_selection.dart';
import 'package:tresorly/views/legal_regulatory/legal_regulatory.dart';
import 'package:tresorly/views/notification_screen/notifiction_screen.dart';
import 'package:tresorly/views/payment_method/payment_screen.dart';
import 'package:tresorly/views/security_privacySetting/security_privacy.dart';
import 'package:tresorly/views/splash_screen/splash_screen.dart';
import 'package:tresorly/views/subscription_plan/subscription_screen.dart';

import 'editprofile/editprofile.dart';
import 'myvault/myvault.dart';
// import 'package:flutter_stripe/flutter_stripe.dart/';
void main() {
//   WidgetsFlutterBinding.ensureInitialized();
// Stripe.publishableKey = 'pk_test_51PDfhHCZhdfYj0lZD9WfkgOgsOyQFcFB70VqmTdSpW8uQtiPwMYBXjee97FXMOQeIpdJ96AjlNye17vVDRV9Z9Iq00u1McMWfb';
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return ChangeNotifierProvider(
      create: (context) => CounterNotifier(),

      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
