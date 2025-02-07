import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/repositories/hotels_repository_impl.dart';
import 'package:hotels_guide/data/services/api/dio_http_client_impl.dart';
import 'package:hotels_guide/domain/use_case/get_hotels_use_case.dart';
import 'package:hotels_guide/utils/result.dart';
import 'package:mockito/mockito.dart';
import 'package:hotels_guide/data/repositories/hotels_repository.dart';
import 'package:hotels_guide/domain/entity/data.dart';

import '../../data/repositories/response_mock.dart';
import '../../data/services/api/dio_http_client_impl_test.mocks.dart';


void main() {
  late MockDio mockDio;
  late DioHttpClientImpl mockClient;
  late HotelsRepository repository;
  late GetHotelsUseCase useCase;

  setUp(() {
    mockDio = MockDio();
    mockClient = DioHttpClientImpl(mockDio);
    repository = HotelsRepositoryImpl(mockClient);
    useCase = GetHotelsUseCase(repository);
  });

  group('GetHotelsUseCase', () {

    test('should return Data when repository call is successful', () async {
      final mockResponse = Response(
        requestOptions: RequestOptions(path: 'b/1IXK'),
        statusCode: 200,
        data: responseMock,
      );

      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenAnswer((_) async => mockResponse);

      final result = await useCase();

      expect(result, isA<Result<Data>>());
      expect(result is Ok<Data>, isTrue);
      final data = (result as Ok<Data>).value;
      expect(data.pagina, 1);
      expect(data.moteis, isNotEmpty);
    });

    test('should return an error when repository call fails', () async {
      final exception = DioException(
        requestOptions: RequestOptions(path: 'b/1IXK'),
        error: 'Failed to fetch hotels',
      );

      when(mockDio.get(any, queryParameters: anyNamed('queryParameters')))
          .thenThrow(exception);

      final result = await useCase();

      expect(result, isA<Result<Data>>());
      expect(result is Error<Data>, isTrue);
      final error = (result as Error<Data>).error;
      expect(error, isA<DioException>());
      expect(error.toString(), contains('Failed to fetch hotels'));
    });
  });
}
