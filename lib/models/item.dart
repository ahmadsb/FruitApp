class Item {
  String name;
  String image;
  String description;
  int price;

  Item(
      {required this.name,
      required this.image,
      required this.price,
      required this.description});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "price": price,
      "description": description
    };
  }

  factory Item.fromJson(Map<String, dynamic> jsonObj) {
    return Item(
      description: jsonObj['description'],
      name: jsonObj['name'],
      image: jsonObj['image'],
      price: jsonObj['price'],
    );
  }
  static Future<List<Item>> toItemObjs(List<dynamic> fruitObjsJson) async {
    return fruitObjsJson.map((fruitJson) => Item.fromJson(fruitJson)).toList();
  }
}
