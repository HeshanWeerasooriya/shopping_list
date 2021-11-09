import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'items_cubit_dart_state.dart';

class ItemsCubitDartCubit extends Cubit<ItemsCubitDartState> {
  ItemsCubitDartCubit() : super(ItemsCubitDartInitial());
}
