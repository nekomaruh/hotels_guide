import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';


extension SSLExtension on Dio {
  void enableUnknownCertificates() {
    httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final HttpClient client = HttpClient(
          context: SecurityContext(withTrustedRoots: false),
        );
        client.badCertificateCallback = ((_, __, ___) => true);
        return client;
      },
    );
  }
}