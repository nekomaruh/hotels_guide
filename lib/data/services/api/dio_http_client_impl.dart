import 'package:dio/dio.dart';

import 'dio_http_client.dart';

class DioHttpClientImpl implements DioHttpClient {
  final Dio _dio;

  DioHttpClientImpl(this._dio);

  @override
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(path, queryParameters: queryParameters);
  }

  @override
  Future<Response> post(String path, {dynamic data}) {
    return _dio.post(path, data: data);
  }

  @override
  Future<Response> put(String path, {dynamic data}) {
    return _dio.put(path, data: data);
  }

  @override
  Future<Response> delete(String path) {
    return _dio.delete(path);
  }
}
