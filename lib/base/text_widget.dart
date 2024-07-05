import 'package:flutter/material.dart';
import 'package:tresorly/generated/assets.dart';


Widget TextWidgetInterBold({
  required String title,
  required double fontSize,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align =TextAlign.start,
  String FontFamily = 'Poppins',
  Color color = Colors.black,

})

{return Text(
  title,
  style: TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontFamily,
  ),
  maxLines: 4,
  overflow: TextOverflow.ellipsis,
  textAlign: align,
);}




Widget TextWidgetInterRegular({
  required String title,
  required double fontSize,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align = TextAlign.start,
  String FontFamily = 'Poppins'
  // decoration =  TextDecoration.underline,
  // decorationColor = Colors.white,

})
{
  return Text(title,style :TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontFamily,
      // decoration: decoration, decorationColor: decorationColor,
  ),
    maxLines: 100,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}

Widget TextWidgetInterMedium({
  required String title,
  required double fontSize,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align = TextAlign.start,
  String FontFamily = 'Poppins'
})
{
  return Text(
    title,
    style:TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: FontFamily,
  ),
    maxLines: 4,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );


}
