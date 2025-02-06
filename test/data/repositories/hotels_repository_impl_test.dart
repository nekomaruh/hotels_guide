import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/config/endpoints.dart';
import 'package:hotels_guide/data/repositories/hotels_repository_impl.dart';
import 'package:hotels_guide/data/services/api/dio_http_client_impl.dart';
import 'package:hotels_guide/domain/entity/data.dart';
import 'package:hotels_guide/utils/exception.dart';
import 'package:hotels_guide/utils/result.dart';
import 'package:mockito/mockito.dart';

import '../services/api/dio_http_client_impl_test.mocks.dart';
import 'response_failed_mock.dart';
import 'response_mock.dart';

class MockDioHttpClientImpl extends Mock implements DioHttpClientImpl {}

void main() {
  late MockDio mockDio;
  late DioHttpClientImpl mockClient;
  late HotelsRepositoryImpl repository;

  setUp(() {
    mockDio = MockDio();
    mockClient = DioHttpClientImpl(mockDio);
    repository = HotelsRepositoryImpl(mockClient);
  });

  group('HotelsRepositoryImpl', () {
    test('should return a list of hotels when request is success', () async {
      final response = Response<Map<String, dynamic>>(
        requestOptions: RequestOptions(path: '/hotels'),
        data: responseMock,
      );

      when(mockDio.get(Endpoints.hotelsPath)).thenAnswer((_) async => response);

      final result = await repository.getHotelsList();

      expect(result, isA<Result<Data>>());
      expect(result is Ok<Data>, isTrue);
      final data = (result as Ok<Data>).value;
      expect(data.pagina, 1);
      expect(data.moteis, isNotEmpty);
    });


    test('should return an error when request fails', () async {
      when(mockDio.get(Endpoints.hotelsPath))
          .thenThrow(Exception('Network error'));

      final result = await repository.getHotelsList();

      expect(result, isA<Result<Data>>());
      expect(result is Error<Data>, isTrue);
      final error = (result as Error<Data>).error;
      expect(error, isA<Exception>());
      expect(error.toString(), contains('Network error'));
    });


    test('should return an error when the server response is not success', () async {
      final response = Response<Map<String, dynamic>>(
        requestOptions: RequestOptions(path: '/hotels'),
        data: responseFailedMock,
      );
      when(mockDio.get(Endpoints.hotelsPath)).thenAnswer((_) async => response);

      final result = await repository.getHotelsList();

      expect(result, isA<Result<Data>>());
      expect(result is Error<Data>, isTrue);
      final error = (result as Error<Data>).error;
      expect(error, isA<EventNotSuccess>());
    });
  });
}