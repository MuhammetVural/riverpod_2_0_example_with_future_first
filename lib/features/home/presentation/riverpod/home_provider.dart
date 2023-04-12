import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_2_example/features/home/data/repositories/home_repository.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_state.dart';

class HomeProvider extends Notifier<HomeState> {
  final HomeRepository _repository;
  HomeProvider({required HomeRepository repository}) : _repository = repository;
  @override
  build() {
    return HomeState.initial();
  }

  Future<void> getAllCategories() async {
    state = state.copyWith(categories: await _repository.getCategories());
  }
}
