import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/services/api/dio_http_client_impl.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';

import 'dio_http_client_impl_test.mocks.dart';


@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late DioHttpClientImpl dioHttpClient;

  setUp(() {
    mockDio = MockDio();
    dioHttpClient = DioHttpClientImpl(mockDio);
  });

  group('DioHttpClientImpl', () {
    test('generate GET request success', () async {
      const path = '/test';
      final response = Response(
        requestOptions: RequestOptions(path: path),
        statusCode: 200,
        data: {'message': 'success'},
      );

      when(mockDio.get(path, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => response);

      final result = await dioHttpClient.get(path);

      expect(result.statusCode, 200);
      expect(result.data, {'message': 'success'});
      verify(mockDio.get(path, queryParameters: anyNamed('queryParameters')))
          .called(1);
    });

    test('generate POST request success', () async {
      const path = '/test';
      const requestData = {'key': 'value'};
      final response = Response(
        requestOptions: RequestOptions(path: path),
        statusCode: 201,
        data: {'message': 'created'},
      );

      when(mockDio.post(path, data: anyNamed('data')))
          .thenAnswer((_) async => response);

      final result = await dioHttpClient.post(path, data: requestData);

      expect(result.statusCode, 201);
      expect(result.data, {'message': 'created'});
      verify(mockDio.post(path, data: anyNamed('data'))).called(1);
    });

    test('generate PUT request success', () async {
      const path = '/test';
      const requestData = {'key': 'updatedValue'};
      final response = Response(
        requestOptions: RequestOptions(path: path),
        statusCode: 200,
        data: {'message': 'updated'},
      );

      when(mockDio.put(path, data: anyNamed('data')))
          .thenAnswer((_) async => response);

      final result = await dioHttpClient.put(path, data: requestData);

      expect(result.statusCode, 200);
      expect(result.data, {'message': 'updated'});
      verify(mockDio.put(path, data: anyNamed('data'))).called(1);
    });

    test('generate DELETE request success', () async {
      const path = '/test';
      final response = Response(
        requestOptions: RequestOptions(path: path),
        statusCode: 204,
      );

      when(mockDio.delete(path)).thenAnswer((_) async => response);

      final result = await dioHttpClient.delete(path);

      expect(result.statusCode, 204);
      verify(mockDio.delete(path)).called(1);
    });
  });
}
