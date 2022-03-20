import 'package:fruit_project/screens/item_details.dart';
import 'package:fruit_project/screens/home.dart';
import 'package:get/get.dart';

import 'route_helper.dart';

class MyRoute {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: RouteHelper.HOME,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RouteHelper.ITEM_DETAILS,
      page: () {
        return ItemDetailsScreen(
            item: Get.arguments[RouteHelper.ITEM_DETAILS_ARGS]);
      },
    ),
  ];
}
