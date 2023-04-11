import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_state.dart';

class HomeProvider extends Notifier<HomeState> {
  @override
  build() {
    return HomeState.initial();
  }
}
