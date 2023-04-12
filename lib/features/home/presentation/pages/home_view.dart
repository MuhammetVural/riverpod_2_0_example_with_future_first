import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_2_example/features/home/data/repositories/home_repository.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_provider.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_state.dart';
import 'package:riverpod_2_example/product/locator/locator.dart';

final homeProvider = NotifierProvider<HomeProvider, HomeState>(
  () => HomeProvider(repository: getIt<HomeRepository>()),
);

class HomeView extends ConsumerWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final provider = ref.watch(homeProvider.notifier);
    return Scaffold(
      body: ListView.builder(
        itemCount: state.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return;
        },
      ),
    );
  }
}
