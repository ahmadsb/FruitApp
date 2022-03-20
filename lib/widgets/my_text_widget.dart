import 'package:flutter/material.dart';
import 'package:fruit_project/theme/colors.dart';

import '../theme/styles.dart';

class MyTextWidget {
  static Widget viewText({
    required String content,
    required double fontSize,
    required Color txtColor,
    required double width,
  }) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: MyColor.primaryBold,
          border: Border.all(
              color: MyColor.primary.withOpacity(0.6),
              width: MyStyle.borderItemDetails)),
      margin: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          content,
          // maxLines: 6,
          softWrap: true,
          // overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: txtColor, fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ),
    );
  }
}
