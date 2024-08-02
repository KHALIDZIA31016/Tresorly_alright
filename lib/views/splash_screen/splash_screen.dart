import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tresorly/utils/app_colors.dart';
import 'package:tresorly/utils/app_images.dart';
import 'package:tresorly/views/gettingStarted/getting_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() =>  const GettingStarted());
    });
  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: AppColors.darkScaffold,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image(image: AssetImage(AppImages.splashBg),fit: BoxFit.cover,)),
    );
  }
}