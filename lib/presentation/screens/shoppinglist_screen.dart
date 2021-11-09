import 'package:flutter/material.dart';
import 'package:shopping_list/constants/string.dart';

class ShoppingListScreen extends StatelessWidget {
  const ShoppingListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        actions: [
          InkWell(
            onTap: () => Navigator.pushNamed(context, ADD_ITEM_ROUTE),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Center(child: Text('Shopping list Screen')),
    );
  }
}
