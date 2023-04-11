import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_2_example/features/home/data/models/category_model/category_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<CategoryModel> categories,
    @Default(false) bool isLoading,
  }) = _HomeState;

  HomeState._();

  factory HomeState.initial() {
    return HomeState(categories: [], isLoading: false);
  }
}
