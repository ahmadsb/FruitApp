import 'dart:async';

import 'package:http/http.dart' as http;

class HttpServices {
  // next three lines makes this class a Singleton
  static final HttpServices _instance = HttpServices.internal();

  HttpServices.internal();

  factory HttpServices() => _instance;

  Future<dynamic> get(String fruitsUrl) async {
    var url = Uri.parse(fruitsUrl);
    return await http.get(url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400) {
        throw Exception("Error while fetching data");
      }

      return res;
    });
  }
}
