import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

class MockErrorInterceptorHandler extends Mock
    implements ErrorInterceptorHandler {}

class MockRequestInterceptorHandler extends Mock
    implements RequestInterceptorHandler {}

class MockResponseInterceptorHandler extends Mock
    implements ResponseInterceptorHandler {}