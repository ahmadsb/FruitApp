import '../models/item.dart';
import '../services/http_services.dart';
import '../data/data.dart';
import 'dart:convert';

class RestDatasource {
  final HttpServices _netUtil = HttpServices();
  final JsonDecoder _decoder = const JsonDecoder();

  Future<List<Item>> fetchFruits() {
    return _netUtil.get(Data.url).then((dynamic res) {
      if (res == "Error while fetching data") {
        throw Exception("Error while fetching data");
      }
      res = _decoder.convert(res);
      return Item.toItemObjs(res["fruits"]);
    });
  }
}
