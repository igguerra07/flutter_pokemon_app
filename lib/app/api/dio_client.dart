import 'package:dio/dio.dart';
import 'package:pokemon_app/app/api/api_client.dart';

class DioClient implements ApiClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    _dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
  }

  @override
  Future get({
    required String path,
    Map<String, dynamic> queryParams = const {},
  }) async {
    final response = await _dio.get(path, queryParameters: queryParams);
    return response;
  }
}
