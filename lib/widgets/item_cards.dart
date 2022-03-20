import 'package:flutter/material.dart';
import 'package:fruit_project/widgets/item_card.dart';
import 'package:get/get.dart';

import '../utils/route_helper.dart';

class ItemCards extends StatefulWidget {
  final dynamic fruits;
  const ItemCards({Key? key, required this.fruits}) : super(key: key);

  @override
  State<ItemCards> createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.fruits.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: ItemCard(
            fruit: widget.fruits[index],
          ),
          onTap: () {
            Get.toNamed(RouteHelper.ITEM_DETAILS, arguments: {
              RouteHelper.ITEM_DETAILS_ARGS: widget.fruits[index]
            });
          },
        );
      },
    );
  }
}
