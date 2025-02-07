import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  final Map<int, String> _httpErrorMessages = {
    400: 'Error 400: Bad request. Check request parameters.',
    401: 'Error 401: Authentication failed. User not authorized.',
    404: 'Error 404: Resource not found.',
    500: 'Internal server error.',
    502: 'Error 502: Bad Gateway.',
    503: 'Error 503: Service unavailable.',
  };

  final Map<DioExceptionType, String> _dioErrorMessages = {
    DioExceptionType.connectionTimeout: 'Timeout Error: Connection timeout.',
    DioExceptionType.sendTimeout: 'Timeout Error: Send timeout.',
    DioExceptionType.receiveTimeout: 'Timeout Error: Receive timeout.',
    DioExceptionType.connectionError: 'Network Error: No internet connection.',
    DioExceptionType.badCertificate: 'Certificate Error: Invalid certificate.',
    DioExceptionType.badResponse: 'Response Error: Unexpected server response.',
    DioExceptionType.cancel: 'Request Canceled: The request was canceled.',
    DioExceptionType.unknown: 'Unknown Error: An unexpected error occurred.',
  };

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      final statusCode = err.response?.statusCode;

      if (statusCode != null && _httpErrorMessages.containsKey(statusCode)) {
        debugPrint(_httpErrorMessages[statusCode]!);
      } else if (statusCode != null && statusCode >= 500) {
        debugPrint('Server Error: ${err.response?.statusMessage} - Code: $statusCode');
      } else {
        debugPrint('Unknown HTTP Error. Code: $statusCode, Message: ${err.response?.statusMessage}');
      }
    } else if (_dioErrorMessages.containsKey(err.type)) {
      debugPrint(_dioErrorMessages[err.type]!);
    }

    return super.onError(err, handler);
  }
}
