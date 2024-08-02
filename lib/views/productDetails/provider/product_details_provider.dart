

import 'package:flutter/cupertino.dart';

class ProductDetailsProvider extends ChangeNotifier{

  double _circularProgressValue = 0.0;

  double get circularProgressValue => _circularProgressValue;

  void setCircularProgressValue(double newValue) {
    _circularProgressValue = newValue;
    notifyListeners();
  }


  double _sliderValue = 0.0;

  double get sliderValue => _sliderValue;

  void setSliderValue(double newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }

}