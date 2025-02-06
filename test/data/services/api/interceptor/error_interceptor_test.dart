import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/services/api/interceptor/error_interceptor.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'error_interceptor_test.mocks.dart';

class MockErrorInterceptorHandler extends Mock
    implements ErrorInterceptorHandler {}

@GenerateMocks([Dio])
void main() {
  late MockDio dio;
  late ErrorInterceptor interceptor;
  late MockErrorInterceptorHandler handler;

  setUp(() {
    dio = MockDio();
    interceptor = ErrorInterceptor();
    handler = MockErrorInterceptorHandler();
    when(dio.interceptors).thenReturn(Interceptors());
  });

  test('Handles HTTP server error 500+', () async {
    final code = 1000;
    final error = DioException(
        requestOptions: RequestOptions(path: ''),
        response: Response(
          requestOptions: RequestOptions(),
          statusCode: code,
        ));
    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Server Error: ${error.response?.statusMessage} - Code: $code')),
    );
  });

  test('Handles HTTP 400 error', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      response: Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 400,
        statusMessage: 'Bad Request',
      ),
      type: DioExceptionType.badResponse,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Error 400: Bad request. Check request parameters.')),
    );
  });

  test('Handles HTTP 500 error', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      response: Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 500,
        statusMessage: 'Internal Server Error',
      ),
      type: DioExceptionType.badResponse,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Internal server error.')),
    );
  });

  test('Handles unknown HTTP error', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      response: Response(
        requestOptions: RequestOptions(path: ''),
        statusCode: 418,
        statusMessage: "test",
      ),
      type: DioExceptionType.badResponse,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Unknown HTTP Error. Code: 418, Message: test')),
    );
  });

  test('Handles DioExceptionType.connectionTimeout', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.connectionTimeout,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Timeout Error: Connection timeout.')),
    );
  });

  test('Handles DioExceptionType.connectionError', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.connectionError,
      error: Exception('No internet connection'),
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Network Error: No internet connection.')),
    );
  });

  test('Handles DioExceptionType.cancel', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.cancel,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Request Canceled: The request was canceled.')),
    );
  });

  test('Handles DioExceptionType.unknown', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.unknown,
      error: Exception('Unexpected failure'),
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Unknown Error: An unexpected error occurred.')),
    );
  });

  test('Handles DioExceptionType.sendTimeout', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.sendTimeout,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Timeout Error: Send timeout.')),
    );
  });

  test('Handles DioExceptionType.receiveTimeout', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.receiveTimeout,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Timeout Error: Receive timeout.')),
    );
  });

  test('Handles DioExceptionType.badCertificate', () async {
    final error = DioException(
      requestOptions: RequestOptions(path: ''),
      type: DioExceptionType.badCertificate,
    );

    expect(
      () async => interceptor.onError(error, handler),
      prints(contains('Certificate Error: Invalid certificate.')),
    );
  });
}
