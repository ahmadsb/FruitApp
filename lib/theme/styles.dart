import 'package:flutter/material.dart';
import 'package:fruit_project/theme/colors.dart';

import '../utils/my_border_radius.dart';

class MyStyle {
  //text size
  static double txtTitleSize = 24;
  static double txtSubTitleSize = 20;
  static double iconSize = 18;
  static double borderItemDetails = 10;

  static TextStyle txtTitleStyle = TextStyle(
    color: MyColor.secondary,
    fontWeight: FontWeight.bold,
    fontSize: MyStyle.txtTitleSize,
  );

  static double curveRadiusOfBorder = 25;
  static double widthLineOfBorder = 3;

  //rectangles styles
  static double curveCornerRectangle = 90;

  static MyBorderRadius imageIconBorder = MyBorderRadius(
      topLeft: curveRadiusOfBorder,
      topRight: 0,
      bottomRight: 0,
      bottomLeft: curveRadiusOfBorder);
}
