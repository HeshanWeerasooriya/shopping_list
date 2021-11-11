import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_list/data/models/item.dart';
import 'package:shopping_list/data/repository.dart';

part 'items_cubit_dart_state.dart';

class ItemsCubitDartCubit extends Cubit<ItemsCubitDartState> {
  final Repository repository;

  ItemsCubitDartCubit({required this.repository})
      : super(ItemsCubitDartInitial());

  void fetchItems() {
    repository.fetchItems().then(
          (items) => emit(
            ItemsLoaded(items: items),
          ),
        );
  }
}
