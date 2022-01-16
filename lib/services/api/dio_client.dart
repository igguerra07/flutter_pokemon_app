import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokemon_app/services/services.dart';

class DioClient implements ApiClient {
  final Dio _dio;
  final String baseUrl;

  DioClient(this._dio, this.baseUrl) {
    _dio.options.baseUrl = baseUrl;

    _dio.options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
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
    return json.encode(response.data);
  }
}
