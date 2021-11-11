part of 'items_cubit_dart_cubit.dart';

@immutable
abstract class ItemsCubitDartState {}

class ItemsCubitDartInitial extends ItemsCubitDartState {}

class ItemsLoaded extends ItemsCubitDartState {
  final List<Item> items;

  ItemsLoaded({required this.items});
}
