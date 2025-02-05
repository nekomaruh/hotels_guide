import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LoggingInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint("DIO REQUEST: ${options.uri}");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("DIO RESPONSE: ${response.data}");
    handler.next(response);
  }

  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    debugPrint("DIO ERROR: ${e.message}");
    handler.next(e);
  }
}