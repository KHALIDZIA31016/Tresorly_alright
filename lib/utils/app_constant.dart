

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static String appName = "Jabbar";

}

extension EmptySpace on num {
  SizedBox get ht => SizedBox(height: toDouble().h);
  SizedBox get wd => SizedBox(width: toDouble().w);
}