import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/services/api/ssl/ssl_manager.dart';
import 'package:mockito/mockito.dart';

import '../dio_http_client_impl_test.mocks.dart';

class MockDioAdapter extends Mock implements IOHttpClientAdapter {}

class MockHttpClient extends Mock implements HttpClient {
  dynamic _badCertificateCallback;

  MockHttpClient({SecurityContext? context});

  @override
  set badCertificateCallback(dynamic callback) {
    print("badCertificateCallback assigned");
    _badCertificateCallback = callback;
  }

  bool callBadCertificateCallback(
      X509Certificate? cert, String host, int port) {
    return _badCertificateCallback != null
        ? _badCertificateCallback(cert, host, port)
        : false;
  }
}

main() {
  group('SSLExtension', () {
    late MockDio dio;
    late MockHttpClient mockHttpClient;

    setUp(() {
      dio = MockDio();
      mockHttpClient = MockHttpClient(context: SecurityContext(withTrustedRoots: false));
      mockHttpClient.badCertificateCallback = ((_, __, ___) => true);
    });

    test('enableUnknownCertificates should configure badCertificateCallback', () {
      when(dio.httpClientAdapter).thenReturn(
        IOHttpClientAdapter(
          createHttpClient: () {
            return mockHttpClient;
          },
        ),
      );

      dio.enableUnknownCertificates();

      expect(dio.httpClientAdapter, isA<IOHttpClientAdapter>());
      expect(dio.httpClientAdapter, isNotNull);

      final adapter = dio.httpClientAdapter as IOHttpClientAdapter;
      final createHttpClient = adapter.createHttpClient;
      expect(createHttpClient, isNotNull);

      final client = createHttpClient!();
      expect(client, isNotNull);

      final result = mockHttpClient.callBadCertificateCallback(null, 'example.com', 443);
      expect(result, true);
      expect(result, isNotNull);
    });


  });
}