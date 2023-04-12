import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class INetworkManager {
  Future get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });
}

@Singleton(as: INetworkManager, order: -1)
class NetworkManager implements INetworkManager {
  late Dio dio;

  NetworkManager() {
    dio =
        Dio(BaseOptions(baseUrl: "https://assign-api.piton.com.tr/api/rest/"));
  }
  @override
  Future<Response> get(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    return await dio.get(path, queryParameters: queryParameters);
  }
}
