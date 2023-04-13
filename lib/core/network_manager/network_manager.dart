import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkManager {
  Future get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
}

@Singleton(as: NetworkManager)
class NetworkManagerImp implements NetworkManager {
  late Dio dio;

  NetworkManagerImp() {
    dio =
        Dio(BaseOptions(baseUrl: "https://assign-api.piton.com.tr/api/rest/"));
  }

  @override
  Future<Response> get(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    return await dio.get(path, queryParameters: queryParameters);
  }
}
