import 'package:dio/dio.dart';

import '../model/api_exception.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    String errorMessage = e.message ?? "Unknown Error";
    final int? statusCode = e.response?.statusCode;

    if (e.response != null) {
      errorMessage = 'Error $statusCode: ${e.response?.statusMessage}';
    } else if (e.type == DioExceptionType.connectionTimeout) {
      errorMessage = 'Connection Timeout';
    } else if (e.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Receive Timeout';
    } else if (e.type == DioExceptionType.sendTimeout) {
      errorMessage = 'Send Timeout';
    }

    // Lanzar ApiException
    handler.reject(
      DioException(
        response: e.response,
        type: DioExceptionType.unknown,
        error: ApiException(errorMessage, statusCode: statusCode),
        requestOptions: e.requestOptions,
      ),
    );
  }
}