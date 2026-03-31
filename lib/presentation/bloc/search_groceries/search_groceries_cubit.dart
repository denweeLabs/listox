// ignore_for_file: unused_field

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listox/core/groceries/domain/entity/grocery_failure.dart';
import 'package:listox/core/groceries/domain/entity/grocery_template.dart';
import 'package:listox/core/groceries/domain/use_case/get_grocery_templates_use_case.dart';

part 'search_groceries_state.dart';
part 'search_groceries_cubit.freezed.dart';

@Injectable()
class SearchGroceriesCubit extends Cubit<SearchGroceriesState> {
  final GetGroceryTemplatesUseCase _getGroceryTemplatesUseCase;

  var _allGroceries = <GroceryTemplate>[];

  SearchGroceriesCubit(this._getGroceryTemplatesUseCase)
    : super(_initialState(_getGroceryTemplatesUseCase)) {
    _allGroceries = state.results;
  }

  static SearchGroceriesState _initialState(GetGroceryTemplatesUseCase getItems) {
    final items = getItems.execute();
    return items.fold(
      (failure) => SearchGroceriesState(failure: Some(failure)),
      (success) => SearchGroceriesState(results: success.items),
    );
  }

  void reloadItems() {
    final items = _getGroceryTemplatesUseCase.execute();
    emit(items.fold(
      (failure) => state.copyWith(failure: Some(failure)),
      (success) => state.copyWith(results: success.items, query: ''),
    ));
  }

  void search(String query) {
    final trimmed = query.trim();
    final results = trimmed.isEmpty
        ? _allGroceries
        : _allGroceries
            .where((i) => i.localizedName().toLowerCase().contains(trimmed.toLowerCase()))
            .toList();
    emit(state.copyWith(query: query, results: results));
  }
}
