import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {
  final baseUrl = "https://shopping-list-cedb7-default-rtdb.firebaseio.com/";

  Future<List<dynamic>?> fetchItems() async {
    try {
      final response = await get(Uri.parse(baseUrl + "/items.json"));
      print(response.body);
      jsonDecode(response.body) as List;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
