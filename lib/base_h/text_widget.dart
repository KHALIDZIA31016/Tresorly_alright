import 'package:flutter/material.dart';

Widget TextWidgetInterBold(
    {
      double? height = 1,
    required String title,
    Color color = Colors.black,
      String FontFamily = 'Poppins',
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    TextAlign align = TextAlign.start
    }
    )
{
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 0,
      fontFamily: FontFamily,
    ),
    textAlign: align,
  );
}

Widget TextWidgetInterRegular(
    {required String title,
    Color color = Colors.black,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
      String FontFamily = 'Poppins',
    TextAlign align = TextAlign.start}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 0,
      fontFamily: FontFamily,
    ),
    textAlign: align,
  );
}

Widget TextWidgetInterMedium(
    {required String title,
    Color color = Colors.black,
    double fontSize = 12,
      String FontFamily = 'Poppins',
    FontWeight fontWeight = FontWeight.normal,
    TextAlign align = TextAlign.start}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 0,
      fontFamily: FontFamily,
    ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}

Widget TextWidgetMerri(
    {required String title,
    Color color = Colors.black,
    double fontSize = 12,
      String FontFamily = 'Poppins',
    FontWeight fontWeight = FontWeight.normal,
    TextAlign align = TextAlign.start}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.5,
      wordSpacing: 5,
      fontFamily: FontFamily,
    ),
    textAlign: align,
  );
}
