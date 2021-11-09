import 'package:flutter/material.dart';
import 'package:shopping_list/presentation/screens/shoppinglist_screen.dart';

import 'presentation/router.dart';

void main() {
  runApp(
    ShoppingList(
      router: ShoppingListRouter(),
    ),
  );
}

class ShoppingList extends StatelessWidget {
  final ShoppingListRouter? router;

  const ShoppingList({Key? key, this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router?.generateRoute,
    );
  }
}
