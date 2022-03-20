import 'package:flutter/material.dart';
import 'package:fruit_project/models/item.dart';
import 'package:fruit_project/theme/colors.dart';
import 'package:fruit_project/theme/styles.dart';

import 'custom_image.dart';

class ItemCard extends StatefulWidget {
  final Item fruit;

  const ItemCard({Key? key, required this.fruit}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      clipBehavior: Clip.antiAlias,
      height: height * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyStyle.curveRadiusOfBorder),
          border: Border.all(
              color: MyColor.secondary.withOpacity(0.3),
              width: MyStyle.widthLineOfBorder)),
      child: Row(children: [
        SizedBox(
          width: width / 3,
          child: CustomImage.drawIconImage(
              imageUrl: widget.fruit.image,
              context: context,
              myBorderRadius: MyStyle.imageIconBorder),
        ),
        SizedBox(
          width: width / 2,
          child: Text(
            widget.fruit.name,
            style: MyStyle.txtTitleStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
