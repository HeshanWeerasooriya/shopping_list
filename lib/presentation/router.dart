import 'package:flutter/material.dart';
import 'package:shopping_list/presentation/screens/add_item_screen.dart';
import 'package:shopping_list/presentation/screens/edit_item_screen.dart';
import 'package:shopping_list/presentation/screens/shoppinglist_screen.dart';

class ShoppingListRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ShoppingListScreen());
      case '/edit_item':
        return MaterialPageRoute(builder: (_) => EditItemScreen());
      case '/add_item':
        return MaterialPageRoute(builder: (_) => AddItemScreen());
      default:
        return null;
    }
  }
}
