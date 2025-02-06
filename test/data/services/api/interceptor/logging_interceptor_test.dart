import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/services/api/interceptor/logging_interceptor.dart';
import 'package:mockito/mockito.dart';
import 'interceptor_mocks.dart';


void main() {
  late LoggingInterceptor interceptor;
  late MockRequestInterceptorHandler requestHandler;
  late MockResponseInterceptorHandler responseHandler;
  late MockErrorInterceptorHandler errorHandler;

  setUp(() {
    interceptor = LoggingInterceptor();
    requestHandler = MockRequestInterceptorHandler();
    responseHandler = MockResponseInterceptorHandler();
    errorHandler = MockErrorInterceptorHandler();
  });

  group('Logging Interceptor', () {
    test('should log request URI and call next on request', () {
      final requestOptions = RequestOptions(path: '/test');

      expect(
            () => interceptor.onRequest(requestOptions, requestHandler),
        prints(contains('DIO REQUEST: ${requestOptions.uri}')),
      );

      verify(requestHandler.next(requestOptions)).called(1);
    });

    test('should log response data and call next on response', () {
      final response = Response(
        requestOptions: RequestOptions(path: '/test'),
        data: 'response_data',
      );

      expect(
            () => interceptor.onResponse(response, responseHandler),
        prints(contains('DIO RESPONSE: response_data')),
      );

      verify(responseHandler.next(response)).called(1);
    });

    test('should log error message and call next on error', () {
      final dioError = DioException(
        requestOptions: RequestOptions(path: '/test'),
        message: 'Network error',
      );

      expect(
            () => interceptor.onError(dioError, errorHandler),
        prints(contains('DIO ERROR: Network error')),
      );

      verify(errorHandler.next(dioError)).called(1);
    });
  });
}