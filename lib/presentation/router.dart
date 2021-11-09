import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list/constants/string.dart';
import 'package:shopping_list/cubit/items_cubit_dart_cubit.dart';
import 'package:shopping_list/presentation/screens/add_item_screen.dart';
import 'package:shopping_list/presentation/screens/edit_item_screen.dart';
import 'package:shopping_list/presentation/screens/shoppinglist_screen.dart';

class ShoppingListRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ItemsCubitDartCubit(),
                  child: ShoppingListScreen(),
                ));
      case EDIT_ITEM_ROUTE:
        return MaterialPageRoute(builder: (_) => EditItemScreen());
      case ADD_ITEM_ROUTE:
        return MaterialPageRoute(builder: (_) => AddItemScreen());
      default:
        return null;
    }
  }
}
