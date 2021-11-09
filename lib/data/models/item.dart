class Item {
  String? itemName;
  String? isCompleted;
  int? id;

  Item.fromJson(Map json)
      : itemName = json["item"],
        isCompleted = json["isCompletes"],
        id = json["id"] as int;
}
