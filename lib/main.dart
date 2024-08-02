
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tresorly/allProvidersList/all_providers_list.dart';
import 'package:tresorly/utils/my_size.dart';
import 'package:tresorly/views/productDetails/product_details_screen.dart';

import 'views/login/login_screen.dart';

void main() {
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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: RegisterAllProviders.allProvidersList,
          child: const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: ProductDetailsScreen(),
            // home: LoginScreen(),
            // home: SplashScreen(),
          ),
        );
      },
    );
  }
}
