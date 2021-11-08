import 'package:flutter/material.dart';
import 'package:shopping_list/presentation/screens/shoppinglist_screen.dart';

void main() {
  runApp(const ShoppingList());
}

class ShoppingList extends StatelessWidget {
  const ShoppingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingListScreen(),
    );
  }
}
