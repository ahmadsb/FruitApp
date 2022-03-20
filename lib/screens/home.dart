import 'package:flutter/material.dart';

import '../data/data.dart';
import '../theme/colors.dart';
import '../utils/fruits_controller.dart';
import '../models/item.dart';
import '../widgets/item_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Item>> _items;
  RestDatasource rds = RestDatasource();
  @override
  initState() {
    super.initState();
    _items = rds.fetchFruits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.tertiary,
      appBar: AppBar(
        backgroundColor: MyColor.primary,
        title: Text(Data.title),
      ),
      body: FutureBuilder<List<Item>>(
        future: _items,
        builder: (
          BuildContext context,
          AsyncSnapshot<List<Item>> snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              // snapshot.data
              return ItemCards(fruits: snapshot.data);
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}
