import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_provider.dart';
import 'package:riverpod_2_example/features/home/presentation/riverpod/home_state.dart';

  final homeProvider = NotifierProvider<HomeProvider, HomeState>(
    () => HomeProvider(),
  );

class HomeView extends ConsumerWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(homeProvider);
    return Scaffold(
      body: ListView.builder(
        itemCount: provider.categories,
        itemBuilder: (BuildContext context, int index) {
          return ;
        },
      ),,
    );
  }
}
