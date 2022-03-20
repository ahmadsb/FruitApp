import 'package:flutter/material.dart';
import 'package:fruit_project/utils/my_border_radius.dart';
import 'package:fruit_project/theme/styles.dart';

import '../theme/colors.dart';

class CustomImage {
  static Widget drawItemImage({
    required BuildContext context,
    required imageUrl,
  }) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        border: Border.all(
          color: MyColor.primary.withOpacity(0.6),
          width: MyStyle.borderItemDetails,
        ),
      ),
    );
  }

  static Widget drawIconImage(
      {required BuildContext context,
      required String imageUrl,
      required MyBorderRadius myBorderRadius}) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(myBorderRadius.topLeft),
            topRight: Radius.circular(myBorderRadius.topRight),
            bottomLeft: Radius.circular(myBorderRadius.bottomLeft),
            bottomRight: Radius.circular(myBorderRadius.bottomRight)),
        child: Image.network(
          imageUrl,
          fit: BoxFit.fill,
        ));
  }
}
