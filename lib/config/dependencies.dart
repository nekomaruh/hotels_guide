import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotels_guide/data/repositories/hotels_repository.dart';
import 'package:hotels_guide/data/repositories/hotels_repository_impl.dart';
import 'package:hotels_guide/data/services/api/dio_http_client.dart';
import 'package:hotels_guide/data/services/api/dio_http_client_impl.dart';

import '../data/services/api/ssl/ssl_manager.dart';
import 'endpoints.dart';

final sl = GetIt.instance;

Future<void> setupDependencies() async {
  setupDio();
  setupRepository();
}

setupDio() {
  final dio = Dio(BaseOptions(baseUrl: Endpoints.apiUrl));

  SSLManager.enableUnknownCertificates(dio); // Unsafe but required from API

  sl.registerLazySingleton<Dio>(() => dio);

  sl.registerLazySingleton<DioHttpClient>(() => DioHttpClientImpl(sl()));
}

setupRepository() {
  sl.registerLazySingleton<HotelsRepository>(() => HotelsRepositoryImpl(sl()));
}
