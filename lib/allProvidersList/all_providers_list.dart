

import 'package:provider/provider.dart';
import 'package:tresorly/views/forgotPassword/forgotPassword/provider/forgot_password_provider.dart';
import 'package:tresorly/views/forgotPassword/otpVerification/provider/otp_verification_provider.dart';
import 'package:tresorly/views/forgotPassword/resetPassword/provider/reset_password_provider.dart';
import 'package:tresorly/views/login/provider/login_provider.dart';
import 'package:tresorly/views/productDetails/provider/product_details_provider.dart';

class RegisterAllProviders {
  static get allProvidersList => [
    ChangeNotifierProvider(create: (context) => LoginProvider()),
    ChangeNotifierProvider(create: (context) => ForgotPasswordProvider()),
    ChangeNotifierProvider(create: (context) => OTPVerificationProvider()),
    ChangeNotifierProvider(create: (context) => ResetPasswordProvider()),
    ChangeNotifierProvider(create: (context) => ProductDetailsProvider()),

  ];
}