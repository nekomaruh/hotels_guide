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
    } else if (e.type == DioExceptionType.connectionError) {
      errorMessage = 'Connection';
    } else if (e.type == DioExceptionType.cancel) {
      errorMessage = 'Cancel';
    } else if (e.type == DioExceptionType.badCertificate) {
      errorMessage = 'Bad Certificate';
    } else if (e.type == DioExceptionType.badResponse) {
      errorMessage = 'Bad Response';
    } else if (e.type == DioExceptionType.unknown) {
      errorMessage = 'Unknown';
    }

    handler.reject(
      DioException(
        response: e.response,
        type: e.type,
        error: ApiException(errorMessage, statusCode: statusCode),
        requestOptions: e.requestOptions,
      ),
    );
  }
}
