import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/styles.dart';
import '../models/item.dart';
import 'package:get/get.dart';

import '../widgets/custom_clip_path.dart';
import '../widgets/custom_image.dart';
import '../widgets/my_text_widget.dart';

class ItemDetailsScreen extends StatefulWidget {
  final Item item;
  const ItemDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.primary,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: height,
                  color: MyColor.secondary),
              clipper: CustomClipPath(),
            ),
            Container(
              height: height / 2,
              alignment: Alignment.center,
              child: CustomImage.drawItemImage(
                context: context,
                imageUrl: widget.item.image,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: height / 2),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    MyTextWidget.viewText(
                        width: width * .50,
                        content: widget.item.name,
                        fontSize: MyStyle.txtTitleSize,
                        txtColor: MyColor.tertiary),
                    MyTextWidget.viewText(
                        width: width,
                        content: widget.item.description,
                        fontSize: MyStyle.txtSubTitleSize,
                        txtColor: MyColor.tertiary),
                    MyTextWidget.viewText(
                        width: width * .50,
                        content: widget.item.price.toString(),
                        fontSize: MyStyle.txtSubTitleSize,
                        txtColor: MyColor.tertiary),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      floatingActionButton: FloatingActionButton(
        mini: true,
        child: Icon(
          Icons.arrow_back_ios,
          size: MyStyle.iconSize,
          color: MyColor.tertiary,
        ),
        backgroundColor: MyColor.primary,
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
