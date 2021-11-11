import 'package:shopping_list/data/models/item.dart';
import 'package:shopping_list/data/network_service.dart';

class Repository {
  final NetworkService networkService;

  Repository({required this.networkService});

  Future<List<Item>> fetchItems() async {
    final itemsRow = await networkService.fetchItems();
    return itemsRow!.map((e) => Item.fromJson(e)).toList();
  }
}
