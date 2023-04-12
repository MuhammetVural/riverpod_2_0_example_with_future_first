import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_2_example/features/home/data/models/category_model/category_model.dart';
import 'package:riverpod_2_example/features/home/data/repositories/home_repository.dart';
import 'package:riverpod_2_example/product/locator/locator.dart';

void main() {
  late HomeRepository _repository;
  setUp(() {
    configureDependencies();
    _repository = getIt();
  });

  test('GetCategories', () async {
    List<CategoryModel> categories = await _repository.getCategories();
    expect(categories, isNotEmpty);
  });
}
