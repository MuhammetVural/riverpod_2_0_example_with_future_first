import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_2_example/core/network_manager/network_manager.dart';
import 'package:riverpod_2_example/features/home/data/models/category_model/category_model.dart';

abstract class HomeRepository {
  Future<List<CategoryModel>> getCategories();
}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp implements HomeRepository {
  final NetworkManager _networkManager;

  HomeRepositoryImp({required NetworkManager networkManager})
      : _networkManager = networkManager;
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      Response response = await _networkManager.get(path: "categories");
      return response.data["categories"]
          .map<CategoryModel>((e) => CategoryModel.fromJson(e))
          .toList();
    } on DioError {
      return [];
    } catch (e) {
      return [];
    }
  }
}
