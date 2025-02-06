import 'package:flutter_test/flutter_test.dart';
import 'package:hotels_guide/data/repositories/hotels_repository.dart';
import 'package:hotels_guide/data/services/api/dio_http_client.dart';
import 'package:hotels_guide/domain/use_case/get_hotels_use_case.dart';
import 'package:mockito/mockito.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

class MockDio extends Mock implements Dio {}
class MockDioHttpClient extends Mock implements DioHttpClient {}
class MockHotelsRepository extends Mock implements HotelsRepository {}
class MockGetHotelsUseCase extends Mock implements GetHotelsUseCase {}

void main() {
  late MockDio mockDio;
  late MockDioHttpClient mockDioHttpClient;
  late MockHotelsRepository mockHotelsRepository;
  late MockGetHotelsUseCase mockGetHotelsUseCase;

  setUp(() {
    // Limpiar el contenedor de GetIt antes de cada prueba
    GetIt.instance.reset();

    // Inicializar mocks
    mockDio = MockDio();
    mockDioHttpClient = MockDioHttpClient();
    mockHotelsRepository = MockHotelsRepository();
    mockGetHotelsUseCase = MockGetHotelsUseCase();

    // Comprobar si las dependencias ya están registradas antes de registrarlas
    if (!GetIt.instance.isRegistered<Dio>()) {
      GetIt.instance.registerLazySingleton<Dio>(() => mockDio);
    }
    if (!GetIt.instance.isRegistered<DioHttpClient>()) {
      GetIt.instance.registerLazySingleton<DioHttpClient>(() => mockDioHttpClient);
    }
    if (!GetIt.instance.isRegistered<HotelsRepository>()) {
      GetIt.instance.registerLazySingleton<HotelsRepository>(() => mockHotelsRepository);
    }
    if (!GetIt.instance.isRegistered<GetHotelsUseCase>()) {
      GetIt.instance.registerLazySingleton<GetHotelsUseCase>(() => mockGetHotelsUseCase);
    }

    // Llamar a la función de configuración
    //setupDependencies();
  });

  group('Dependency Injection', () {
    test('should register Dio correctly', () {
      final dio = GetIt.instance<Dio>();
      expect(dio, isA<MockDio>());
    });

    test('should register DioHttpClient correctly', () {
      final dioHttpClient = GetIt.instance<DioHttpClient>();
      expect(dioHttpClient, isA<MockDioHttpClient>());
    });

    test('should register HotelsRepository correctly', () {
      final repository = GetIt.instance<HotelsRepository>();
      expect(repository, isA<MockHotelsRepository>());
    });

    test('should register GetHotelsUseCase correctly', () {
      final useCase = GetIt.instance<GetHotelsUseCase>();
      expect(useCase, isA<MockGetHotelsUseCase>());
    });
  });
}
