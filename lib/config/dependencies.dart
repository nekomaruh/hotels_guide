import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotels_guide/data/services/api/dio_http_client.dart';
import 'package:hotels_guide/data/services/api/dio_http_client_impl.dart';

import '../data/services/api/ssl/ssl_manager.dart';

final sl = GetIt.instance;

Future<void> setupDependencies() async {
  final dio = Dio(BaseOptions(baseUrl: "https://jsonkeeper.com/"));
  SSLManager.enableUnknownCertificates(dio); // Unsafe but required from jsonkeeper.com
  sl.registerLazySingleton<Dio>(() => dio);

  sl.registerLazySingleton<DioHttpClient>(
    () => DioHttpClientImpl(sl()),
  );
}
