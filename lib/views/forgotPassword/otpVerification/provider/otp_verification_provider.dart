

import 'dart:async';

import 'package:flutter/cupertino.dart';

class OTPVerificationProvider extends ChangeNotifier{

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;




  late Timer _timer;
  int _count = 59;

  int get count => _count;


  void StartTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_count > 0) {
        _count--;
        notifyListeners();
      } else {
        _timer.cancel();
      }
    });
    notifyListeners();
  }

}